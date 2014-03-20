.class public Landroid/media/audiofx/OppoDolby;
.super Ljava/lang/Object;
.source "OppoDolby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/OppoDolby$RecommendParmValue;,
        Landroid/media/audiofx/OppoDolby$SoundEffectParm;,
        Landroid/media/audiofx/OppoDolby$SoundEffect;,
        Landroid/media/audiofx/OppoDolby$CommandPram;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_DOLBY:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field public static final GEQ_ACTION:I = 0x14

.field public static final GEQ_ANIMATED:I = 0x15

.field public static final GEQ_BLUES:I = 0xb

.field public static final GEQ_CLASSIC:I = 0x5

.field public static final GEQ_COMEDY:I = 0x13

.field public static final GEQ_COSTOM:I = 0x1c

.field public static final GEQ_COUNTRY:I = 0x6

.field public static final GEQ_DANCE:I = 0x7

.field public static final GEQ_DRAMA:I = 0x18

.field public static final GEQ_ELECTRONIC:I = 0xc

.field public static final GEQ_HIPHOP:I = 0xa

.field public static final GEQ_INVALID:I = -0x1

.field public static final GEQ_JAZZ:I = 0x3

.field public static final GEQ_JUNGLE:I = 0x10

.field public static final GEQ_LATIN:I = 0xf

.field public static final GEQ_METAL:I = 0x8

.field public static final GEQ_MOVIE:I = 0x12

.field public static final GEQ_MUSICAL:I = 0x19

.field public static final GEQ_MUSIC_DEFAULT:I = 0x0

.field public static final GEQ_MUSIC_FLAT:I = 0x1

.field public static final GEQ_MV:I = 0x11

.field public static final GEQ_N:I = 0x1d

.field public static final GEQ_NEWS:I = 0x16

.field public static final GEQ_PODCAST:I = 0xe

.field public static final GEQ_POP:I = 0x4

.field public static final GEQ_RB:I = 0x9

.field public static final GEQ_ROCK:I = 0x2

.field public static final GEQ_SPORTS:I = 0x17

.field public static final GEQ_URBAN:I = 0xd

.field public static final GEQ_VARIIETY:I = 0x1a

.field public static final GEQ_VIDEO_FLAT:I = 0x1b

.field public static final LEVEL_CLOSE:I = 0x3

.field public static final LEVEL_HARD:I = 0x2

.field public static final LEVEL_MIDDING:I = 0x1

.field public static final LEVEL_NORMAL:I = 0x0

.field public static final MODE_HEADPHONE:I = 0x0

.field public static final MODE_INVALID:I = -0x1

.field public static final MODE_SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Dolby-JAVA"

.field public static final TYPE_MUSIC:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final defaultSpeakerParam:[I

.field public static final lastSpeakerParam:[I


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field private mAudioSessionId:I

.field private mCount:I

.field private mGEQType:I

.field private mHFELevel:I

.field private mMSR:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mNBLevel:I

.field private mPlayMode:I

.field private mSSHLevel:I

.field private mVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 71
    const-string v0, "0034deb0-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_DOLBY:Ljava/util/UUID;

    .line 78
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 170
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/audiofx/OppoDolby;->lastSpeakerParam:[I

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/audiofx/OppoDolby;->defaultSpeakerParam:[I

    return-void

    .line 170
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 171
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "priority"
    .parameter "audioSessionid"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 52
    const/4 v0, -0x3

    iput v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/OppoDolby;->mCount:I

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid priority, priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    if-gez p2, :cond_1

    .line 104
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid audioSessionid, audioSessionid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    .line 108
    iget v0, p0, Landroid/media/audiofx/OppoDolby;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/audiofx/OppoDolby;->mCount:I

    .line 109
    return-void
.end method

.method private reloadSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x67

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v8, 0x6

    const/16 v7, 0x68

    .line 540
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    if-eqz v5, :cond_7

    .line 541
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 542
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 543
    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mMSR:I

    invoke-direct {p0, v9, v5}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 545
    :cond_0
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 546
    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mNBLevel:I

    invoke-direct {p0, v8, v5}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 548
    :cond_1
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 549
    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mHFELevel:I

    invoke-direct {p0, v10, v5}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 551
    :cond_2
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x69

    if-ne v5, v6, :cond_3

    .line 552
    const/16 v5, 0x69

    iget v6, p0, Landroid/media/audiofx/OppoDolby;->mGEQType:I

    invoke-direct {p0, v5, v6}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 554
    :cond_3
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v11, :cond_4

    .line 555
    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mPlayMode:I

    invoke-direct {p0, v11, v5}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 557
    :cond_4
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 558
    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mMediaType:I

    invoke-direct {p0, v7, v5}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    .line 561
    :cond_5
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 562
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    if-eqz v5, :cond_6

    .line 563
    iget-object v5, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 564
    .local v3, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, key:I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 566
    .local v4, value:I
    const/4 v5, 0x7

    invoke-direct {p0, v5, v2, v4}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTHRParams(III)I

    goto :goto_1

    .line 541
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:I
    .end local v3           #m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #value:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 572
    .end local v0           #i:I
    :cond_7
    return-void
.end method

.method private setDolbyEffectTHRParams(III)I
    .locals 6
    .parameter "event"
    .parameter "params"
    .parameter "value"

    .prologue
    .line 668
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v3, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 669
    .local v0, bParam:[B
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v3, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 670
    .local v1, bValue:[B
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v3, p3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    .line 672
    .local v2, bValue2:[B
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v4, 0x2

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    .line 674
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v3, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v3

    return v3
.end method

.method private setDolbyEffectTWOParams(II)I
    .locals 3
    .parameter "event"
    .parameter "value"

    .prologue
    .line 659
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 660
    .local v0, bParam:[B
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    .line 662
    .local v1, bValue:[B
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method


# virtual methods
.method public GetSoundEffectParameter(II)I
    .locals 6
    .parameter "se"
    .parameter "parm"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 641
    if-nez p1, :cond_1

    const/16 v4, 0x8

    if-ne p2, v4, :cond_1

    .line 643
    iget-object v4, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v4}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 654
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 643
    goto :goto_0

    .line 645
    :cond_1
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 646
    .local v0, param:[I
    new-array v1, v3, [I

    .line 648
    .local v1, result:[I
    aput p1, v0, v2

    .line 649
    aput p2, v0, v3

    .line 651
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    iget-object v4, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v4, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 652
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSoundEffectParameter se:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    aget v2, v1, v2

    goto :goto_0
.end method

.method public SetSoundEffectParameter(III)I
    .locals 3
    .parameter "se"
    .parameter "param"
    .parameter "value"

    .prologue
    .line 635
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSoundEffectParameter se:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTHRParams(III)I

    move-result v0

    return v0
.end method

.method public SoundEffectEnable(IZ)I
    .locals 3
    .parameter "se"
    .parameter "enable"

    .prologue
    .line 629
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundEffectEnable se:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 575
    const-string v3, "Dolby-JAVA"

    const-string v4, ">>>the temp effects param begin>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    if-eqz v3, :cond_9

    .line 579
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 580
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 582
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundEffect.MSR:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mMSR:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 586
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundEffect.NB:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mNBLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_1
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 590
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundEffect.HFE:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mHFELevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 594
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundEffect.SSH:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mSSHLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_4

    .line 598
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandPram.SET_GEQ_TYPE:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mGEQType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_4
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_5

    .line 602
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandPram.SET_PLAY_MODE:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mPlayMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_5
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x68

    if-ne v3, v4, :cond_6

    .line 606
    const-string v3, "Dolby-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CommandPram.SET_MEDIA_TYPE:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/audiofx/OppoDolby;->mMediaType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_6
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    .line 610
    const-string v3, "Dolby-JAVA"

    const-string v4, "---custom GEQ params begin---"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    .line 612
    iget-object v3, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 613
    .local v2, m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Dolby-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   value:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 616
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v3, "Dolby-JAVA"

    const-string v4, "---custom GEQ params end---"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 620
    .end local v0           #i:I
    :cond_9
    const-string v3, "Dolby-JAVA"

    const-string v4, ">>>the temp effects param end>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void
.end method

.method public getParamValue(I)I
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, -0x1

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, mKey:Ljava/lang/String;
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    iget-object v1, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 533
    :goto_0
    return v1

    .line 528
    :cond_0
    const-string v2, "Dolby-JAVA"

    const-string v3, "getParamValue FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_1
    const-string v2, "Dolby-JAVA"

    const-string v3, "getParamValue FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 681
    :cond_0
    return-void
.end method

.method public setCustomGEQ(II)I
    .locals 4
    .parameter "bandid"
    .parameter "value"

    .prologue
    const/4 v3, 0x7

    .line 442
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCustomGEQ: bandid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 452
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setCustomGEQ:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v3, p1, p2}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTHRParams(III)I

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(IZ)I
    .locals 7
    .parameter "audioSessionid"
    .parameter "enabled"

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, value:I
    const/4 v0, 0x0

    .line 462
    .local v0, status:I
    if-gez p1, :cond_0

    .line 463
    const-string v2, "Dolby-JAVA"

    const-string v3, "audioSessionid<0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, -0x1

    .line 519
    :goto_0
    return v2

    .line 468
    :cond_0
    const-string v2, "Dolby-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled audioSessionid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_1

    .line 470
    const-string v2, "Dolby-JAVA"

    const-string/jumbo v3, "setEnabled:mAudioEffect==null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_DOLBY:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 472
    invoke-direct {p0}, Landroid/media/audiofx/OppoDolby;->reloadSettings()V

    .line 473
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    .line 476
    :cond_1
    iget v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    if-eq v2, p1, :cond_2

    .line 477
    const-string v2, "Dolby-JAVA"

    const-string/jumbo v3, "setEnabled:mAudioSessionId!=audioSessionid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 479
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_DOLBY:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 480
    invoke-direct {p0}, Landroid/media/audiofx/OppoDolby;->reloadSettings()V

    .line 481
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    .line 485
    :cond_2
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    const-string v2, "Dolby-JAVA"

    const-string/jumbo v3, "setEnabled:!mAudioEffect.hasControl()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 488
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_DOLBY:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 489
    invoke-direct {p0}, Landroid/media/audiofx/OppoDolby;->reloadSettings()V

    .line 490
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    .line 493
    :cond_3
    if-eqz p2, :cond_4

    .line 494
    const/4 v1, 0x1

    .line 497
    :cond_4
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, v6, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v0

    .line 499
    if-eqz v0, :cond_5

    .line 500
    const-string v2, "Dolby-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dolby setParameter error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 502
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_DOLBY:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDolby;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 503
    invoke-direct {p0}, Landroid/media/audiofx/OppoDolby;->reloadSettings()V

    .line 504
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mAudioSessionId:I

    .line 505
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, v6, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v0

    .line 506
    if-eqz v0, :cond_5

    .line 507
    const-string v2, "Dolby-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not set Dolby Parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 508
    goto/16 :goto_0

    .line 512
    :cond_5
    iget-object v2, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, p2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    .line 514
    if-eqz v0, :cond_6

    .line 515
    const-string v2, "Dolby-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dolby super enable error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 516
    goto/16 :goto_0

    :cond_6
    move v2, v0

    .line 519
    goto/16 :goto_0
.end method

.method public setGEQType(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/16 v3, 0x69

    .line 359
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEQType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mGEQType:I

    .line 366
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 367
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setGEQType:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHFELevel(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/16 v3, 0xa

    .line 374
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHFELevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 379
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mHFELevel:I

    .line 381
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 382
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setHFELevel:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMSR(Z)I
    .locals 5
    .parameter "on"

    .prologue
    const/16 v4, 0x9

    .line 422
    const-string v1, "Dolby-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMSR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, value:I
    if-eqz p1, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 428
    :cond_0
    iget-object v1, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    iget-object v1, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 432
    iput v0, p0, Landroid/media/audiofx/OppoDolby;->mMSR:I

    .line 434
    iget-object v1, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v1, :cond_2

    .line 435
    const-string v1, "Dolby-JAVA"

    const-string/jumbo v2, "setMSR:null!=mAudioEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0, v4, v0}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v1

    .line 438
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMediaType(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/16 v3, 0x68

    .line 328
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 333
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mMediaType:I

    .line 335
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setMediaType:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNBLevel(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v3, 0x6

    .line 389
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNBLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 395
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mNBLevel:I

    .line 397
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setNBLevel:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    const/16 v3, 0x67

    .line 344
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 349
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mPlayMode:I

    .line 351
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setPlayMode:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSPKEQ(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 624
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/OppoDolby;->SoundEffectEnable(IZ)I

    .line 625
    return-void
.end method

.method public setSSHLevel(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v3, 0x3

    .line 406
    const-string v0, "Dolby-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSSHLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mVec:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 411
    iput p1, p0, Landroid/media/audiofx/OppoDolby;->mSSHLevel:I

    .line 413
    iget-object v0, p0, Landroid/media/audiofx/OppoDolby;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_1

    .line 414
    const-string v0, "Dolby-JAVA"

    const-string/jumbo v1, "setSSHLevel:null!=mAudioEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, v3, p1}, Landroid/media/audiofx/OppoDolby;->setDolbyEffectTWOParams(II)I

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
