#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}


if [ $2 = "$BUILD_OUT/framework" ]
then
    cp -rf overlay/framework/smali/* $BUILD_OUT/framework/smali
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
    sed -i -e 's/Landroid\/view\/KeyEvent;)I/Landroid\/view\/KeyEvent;)Z/' $BUILD_OUT/android.policy/smali/com/android/internal/policy/impl/BaseLewaPhoneWindowManager.smali
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    rm $BUILD_OUT/services/smali/com/android/server/am/ActivityManagerService\$13\$1.smali
fi

