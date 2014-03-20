.class Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;
.super Ljava/lang/Object;
.source "PermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkLibsHelper"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ApkLibsHelper"

.field private static final sApkLib:Ljava/lang/String; = "lib/"

#the value of this static final field might be set in the static constructor
.field private static final sApkLibLen:I = 0x0

.field private static final sLibPrefix:Ljava/lang/String; = "/lib"

#the value of this static final field might be set in the static constructor
.field private static final sLibPrefixLen:I = 0x0

.field private static final sLibSuffix:Ljava/lang/String; = ".so"

.field private static final sLibSuffixLen:I

.field private static final sMinEntryLen:I

.field private static final sSystemLib:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sSystemLib:Ljava/lang/String;

    .line 69
    const-string v0, "lib/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sApkLibLen:I

    .line 72
    const-string v0, "/lib"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sLibPrefixLen:I

    .line 75
    const-string v0, ".so"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sLibSuffixLen:I

    .line 77
    sget v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sApkLibLen:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sLibPrefixLen:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sLibSuffixLen:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sMinEntryLen:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static isLibsNeedCopy(Ljava/lang/String;)Z
    .locals 17
    .parameter "path"

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 84
    const/4 v11, 0x0

    .line 166
    :cond_0
    :goto_0
    return v11

    .line 87
    :cond_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 89
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 92
    :cond_3
    const/4 v13, 0x0

    .line 93
    .local v13, zipFile:Ljava/util/zip/ZipFile;
    const/4 v11, 0x0

    .line 95
    .local v11, need:Z
    :try_start_0
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .local v14, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 97
    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 98
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 99
    .local v6, entry:Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, filePath:Ljava/lang/String;
    const-string v15, "lib/"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 107
    const-string v15, ".so"

    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 111
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    sget v16, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sMinEntryLen:I

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 116
    const/16 v15, 0x2f

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 117
    .local v10, lastIndexOfSeperator:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_4

    .line 120
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 121
    .local v1, cpuAbi:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 122
    .local v2, cpuAbi2:Ljava/lang/String;
    sget v15, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sApkLibLen:I

    sub-int v3, v10, v15

    .line 124
    .local v3, cpuAbiRegionSize:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v3, v15, :cond_7

    sget v15, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sApkLibLen:I

    invoke-virtual {v9, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 138
    :goto_2
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, fileName:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    sget-object v15, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sSystemLib:Ljava/lang/String;

    invoke-direct {v12, v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v12, systemLibFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v15

    if-eqz v15, :cond_8

    .line 141
    const/4 v11, 0x0

    .line 156
    .end local v1           #cpuAbi:Ljava/lang/String;
    .end local v2           #cpuAbi2:Ljava/lang/String;
    .end local v3           #cpuAbiRegionSize:I
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #lastIndexOfSeperator:I
    .end local v12           #systemLibFile:Ljava/io/File;
    :cond_5
    if-eqz v14, :cond_6

    .line 158
    :try_start_2
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_6
    :goto_3
    move-object v13, v14

    .line 162
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    goto/16 :goto_0

    .line 128
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #cpuAbi:Ljava/lang/String;
    .restart local v2       #cpuAbi2:Ljava/lang/String;
    .restart local v3       #cpuAbiRegionSize:I
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #lastIndexOfSeperator:I
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ne v3, v15, :cond_4

    sget v15, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->sApkLibLen:I

    invoke-virtual {v9, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    .line 145
    .restart local v8       #fileName:Ljava/lang/String;
    .restart local v12       #systemLibFile:Ljava/io/File;
    :cond_8
    const/4 v11, 0x1

    .line 147
    goto/16 :goto_1

    .line 149
    .end local v1           #cpuAbi:Ljava/lang/String;
    .end local v2           #cpuAbi2:Ljava/lang/String;
    .end local v3           #cpuAbiRegionSize:I
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #fileName:Ljava/lang/String;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #lastIndexOfSeperator:I
    .end local v12           #systemLibFile:Ljava/io/File;
    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 151
    .local v4, e:Ljava/util/zip/ZipException;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    if-eqz v13, :cond_0

    .line 158
    :try_start_5
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 159
    .end local v4           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 152
    :catch_2
    move-exception v4

    .line 154
    .local v4, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    if-eqz v13, :cond_0

    .line 158
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 156
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_6
    if-eqz v13, :cond_9

    .line 158
    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 156
    :cond_9
    :goto_7
    throw v15

    .line 159
    :catch_3
    move-exception v16

    goto :goto_7

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v15

    goto :goto_3

    .line 156
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 152
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 149
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v14       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v4

    move-object v13, v14

    .end local v14           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4
.end method
