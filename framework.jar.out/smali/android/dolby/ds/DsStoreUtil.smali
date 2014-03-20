.class public Landroid/dolby/ds/DsStoreUtil;
.super Ljava/lang/Object;
.source "DsStoreUtil.java"


# static fields
.field private static final ATTRIBUTE_DEV:Ljava/lang/String; = "dev"

.field private static final ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PRESET:Ljava/lang/String; = "preset"

.field private static final DEFAULT_PROFILE:I = 0x0

.field private static DS_CURRENT_SETTINGS_PATH:Ljava/lang/String; = null

.field private static DS_STATE_PATH:Ljava/lang/String; = null

.field private static final SUBTAG_CONSTANT:Ljava/lang/String; = "constant"

.field private static final SUBTAG_DATA:Ljava/lang/String; = "data"

.field private static final SUBTAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final SUBTAG_ONOFF:Ljava/lang/String; = "DsOn"

.field private static final SUBTAG_PRESET:Ljava/lang/String; = "preset"

.field private static final SUBTAG_PROFILE:Ljava/lang/String; = "profile"

.field private static final SUBTAG_PROFILEID:Ljava/lang/String; = "CurrentProfile"

.field private static final SUBTAG_TUNING:Ljava/lang/String; = "tuning"

.field private static final TAG:Ljava/lang/String; = "DsStoreUtil"

.field private static final TAG_DS_CURRENT:Ljava/lang/String; = "currentdata"

.field private static final TAG_DS_STATE:Ljava/lang/String; = "DsState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 63
    sput-object v0, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertArray([[S)[Ljava/lang/String;
    .locals 8
    .parameter "integerArray"

    .prologue
    .line 216
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 218
    .local v5, stringArray:[Ljava/lang/String;
    const-string v6, "gebf"

    invoke-static {v6}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, gebfLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 222
    aget-object v3, p0, v1

    .line 223
    .local v3, oneIntegerSetting:[S
    const-string v4, "gebg=["

    .line 224
    .local v4, oneStringArray:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_0

    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-short v7, v3, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    aget-short v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    aput-object v4, v5, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v2           #j:I
    .end local v3           #oneIntegerSetting:[S
    .end local v4           #oneStringArray:Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static loadDsState()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 85
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const-string v10, "1"

    aput-object v10, v0, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v13

    .line 87
    .local v0, currentState:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 90
    .local v4, fileis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v10, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v4           #fileis:Ljava/io/FileInputStream;
    .local v5, fileis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 101
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 102
    .local v9, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 104
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 105
    .local v2, eventType:I
    const/4 v6, 0x0

    .line 106
    .local v6, parameterName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 107
    .local v7, parameterValue:Ljava/lang/String;
    const/4 v8, 0x0

    .line 111
    .local v8, tagFlag:Z
    :goto_0
    if-eq v2, v13, :cond_2

    .line 113
    packed-switch v2, :pswitch_data_0

    .line 138
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto :goto_0

    .line 92
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #fileis:Ljava/io/FileInputStream;
    .end local v6           #parameterName:Ljava/lang/String;
    .end local v7           #parameterValue:Ljava/lang/String;
    .end local v8           #tagFlag:Z
    .end local v9           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #fileis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v10, "DsStoreUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find DS state file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", using default value."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-object v0

    .line 116
    .end local v4           #fileis:Ljava/io/FileInputStream;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #fileis:Ljava/io/FileInputStream;
    .restart local v6       #parameterName:Ljava/lang/String;
    .restart local v7       #parameterValue:Ljava/lang/String;
    .restart local v8       #tagFlag:Z
    .restart local v9       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/4 v8, 0x0

    .line 117
    goto :goto_1

    .line 119
    :pswitch_1
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 120
    const-string v10, "DsStoreUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz v8, :cond_0

    .line 123
    const-string v10, "DsOn"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 124
    const/4 v10, 0x0

    aput-object v7, v0, v10

    .line 125
    :cond_1
    const-string v10, "CurrentProfile"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 126
    const/4 v10, 0x1

    aput-object v7, v0, v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 142
    :catch_1
    move-exception v1

    .line 144
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "DsStoreUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error occurred when parsing"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", using default value."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v5

    .line 145
    .end local v5           #fileis:Ljava/io/FileInputStream;
    .restart local v4       #fileis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fileis:Ljava/io/FileInputStream;
    .restart local v5       #fileis:Ljava/io/FileInputStream;
    :pswitch_2
    const/4 v8, 0x1

    .line 132
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 133
    const-string v10, "DsStoreUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 148
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #parameterName:Ljava/lang/String;
    .end local v7           #parameterValue:Ljava/lang/String;
    .end local v8           #tagFlag:Z
    .end local v9           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .line 150
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "DsStoreUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Erro occurred when parsing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", using default value."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 151
    .end local v5           #fileis:Ljava/io/FileInputStream;
    .restart local v4       #fileis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 140
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #fileis:Ljava/io/FileInputStream;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #fileis:Ljava/io/FileInputStream;
    .restart local v6       #parameterName:Ljava/lang/String;
    .restart local v7       #parameterValue:Ljava/lang/String;
    .restart local v8       #tagFlag:Z
    .restart local v9       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v4, v5

    .line 154
    .end local v5           #fileis:Ljava/io/FileInputStream;
    .restart local v4       #fileis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static saveDsProfileSettings([Landroid/dolby/ds/DsProfileSettings;)V
    .locals 16
    .parameter "currentProfiles"

    .prologue
    .line 241
    sget-object v7, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    .line 242
    .local v7, geqName:[[Ljava/lang/String;
    sget-object v10, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    .line 243
    .local v10, profileIdName:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 246
    .local v5, fileos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v13, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v5           #fileos:Ljava/io/FileOutputStream;
    .local v6, fileos:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 256
    .local v11, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v13, "utf-8"

    invoke-interface {v11, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 257
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 258
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    const/4 v13, 0x0

    const-string v14, "currentdata"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const-string v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    const/4 v9, 0x0

    .local v9, profile:I
    :goto_0
    const/4 v13, 0x5

    if-gt v9, v13, :cond_2

    .line 264
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, DsCurrentSettings:Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, DsCurrentProfileNames:Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v1

    .line 267
    .local v1, DsCurrentIeqPresets:I
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v0

    .line 269
    .local v0, DsCurrentGeqSettings:[[S
    if-eqz v0, :cond_0

    .line 271
    invoke-static {v0}, Landroid/dolby/ds/DsStoreUtil;->convertArray([[S)[Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, settingStr:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gebg settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 273
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    const/4 v13, 0x3

    if-gt v8, v13, :cond_0

    .line 276
    const/4 v13, 0x0

    const-string v14, "preset"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const/4 v13, 0x0

    const-string v14, "id"

    aget-object v15, v7, v9

    aget-object v15, v15, v8

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    aget-object v13, v12, v8

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const/4 v13, 0x0

    const-string v14, "preset"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 248
    .end local v0           #DsCurrentGeqSettings:[[S
    .end local v1           #DsCurrentIeqPresets:I
    .end local v2           #DsCurrentProfileNames:Ljava/lang/String;
    .end local v3           #DsCurrentSettings:Ljava/lang/String;
    .end local v6           #fileos:Ljava/io/FileOutputStream;
    .end local v8           #index:I
    .end local v9           #profile:I
    .end local v11           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v12           #settingStr:[Ljava/lang/String;
    .restart local v5       #fileos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 250
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v13, "DsStoreUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to find or load "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", and the file could not be created"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 290
    .end local v5           #fileos:Ljava/io/FileOutputStream;
    .restart local v0       #DsCurrentGeqSettings:[[S
    .restart local v1       #DsCurrentIeqPresets:I
    .restart local v2       #DsCurrentProfileNames:Ljava/lang/String;
    .restart local v3       #DsCurrentSettings:Ljava/lang/String;
    .restart local v6       #fileos:Ljava/io/FileOutputStream;
    .restart local v9       #profile:I
    .restart local v11       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    if-eqz v3, :cond_1

    .line 292
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "profile settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 293
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    const/4 v13, 0x0

    const-string v14, "profile"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const/4 v13, 0x0

    const-string v14, "id"

    aget-object v15, v10, v9

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v11, v13, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    const/4 v13, 0x0

    const-string v14, "include"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const/4 v13, 0x0

    const-string v14, "preset"

    aget-object v15, v7, v9

    aget-object v15, v15, v1

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const/4 v13, 0x0

    const-string v14, "include"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    const/4 v13, 0x0

    const-string v14, "profile"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 313
    .end local v0           #DsCurrentGeqSettings:[[S
    .end local v1           #DsCurrentIeqPresets:I
    .end local v2           #DsCurrentProfileNames:Ljava/lang/String;
    .end local v3           #DsCurrentSettings:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    const-string v14, "currentdata"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 315
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 316
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v9           #profile:I
    :goto_3
    move-object v5, v6

    .line 323
    .end local v6           #fileos:Ljava/io/FileOutputStream;
    .restart local v5       #fileos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 318
    .end local v5           #fileos:Ljava/io/FileOutputStream;
    .restart local v6       #fileos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 320
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    const-string v13, "DsStoreUtil"

    const-string v14, "saveDsProfileSettings(): error occurred while saving the current DS profile settings"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static saveDsState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "dsState"
    .parameter "currentProfile"

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 168
    .local v1, fileos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1           #fileos:Ljava/io/FileOutputStream;
    .local v2, fileos:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 178
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 179
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const/4 v4, 0x0

    const-string v5, "DsState"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string v4, "Ds on/off state"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 184
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const/4 v4, 0x0

    const-string v5, "DsOn"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v4, 0x0

    const-string v5, "DsOn"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string v4, "Profile index"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 190
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const/4 v4, 0x0

    const-string v5, "CurrentProfile"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const/4 v4, 0x0

    const-string v5, "CurrentProfile"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const/4 v4, 0x0

    const-string v5, "DsState"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 197
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v2

    .line 204
    .end local v2           #fileos:Ljava/io/FileOutputStream;
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1       #fileos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "DsStoreUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find or load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and the file could not be created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fileos:Ljava/io/FileOutputStream;
    .restart local v2       #fileos:Ljava/io/FileOutputStream;
    .restart local v3       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsStoreUtil"

    const-string v5, "saveDsState(): error occurred while creating xml file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static storeDsPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dsCurSettingsPath"
    .parameter "dsStatePath"

    .prologue
    .line 73
    sput-object p0, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 74
    sput-object p1, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    .line 75
    return-void
.end method
