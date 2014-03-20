.class public Landroid/media/audiofx/OppoDirac;
.super Ljava/lang/Object;
.source "OppoDirac.java"


# static fields
.field public static final EFFECT_TYPE_DIRAC:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field private static final TAG:Ljava/lang/String; = "Dirac-JAVA"


# instance fields
.field private final ENABLE_DIRAC:I

.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field private mAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "4c6383e0-ff7d-11e0-b6d8-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_DIRAC:Ljava/util/UUID;

    .line 45
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "priority"
    .parameter "audioSessionid"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiofx/OppoDirac;->ENABLE_DIRAC:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 32
    const/4 v0, -0x3

    iput v0, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v0, "Dirac-JAVA"

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

    .line 53
    :cond_0
    if-gez p2, :cond_1

    .line 54
    const-string v0, "Dirac-JAVA"

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

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 122
    :cond_0
    return-void
.end method

.method public setEnabled(IZ)I
    .locals 7
    .parameter "audioSessionid"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, value:I
    const/4 v0, 0x0

    .line 62
    .local v0, status:I
    if-gez p1, :cond_0

    .line 63
    const-string v2, "Dirac-JAVA"

    const-string v3, "audioSessionid<0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, -0x1

    .line 115
    :goto_0
    return v2

    .line 67
    :cond_0
    const-string v2, "Dirac-JAVA"

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

    .line 69
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v2, :cond_1

    .line 70
    const-string v2, "Dirac-JAVA"

    const-string/jumbo v3, "setEnabled:mAudioEffect==null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_DIRAC:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 72
    iput p1, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    .line 75
    :cond_1
    iget v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    if-eq v2, p1, :cond_2

    .line 76
    const-string v2, "Dirac-JAVA"

    const-string/jumbo v3, "setEnabled:mAudioSessionId!=audioSessionid"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 78
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_DIRAC:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 79
    iput p1, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    .line 83
    :cond_2
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v2

    if-nez v2, :cond_3

    .line 84
    const-string v2, "Dirac-JAVA"

    const-string/jumbo v3, "setEnabled:!mAudioEffect.hasControl()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 86
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_DIRAC:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 87
    iput p1, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    .line 90
    :cond_3
    if-eqz p2, :cond_4

    .line 91
    const/4 v1, 0x1

    .line 94
    :cond_4
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, v6, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    const-string v2, "Dirac-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dirac setParameter error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 99
    new-instance v2, Landroid/media/audiofx/AudioEffect;

    sget-object v3, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_DIRAC:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/OppoDirac;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 100
    iput p1, p0, Landroid/media/audiofx/OppoDirac;->mAudioSessionId:I

    .line 101
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, v6, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    const-string v2, "Dirac-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not set Dirac Parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 104
    goto/16 :goto_0

    .line 108
    :cond_5
    iget-object v2, p0, Landroid/media/audiofx/OppoDirac;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2, p2}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    const-string v2, "Dirac-JAVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dirac super enable error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 112
    goto/16 :goto_0

    :cond_6
    move v2, v0

    .line 115
    goto/16 :goto_0
.end method
