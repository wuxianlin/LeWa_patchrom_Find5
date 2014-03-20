.class public Landroid/dolby/ds/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field protected static final DS_PARAM_ALL_VALUES:I = 0x2

.field protected static final DS_PARAM_DEFINE_PARAMS:I = 0x5

.field protected static final DS_PARAM_DEFINE_SETTINGS:I = 0x1

.field protected static final DS_PARAM_SINGLE_DEVICE_VALUE:I = 0x3

.field protected static final DS_PARAM_TUNING:I = 0x0

.field protected static final DS_PARAM_VERSION:I = 0x6

.field protected static final DS_PARAM_VISUALIZER_DATA:I = 0x4

.field protected static final DS_PARAM_VISUALIZER_ENABLE:I = 0x7

.field public static final EFFECT_DS:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_DS:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DsEffect"


# instance fields
.field protected audioEffect:Landroid/media/audiofx/AudioEffect;

.field private audioSessionId_:I

.field protected classAudioEffect:Ljava/lang/Class;

.field protected methodGetParameter:Ljava/lang/reflect/Method;

.field protected methodSetParameter:Ljava/lang/reflect/Method;

.field nxp_env_reverb_uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 34
    const-string v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_DS:Ljava/util/UUID;

    .line 35
    const-string v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .parameter "audioSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v2, "4a387fc0-8ab3-11df-8bad-0002a5d5c51b"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->nxp_env_reverb_uuid:Ljava/util/UUID;

    .line 48
    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    .line 49
    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 50
    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    .line 51
    iput-object v3, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    .line 72
    :try_start_0
    const-string v2, "android.media.audiofx.AudioEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x0

    .line 84
    .local v0, ctorAudioEffect:Ljava/lang/reflect/Constructor;
    :try_start_1
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 85
    const-string v2, "DsEffect"

    const-string v3, "Found AudioEffect Constructor"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 99
    const-string v2, "DsEffect"

    const-string v3, "Created Ds AudioEffect successfully"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    .line 120
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 122
    .local v1, e:Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string v3, "setParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    .line 123
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string v3, "getParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    .line 125
    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATED EFFECT Implementor:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connectMode:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sessionID:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineParams()V

    .line 136
    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineSettings()V

    .line 137
    iput p1, p0, Landroid/dolby/ds/DsEffect;->audioSessionId_:I

    .line 138
    return-void

    .line 74
    .end local v0           #ctorAudioEffect:Ljava/lang/reflect/Constructor;
    .end local v1           #e:Landroid/media/audiofx/AudioEffect$Descriptor;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 77
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v1

    .line 87
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #ctorAudioEffect:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    throw v1

    .line 91
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    throw v1

    .line 100
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 102
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    throw v1

    .line 104
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 106
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    throw v1

    .line 108
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 110
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    throw v1

    .line 112
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 114
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    throw v1
.end method

.method private static ByteArrayToInt([B)I
    .locals 2
    .parameter "ba"

    .prologue
    .line 258
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static ByteArrayToIntArray([B)[I
    .locals 6
    .parameter "ba"

    .prologue
    .line 263
    array-length v3, p0

    .line 264
    .local v3, srcLength:I
    shr-int/lit8 v1, v3, 0x2

    .line 265
    .local v1, destLength:I
    new-array v0, v1, [I

    .line 267
    .local v0, dest:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 269
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v0, v2

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    return-object v0
.end method

.method private static ByteArrayToShortArray([B)[S
    .locals 6
    .parameter "ba"

    .prologue
    .line 276
    array-length v3, p0

    .line 277
    .local v3, srcLength:I
    shr-int/lit8 v1, v3, 0x1

    .line 278
    .local v1, destLength:I
    new-array v0, v1, [S

    .line 280
    .local v0, dest:[S
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 282
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v0
.end method

.method private static ByteArrayToString([B)Ljava/lang/String;
    .locals 6
    .parameter "ba"

    .prologue
    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "HEX("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 293
    .local v1, b:B
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v1           #b:B
    :cond_0
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static IntArrayToByteArray([I)[B
    .locals 7
    .parameter "src"

    .prologue
    .line 205
    array-length v4, p0

    .line 206
    .local v4, srcLength:I
    shl-int/lit8 v6, v4, 0x2

    new-array v0, v6, [B

    .line 208
    .local v0, dst:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 210
    aget v5, p0, v1

    .line 211
    .local v5, x:I
    shl-int/lit8 v2, v1, 0x2

    .line 212
    .local v2, j:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    ushr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 213
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 214
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .restart local v3       #j:I
    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 215
    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v2           #j:I
    .end local v5           #x:I
    :cond_0
    return-object v0
.end method

.method private static Set4ChInByteArray(Ljava/lang/String;[BI)I
    .locals 6
    .parameter "src"
    .parameter "dst"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, len:I
    if-le v2, v4, :cond_0

    .line 241
    const-string v3, "DsEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contains more than 4 characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong parameter name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    move v1, p2

    .end local p2
    .local v1, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 248
    add-int/lit8 p2, v1, 0x1

    .end local v1           #index:I
    .restart local p2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 246
    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .end local p2
    .restart local v1       #index:I
    goto :goto_0

    .line 250
    :cond_1
    if-ge v2, v4, :cond_2

    .line 251
    const/4 v3, 0x0

    aput-byte v3, p1, v1

    .line 253
    :cond_2
    return v4
.end method

.method private static SetInt16InByteArray(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "dst"
    .parameter "index"

    .prologue
    .line 222
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 223
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 224
    const/4 v0, 0x2

    return v0
.end method

.method private static SetInt32InByteArray(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "dst"
    .parameter "index"

    .prologue
    .line 229
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, index:I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 230
    add-int/lit8 p2, v0, 0x1

    .end local v0           #index:I
    .restart local p2
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 231
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #index:I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 232
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 233
    const/4 v1, 0x4

    return v1
.end method

.method private _getIntArrayParameter(I[I)I
    .locals 6
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, count:I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 403
    .local v0, baParam:[B
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    .line 404
    .local v1, baValue:[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 405
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    if-eq v2, v4, :cond_0

    .line 407
    const-string v4, "DsEffect"

    const-string v5, "_getIntArrayParameter: Error in getting the parameter!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return v2

    .line 411
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToIntArray([B)[I

    move-result-object v3

    .line 412
    .local v3, tmpValue:[I
    array-length v4, p2

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private _getShortArrayParameter(I[S)I
    .locals 6
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, count:I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 431
    .local v0, baParam:[B
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    .line 432
    .local v1, baValue:[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 433
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_0

    .line 435
    const-string v4, "DsEffect"

    const-string v5, "_getShortArrayParameter: Unexpected length"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return v2

    .line 439
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToShortArray([B)[S

    move-result-object v3

    .line 440
    .local v3, tmpValue:[S
    array-length v4, v3

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private _invokeGetParameter([B[B)I
    .locals 7
    .parameter "baParam"
    .parameter "baValue"

    .prologue
    const/4 v3, -0x5

    .line 357
    const/4 v0, 0x0

    .line 360
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 384
    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_invokeGetParameter baParam:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n baValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "DsEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_invokeGetParameter returning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 386
    :goto_0
    return v2

    .line 362
    :catch_0
    move-exception v1

    .line 365
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 366
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, -0x4

    goto :goto_0

    .line 369
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 373
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 374
    goto :goto_0

    .line 376
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 380
    const-string v2, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 381
    goto :goto_0
.end method

.method private _invokeSetParameter([B[B)I
    .locals 7
    .parameter "baParam"
    .parameter "baValue"

    .prologue
    const/4 v3, -0x5

    .line 312
    const-string v2, "DsEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_invokeSetParameter baParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n baValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x0

    .line 317
    .local v1, iRet:I
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 340
    const-string v2, "DsEffect"

    const-string v3, "_invokeSetParameter returning."

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 342
    :goto_0
    return v2

    .line 319
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 323
    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, -0x4

    goto :goto_0

    .line 326
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 330
    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 331
    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 337
    const-string v2, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 338
    goto :goto_0
.end method

.method private _setDefineParams()V
    .locals 6

    .prologue
    .line 451
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 453
    .local v0, baParam:[B
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 454
    .local v1, baValue:[B
    const/4 v4, 0x0

    .line 455
    .local v4, index:I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 458
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getParamsDefinitions()[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, defns:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 461
    aget-object v5, v2, v3

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->Set4ChInByteArray(Ljava/lang/String;[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    .line 464
    return-void
.end method

.method private _setDefineSettings()V
    .locals 6

    .prologue
    .line 472
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 474
    .local v0, baParam:[B
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 475
    .local v1, baValue:[B
    const/4 v4, 0x0

    .line 476
    .local v4, index:I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 480
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getSettingsDefinitions()[Ljava/lang/Object;

    move-result-object v2

    .line 481
    .local v2, defns:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 483
    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-byte v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    aput-byte v5, v1, v4

    .line 484
    add-int/lit8 v4, v4, 0x1

    .line 485
    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    .line 488
    return-void
.end method

.method private intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    .line 197
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getVersion()[S
    .locals 6

    .prologue
    .line 696
    const-string v4, "ver"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 697
    .local v2, verLen:I
    new-array v3, v2, [S

    .line 698
    .local v3, version:[S
    const/4 v0, 0x0

    .line 700
    .local v0, count:I
    const/4 v4, 0x6

    invoke-direct {p0, v4, v3}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    .line 701
    array-length v4, v3

    shl-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_0

    .line 703
    const-string v4, "DsEffect"

    const-string v5, "getVersion(): Error in getting the version"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 706
    const/4 v4, -0x1

    aput-short v4, v3, v1

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1           #i:I
    :cond_0
    return-object v3
.end method

.method public getVisualizerData()[S
    .locals 5

    .prologue
    .line 578
    const-string v3, "DsEffect"

    const-string v4, "getVisualizerData"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    .line 585
    .local v0, count:I
    const-string v3, "vcbg"

    invoke-static {v3}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    const-string v4, "vcbe"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    add-int v1, v3, v4

    .line 586
    .local v1, numVisualizerData:I
    new-array v2, v1, [S

    .line 588
    .local v2, visualizerData:[S
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    .line 589
    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_0

    .line 591
    const/4 v2, 0x0

    .line 594
    .end local v2           #visualizerData:[S
    :cond_0
    return-object v2
.end method

.method public getVisualizerOn()Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    .line 545
    const-string v6, "DsEffect"

    const-string v7, "getVisualizerOn"

    invoke-static {v6, v7}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, enabled:Z
    const/4 v2, 0x0

    .line 553
    .local v2, count:I
    const/4 v6, 0x7

    invoke-direct {p0, v6}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 554
    .local v0, baParam:[B
    new-array v1, v8, [B

    .line 555
    .local v1, baValue:[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 556
    if-eq v2, v8, :cond_0

    .line 558
    const-string v5, "DsEffect"

    const-string v6, "getVisualizerOn: Error in getting the visualizer on/off state!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_0
    return v3

    .line 562
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToInt([B)I

    move-result v4

    .line 563
    .local v4, on:I
    if-ne v4, v5, :cond_1

    move v3, v5

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 149
    return-void
.end method

.method public setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    .locals 2
    .parameter "settings"

    .prologue
    .line 508
    const-string v0, "DsEffect"

    const-string v1, "setAllProfileSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/dolby/ds/DsEffect;->setAllSettings(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public setAllSettings(Ljava/util/Map;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/dolby/ds/AudioDevice;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, allSettings:Ljava/util/Map;,"Ljava/util/Map<Landroid/dolby/ds/AudioDevice;Landroid/dolby/ds/DsAkSettings;>;"
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 668
    .local v0, baParam:[B
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    .line 670
    .local v6, nDevCount:I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x2

    new-array v1, v9, [B

    .line 671
    .local v1, baValue:[B
    const/4 v5, 0x0

    .line 672
    .local v5, index:I
    invoke-static {v6, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    .line 673
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/AudioDevice;

    .line 675
    .local v2, device:Landroid/dolby/ds/AudioDevice;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/dolby/ds/DsAkSettings;

    .line 677
    .local v7, s:Landroid/dolby/ds/DsAkSettings;
    invoke-virtual {v2}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v9

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    .line 679
    invoke-virtual {v7}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v8

    .line 680
    .local v8, values:[S
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 681
    aget-short v9, v8, v3

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    .end local v2           #device:Landroid/dolby/ds/AudioDevice;
    .end local v3           #i:I
    .end local v7           #s:Landroid/dolby/ds/DsAkSettings;
    .end local v8           #values:[S
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v9

    return v9
.end method

.method public setEnabled(Z)I
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I
    .locals 11
    .parameter "parameter"
    .parameter "offset"
    .parameter "values"
    .parameter "device"

    .prologue
    const/4 v10, -0x1

    .line 616
    array-length v7, p3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 618
    const-string v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_0
    invoke-static {p1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v2

    .line 626
    .local v2, begin:I
    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v3

    .line 627
    .local v3, end:I
    if-eq v2, v10, :cond_0

    if-ne v3, v10, :cond_2

    .line 629
    :cond_0
    const-string v7, "DsEffect"

    const-string v8, "Attempt to set disallowed parameter and offset combination"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v7, -0x5

    .line 646
    :goto_1
    return v7

    .line 622
    .end local v2           #begin:I
    .end local v3           #end:I
    :cond_1
    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v6, v7, -0x1

    .line 623
    .local v6, offsetEnd:I
    const-string v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", offset ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v6           #offsetEnd:I
    .restart local v2       #begin:I
    .restart local v3       #end:I
    :cond_2
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 639
    .local v0, baParam:[B
    array-length v7, p3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 640
    .local v1, baValue:[B
    const/4 v4, 0x0

    .line 641
    .local v4, index:I
    invoke-virtual {p4}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v7

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 642
    invoke-static {v2, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 643
    array-length v7, p3

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 644
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    array-length v7, p3

    if-ge v5, v7, :cond_3

    .line 645
    aget-short v7, p3, v5

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 644
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 646
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v7

    goto :goto_1
.end method

.method public setTuningSettings(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[I>;"
    const-string v0, "DsEffect"

    const-string v1, "setTuningSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public setVisualizerOn(Z)I
    .locals 6
    .parameter "enable"

    .prologue
    .line 524
    const-string v4, "DsEffect"

    const-string v5, "setVisualizerOn"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 531
    .local v3, on:I
    :goto_0
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 532
    .local v0, baParam:[B
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 533
    .local v1, baValue:[B
    const/4 v2, 0x0

    .line 534
    .local v2, index:I
    invoke-static {v3, v1, v2}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 535
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v4

    return v4

    .line 525
    .end local v0           #baParam:[B
    .end local v1           #baValue:[B
    .end local v2           #index:I
    .end local v3           #on:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
