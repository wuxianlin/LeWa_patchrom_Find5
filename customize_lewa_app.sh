#!/bin/bash
#
# $1: dir for original lewa app 
# $2: dir for target lewa app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
	$XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW
    cp $1/header.patch out/
    cd out
    ../../tools/rmline.sh Settings/res/xml/settings_headers.xml
    $GIT_APPLY header.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "StockromSettings patch fail"
        exit 1
    done
    cp -rf $1/res/drawable-xxhdpi $2/res/drawable-xxhdpi
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	#appendPart $1
fi

