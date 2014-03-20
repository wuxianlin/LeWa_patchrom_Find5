.class public Landroid/dolby/ds/DsConfigParser;
.super Ljava/lang/Object;
.source "DsConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsConfigParser$1;,
        Landroid/dolby/ds/DsConfigParser$DeviceSettings;,
        Landroid/dolby/ds/DsConfigParser$EqualizerSettings;,
        Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    }
.end annotation


# static fields
.field private static final ASCII_TAB_COMMA:I = 0x2c

.field private static final ASCII_TAB_CR:I = 0xd

.field private static final ASCII_TAB_EQUAL:I = 0x3d

.field private static final ASCII_TAB_LEFT_BRACKET:I = 0x5b

.field private static final ASCII_TAB_LF:I = 0xa

.field private static final ASCII_TAB_RIGHT_BRACKET:I = 0x5d

.field private static final ASCII_TAB_SPACE:I = 0x20

.field private static final ERROR_INVALID_PARAM_LEN:I = 0x40

.field private static final ERROR_INVALID_PARAM_NAME:I = 0x10

.field private static final ERROR_INVALID_PARAM_VALUE:I = 0x20

.field private static final ERROR_MISSING_IEQ:I = 0x2

.field private static final ERROR_MISSING_OFF:I = 0x4

.field private static final ERROR_MISSING_PARAM:I = 0x8

.field private static final ERROR_MISSING_PROFILE:I = 0x1

.field private static final ERROR_REDUNDANT_IEQ:I = 0x2000

.field private static final ERROR_REDUNDANT_OFF:I = 0x4000

.field private static final ERROR_REDUNDANT_PROFILE:I = 0x1000

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DsConfigParser"

.field private static final TUNING_MAX_OFFSET:I = 0x149

.field private static ieqDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static profileDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akParamsFound_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mapDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$DeviceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapEqualizer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$EqualizerSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$ProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private parameterDev:Ljava/lang/String;

.field private parameterId:Ljava/lang/String;

.field private parameterName:Ljava/lang/String;

.field private parameterPreset:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private parameterValue:Ljava/lang/String;

.field private parserErrorFlag:I

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 72
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 77
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 79
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    .end local v1           #j:I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 13
    .parameter "is"
    .parameter "useOffProfileForDsOff"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    .line 83
    iput v12, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 85
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 86
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 87
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 88
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 89
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 90
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 91
    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 101
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    .line 108
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    .line 116
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    .line 130
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 131
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 132
    .local v9, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    const/4 v7, 0x0

    .line 135
    .local v7, tagFlag:Z
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 136
    .local v2, eventType:I
    const/4 v6, 0x0

    .line 140
    .local v6, paraCount:I
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_7

    .line 142
    packed-switch v2, :pswitch_data_0

    .line 198
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 145
    :pswitch_0
    const/4 v7, 0x0

    .line 146
    goto :goto_1

    .line 148
    :pswitch_1
    if-eqz v7, :cond_0

    .line 150
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 151
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 154
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v10, "DsConfigParser"

    const-string v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #paraCount:I
    .end local v7           #tagFlag:Z
    .end local v9           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 209
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "DsConfigParser"

    const-string v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 158
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #paraCount:I
    .restart local v7       #tagFlag:Z
    .restart local v9       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const/4 v7, 0x1

    .line 159
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 161
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "preset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "profile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "tuning"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "constant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 165
    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 167
    .local v0, count:I
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 168
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 169
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 170
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 171
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 172
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 173
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_6

    .line 175
    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, nameAttri:Ljava/lang/String;
    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, valueAttri:Ljava/lang/String;
    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 182
    :cond_3
    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 183
    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 184
    :cond_4
    const-string v10, "dev"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 185
    iput-object v8, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 173
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 189
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #nameAttri:Ljava/lang/String;
    .end local v8           #valueAttri:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "include"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 191
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 213
    :cond_7
    invoke-direct {p0, p2}, Landroid/dolby/ds/DsConfigParser;->checkConfigValidity(Z)V

    .line 214
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkConfigValidity(Z)V
    .locals 5
    .parameter "useOffProfileForDsOff"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, i:I
    const/4 v2, 0x5

    .line 342
    .local v2, requiredProfileNum:I
    const/4 v1, 0x3

    .line 344
    .local v1, requiredIeqNum:I
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v2, :cond_1

    .line 346
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 349
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_3

    .line 355
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 358
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_3
    if-eqz p1, :cond_7

    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 365
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 368
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 380
    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_5

    .line 383
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 386
    :cond_5
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 389
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 391
    :cond_6
    return-void

    .line 374
    :cond_7
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 376
    iget v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_2
.end method

.method private convertStringArray(Ljava/lang/String;)[I
    .locals 12
    .parameter "valueStr"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    .line 687
    const/4 v6, 0x1

    .local v6, start:I
    const/4 v2, 0x1

    .line 688
    .local v2, end:I
    const/16 v8, 0x149

    new-array v7, v8, [I

    .line 689
    .local v7, value:[I
    const/4 v1, 0x0

    .line 690
    .local v1, count:I
    const/4 v5, 0x0

    .line 691
    .local v5, spaceCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 693
    .local v0, arrayLength:I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_0
    move v6, v2

    .line 698
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_5

    .line 700
    const/4 v5, 0x0

    .line 701
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_3

    .line 703
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 704
    add-int/lit8 v5, v5, 0x1

    .line 705
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 710
    :cond_3
    sub-int v8, v2, v5

    :try_start_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    add-int/lit8 v1, v1, 0x1

    .line 720
    add-int/lit8 v2, v2, 0x1

    .line 722
    if-eq v2, v0, :cond_1

    .line 724
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 712
    :catch_0
    move-exception v3

    .line 715
    .local v3, ex:Ljava/lang/Exception;
    iget v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 716
    const/4 v4, 0x0

    .line 735
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_4
    return-object v4

    .line 728
    :cond_4
    move v6, v2

    goto :goto_1

    .line 732
    :cond_5
    new-array v4, v1, [I

    .line 733
    .local v4, settingValue:[I
    invoke-static {v7, v11, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method private equalizerSettingArray([Ljava/lang/String;I)[[I
    .locals 17
    .parameter "paramNames"
    .parameter "length"

    .prologue
    .line 578
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 579
    .local v6, eqList:Ljava/util/Vector;,"Ljava/util/Vector<[I>;"
    move/from16 v0, p2

    new-array v4, v0, [I

    .line 580
    .local v4, defaultSettings:[I
    new-instance v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 582
    .local v3, currentSettings:Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v14, 0x4

    if-ge v7, v14, :cond_10

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    aget-object v15, p1, v7

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #currentSettings:Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    check-cast v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    .line 585
    .restart local v3       #currentSettings:Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    if-nez v3, :cond_1

    .line 587
    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v10, v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 592
    .local v10, settingGroup:Ljava/lang/String;
    const/4 v9, 0x0

    .line 593
    .local v9, parameter:Ljava/lang/String;
    const/4 v13, 0x0

    .line 595
    .local v13, value:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, start:I
    const/4 v5, 0x0

    .line 596
    .local v5, end:I
    const/4 v11, 0x0

    .line 597
    .local v11, spaceCount:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    .line 602
    .local v2, arrayLength:I
    :goto_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_3

    .line 604
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 606
    :cond_3
    move v12, v5

    .line 607
    :cond_4
    :goto_2
    if-ge v5, v2, :cond_0

    .line 609
    const/4 v8, 0x0

    .line 610
    .local v8, isParamFound:Z
    const/4 v11, 0x0

    .line 611
    :goto_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_6

    .line 613
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5

    .line 614
    add-int/lit8 v11, v11, 0x1

    .line 615
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 617
    :cond_6
    sub-int v14, v5, v11

    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 619
    const-string v14, "iebt"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "gebg"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 622
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for equalizer settings"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 630
    :goto_4
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_8

    .line 632
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 627
    :cond_7
    const/4 v8, 0x1

    goto :goto_4

    .line 634
    :cond_8
    move v12, v5

    .line 635
    :goto_5
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_9

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 639
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 641
    if-eqz v8, :cond_b

    .line 643
    invoke-virtual {v10, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 644
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 645
    .local v1, actualSettings:[I
    if-eqz v1, :cond_f

    .line 647
    array-length v14, v1

    invoke-static {v9, v14}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 649
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 651
    :cond_a
    invoke-virtual {v6, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v1           #actualSettings:[I
    :cond_b
    :goto_6
    if-eq v5, v2, :cond_4

    .line 663
    :cond_c
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_d

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_d

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_e

    .line 665
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 666
    if-ne v5, v2, :cond_c

    .line 669
    :cond_e
    move v12, v5

    goto/16 :goto_2

    .line 656
    .restart local v1       #actualSettings:[I
    :cond_f
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 676
    .end local v1           #actualSettings:[I
    .end local v2           #arrayLength:I
    .end local v5           #end:I
    .end local v8           #isParamFound:Z
    .end local v9           #parameter:Ljava/lang/String;
    .end local v10           #settingGroup:Ljava/lang/String;
    .end local v11           #spaceCount:I
    .end local v12           #start:I
    .end local v13           #value:Ljava/lang/String;
    :cond_10
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v14, v14, [[I

    invoke-virtual {v6, v14}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    return-object v14
.end method

.method private getProfileSettingArray(Ljava/lang/String;)[[I
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 401
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 402
    .local v1, settingList:Ljava/util/Vector;,"Ljava/util/Vector<[I>;"
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v2}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 403
    .local v0, currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 405
    .restart local v0       #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 406
    check-cast v2, [[I

    .line 415
    :goto_0
    return-object v2

    .line 408
    :cond_0
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile settingStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 411
    if-nez v1, :cond_1

    .line 412
    check-cast v2, [[I

    goto :goto_0

    .line 414
    :cond_1
    const-string v2, "DsConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile setting list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    goto :goto_0
.end method

.method private getTuningSettingArray()[[I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 462
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 466
    .local v2, settingList:Ljava/util/Vector;,"Ljava/util/Vector<[I>;"
    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string v6, "tuning"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    .line 467
    .local v1, deviceTuningSettings:Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string v6, "constant"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    .line 469
    .local v0, deviceConstantSettings:Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    if-nez v1, :cond_1

    .line 471
    if-nez v0, :cond_0

    move-object v3, v4

    .line 478
    .local v3, settingStr:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_3

    .line 479
    check-cast v4, [[I

    .line 488
    :goto_1
    return-object v4

    .line 471
    .end local v3           #settingStr:Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .restart local v3       #settingStr:Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v3           #settingStr:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 481
    .restart local v3       #settingStr:Ljava/lang/String;
    :cond_3
    const-string v5, "DsConfigParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tuning settingStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0, v3}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 484
    if-nez v2, :cond_4

    .line 485
    check-cast v4, [[I

    goto :goto_1

    .line 487
    :cond_4
    const-string v4, "DsConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device setting list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    goto :goto_1
.end method

.method private parseParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 223
    new-instance v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    invoke-direct {v2, p0, v4}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 224
    .local v2, currentSettings:Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, preIeq:Ljava/lang/String;
    :goto_0
    const-string v5, "preset"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ieq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "geq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    :cond_0
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->device:Ljava/lang/String;

    .line 228
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 229
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_1
    :goto_1
    return-void

    .end local v3           #preIeq:Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 224
    goto :goto_0

    .line 235
    .restart local v3       #preIeq:Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v1, p0, v4}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 236
    .local v1, currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    const-string v5, "profile"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "off"

    iget-object v6, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    :cond_4
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    .line 246
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    .line 247
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->device:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    .line 249
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    :cond_5
    new-instance v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    invoke-direct {v0, p0, v4}, Landroid/dolby/ds/DsConfigParser$DeviceSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 256
    .local v0, currentDeviceSettings:Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    const-string v4, "tuning"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "constant"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    :cond_6
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->device:Ljava/lang/String;

    .line 259
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .line 260
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;
    .locals 17
    .parameter "settingGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 746
    if-nez p1, :cond_1

    .line 747
    const/4 v10, 0x0

    .line 840
    :cond_0
    return-object v10

    .line 748
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 750
    .local v10, settingList:Ljava/util/Vector;,"Ljava/util/Vector<[I>;"
    const/4 v9, 0x0

    .local v9, parameter:I
    const/4 v6, 0x0

    .local v6, offset:I
    const/4 v13, 0x0

    .line 751
    .local v13, value:I
    const/4 v12, 0x0

    .local v12, start:I
    const/4 v3, 0x0

    .line 753
    .local v3, end:I
    const/4 v11, 0x0

    .line 754
    .local v11, spaceCount:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 758
    .local v2, arrayLength:I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_3

    .line 760
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 762
    :cond_3
    move v12, v3

    .line 763
    :cond_4
    :goto_1
    if-ge v3, v2, :cond_0

    .line 765
    const/4 v5, 0x0

    .line 766
    .local v5, isParamFound:Z
    const/4 v11, 0x0

    .line 767
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_6

    .line 769
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5

    .line 770
    add-int/lit8 v11, v11, 0x1

    .line 771
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 773
    :cond_6
    sub-int v14, v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 775
    .local v7, paraName:Ljava/lang/String;
    sget-object v14, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 777
    invoke-static {v7}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v9

    .line 778
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const/4 v5, 0x1

    .line 788
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_8

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 784
    :cond_7
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected AK parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_3

    .line 792
    :cond_8
    move v12, v3

    .line 793
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_9

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 797
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 799
    if-eqz v5, :cond_e

    .line 801
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 802
    .local v8, paraValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 803
    .local v1, actualSettings:[I
    if-eqz v1, :cond_d

    .line 805
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "genb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "aonb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "ienb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "gebf"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 811
    :cond_a
    invoke-static {v7, v1}, Landroid/dolby/ds/DsAkSettings;->setConstantAkParam(Ljava/lang/String;[I)V

    .line 817
    :cond_b
    :goto_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    array-length v14, v1

    if-ge v4, v14, :cond_e

    .line 818
    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aget v16, v1, v4

    aput v16, v14, v15

    invoke-virtual {v10, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 813
    .end local v4           #i:I
    :cond_c
    array-length v14, v1

    invoke-static {v7, v14}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_b

    .line 815
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_5

    .line 823
    :cond_d
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v1           #actualSettings:[I
    .end local v8           #paraValue:Ljava/lang/String;
    :cond_e
    if-eq v3, v2, :cond_4

    .line 830
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_11

    .line 832
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 833
    if-ne v3, v2, :cond_f

    .line 836
    :cond_11
    move v12, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public getGeqSettingArray(Ljava/lang/String;)[[I
    .locals 3
    .parameter "profile"

    .prologue
    .line 564
    const-string v1, "gebg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 565
    .local v0, len:I
    sget-object v2, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    sget-object v1, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getIeqSettingArray()[[I
    .locals 2

    .prologue
    .line 553
    const-string v1, "iebt"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, len:I
    sget-object v1, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getParserStatusFlag()Z
    .locals 3

    .prologue
    .line 273
    const/4 v0, 0x1

    .line 275
    .local v0, ret:Z
    const-string v1, "DsConfigParser"

    const-string v2, "The parsing result of the configuration file shows below:"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    if-nez v1, :cond_2

    .line 279
    const-string v1, "DsConfigParser"

    const-string v2, "No errors were found when parsing configuration file."

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 328
    const-string v1, "DsConfigParser"

    const-string v2, "Parsing has failed, DS will be disabled! Please correct the errors in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return v0

    .line 283
    :cond_2
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3

    .line 284
    const-string v1, "DsConfigParser"

    const-string v2, "More profiles were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_3
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    .line 286
    const-string v1, "DsConfigParser"

    const-string v2, "More IEQ presets were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_4
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    .line 288
    const-string v1, "DsConfigParser"

    const-string v2, "Off profile was specified in configuration file but is not expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_5
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 291
    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected profiles were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    .line 294
    :cond_6
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 296
    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected IEQ presets were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_7
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 301
    const-string v1, "DsConfigParser"

    const-string v2, "Off profile was expected but NOT specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 304
    :cond_8
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 306
    const-string v1, "DsConfigParser"

    const-string v2, "Some AK parameters were missing in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 309
    :cond_9
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 311
    const-string v1, "DsConfigParser"

    const-string v2, "Parameter name parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 314
    :cond_a
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    .line 316
    const-string v1, "DsConfigParser"

    const-string v2, "Parameter value parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 319
    :cond_b
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "DsConfigParser"

    const-string v2, "The length of data specified for the AK parameter is inconsistent with the related AK parameter that determines the expected length."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getProfileSettingIeq(Ljava/lang/String;)I
    .locals 6
    .parameter "profile"

    .prologue
    const/4 v2, -0x1

    .line 443
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 444
    .local v0, currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 446
    .restart local v0       #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ieqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v3, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 452
    .local v1, index:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 425
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v1}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$1;)V

    .line 426
    .local v0, currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 428
    .restart local v0       #currentProfileSettings:Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-object v1

    .line 431
    :cond_0
    const-string v1, "DsConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSavedParams()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 854
    .local v2, savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 858
    .local v1, paramName:Ljava/lang/String;
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "gebg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    .end local v1           #paramName:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getSettingArray(Ljava/lang/String;Z)[[I
    .locals 13
    .parameter "profile"
    .parameter "requireAllParams"

    .prologue
    .line 503
    sget-object v10, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 504
    .local v5, settableParamNames:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v10, v5

    if-ge v0, v10, :cond_0

    .line 506
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    aget-object v10, v5, v0

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->getTuningSettingArray()[[I

    move-result-object v8

    .line 510
    .local v8, tuningArray:[[I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingArray(Ljava/lang/String;)[[I

    move-result-object v3

    .line 512
    .local v3, profileArray:[[I
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 513
    .local v4, profileLength:I
    :goto_1
    if-nez v8, :cond_2

    const/4 v9, 0x0

    .line 514
    .local v9, tuningLength:I
    :goto_2
    add-int v7, v4, v9

    .line 516
    .local v7, settingLength:I
    if-nez v7, :cond_3

    .line 517
    const/4 v10, 0x0

    check-cast v10, [[I

    .line 544
    :goto_3
    return-object v10

    .line 512
    .end local v4           #profileLength:I
    .end local v7           #settingLength:I
    .end local v9           #tuningLength:I
    :cond_1
    array-length v4, v3

    goto :goto_1

    .line 513
    .restart local v4       #profileLength:I
    :cond_2
    array-length v9, v8

    goto :goto_2

    .line 519
    .restart local v7       #settingLength:I
    .restart local v9       #tuningLength:I
    :cond_3
    if-eqz p2, :cond_5

    .line 523
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    .local v2, paramName:Ljava/lang/String;
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "lcmf"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "iebt"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 529
    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AK parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " missing in xml file!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_4

    .line 535
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #paramName:Ljava/lang/String;
    :cond_5
    new-array v6, v7, [[I

    .line 537
    .local v6, settingArray:[[I
    if-eqz v4, :cond_6

    .line 538
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    :cond_6
    if-eqz v9, :cond_7

    .line 540
    const/4 v10, 0x0

    invoke-static {v8, v10, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    :cond_7
    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "total setting list size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    .line 544
    goto/16 :goto_3
.end method
