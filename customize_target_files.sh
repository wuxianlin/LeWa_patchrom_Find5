PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop

if [ -e $TARGET_FILES_DIR/SYSTEM/framework/secondary-framework.jar ] && [ -e $TARGET_FILES_DIR/SYSTEM/framework/framework_ext.jar ]
then
   echo "Use custom updater bin file"
   rm $TARGET_FILES_DIR/SYSTEM/framework/secondary-framework.jar
   mv $TARGET_FILES_DIR/SYSTEM/framework/framework_ext.jar $TARGET_FILES_DIR/SYSTEM/framework/secondary-framework.jar
fi


