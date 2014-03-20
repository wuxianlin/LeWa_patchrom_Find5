#!/bin/bash
# $1: dir for lewa
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework_ext.jar.out
    for file2 in `find framework_ext.jar.out -name *.smali`; do
            file=${file2/framework_ext.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    rm -rf "$BUILD_OUT/framework/smali/com/google"
    rm -rf "$BUILD_OUT/framework/smali/com/qualcomm"
    rm -rf "$BUILD_OUT/framework/smali/android/renderscript" 
    rm -rf "$BUILD_OUT/framework/smali/org"
    rm -rf "$BUILD_OUT/framework/smali/oppo"
    rm -rf "$BUILD_OUT/framework/smali/android/test"
    rm -rf "$BUILD_OUT/framework/smali/android/media/audiofx"
    rm -rf "$BUILD_OUT/framework/smali/com/oppo"
    rm -rf "$BUILD_OUT/framework/smali/android/server"
    rm -rf "$BUILD_OUT/framework/smali/android/webkit"
fi
