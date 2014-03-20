.class public final Lcom/android/server/oppo/OppoService;
.super Landroid/os/IOppoService$Stub;
.source "OppoService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/IOppoService$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/server/oppo/OppoService;->mContext:Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->native_initRawPartition()Z

    move-result v0

    .line 24
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 25
    const-string v1, "OppoService"

    const-string v2, "RawPartition init failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method private native nativeAdjustLCDFrequency(I)I
.end method

.method private native native_finalizeRawPartition()V
.end method

.method private native native_initRawPartition()Z
.end method

.method private native native_readRawPartition(II)Ljava/lang/String;
.end method

.method private native native_writeRawPartition(ILjava/lang/String;)I
.end method


# virtual methods
.method public adjustLCDFrequency(I)I
    .locals 4
    .parameter "rate"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/oppo/OppoService;->nativeAdjustLCDFrequency(I)I

    move-result v0

    .line 44
    .local v0, res:I
    const-string v1, "OppoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeAdjustLCDFrequency return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/oppo/OppoService;->native_finalizeRawPartition()V

    .line 30
    invoke-super {p0}, Landroid/os/IOppoService$Stub;->finalize()V

    .line 31
    return-void
.end method

.method public readRawPartition(II)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "size"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService;->native_readRawPartition(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeRawPartition(ILjava/lang/String;)I
    .locals 1
    .parameter "id"
    .parameter "content"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/server/oppo/OppoService;->native_writeRawPartition(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
