.class public final Landroid/os/OppoManager;
.super Ljava/lang/Object;
.source "OppoManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INIT_TRY_TIMES:I = 0x3

.field public static final RAW_ID_BREAK_DOWN:I = 0x138e

.field public static final RAW_ID_MAX:I = 0x1770

.field public static final RAW_ID_MIN:I = 0x1389

.field public static final RAW_ID_SHUTDOWN:I = 0x138d

.field public static final SERVICE_NAME:Ljava/lang/String; = "OPPO"

.field public static final TAG:Ljava/lang/String; = "OppoManager"

.field private static sService:Landroid/os/IOppoService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adjustLCDFrequency(I)I
    .locals 4
    .parameter "rate"

    .prologue
    .line 40
    const/high16 v1, -0x8000

    .line 41
    .local v1, res:I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 48
    .end local v1           #res:I
    .local v2, res:I
    :goto_0
    return v2

    .line 44
    .end local v2           #res:I
    .restart local v1       #res:I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0}, Landroid/os/IOppoService;->adjustLCDFrequency(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 48
    .end local v1           #res:I
    .restart local v2       #res:I
    goto :goto_0

    .line 45
    .end local v2           #res:I
    .restart local v1       #res:I
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static dumpShutdownMsg()V
    .locals 10

    .prologue
    .line 65
    const-string v7, "OppoManager"

    const-string v8, "dumpShutdownMsg e"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v5, sf:Ljava/text/SimpleDateFormat;
    const-string/jumbo v7, "ro.build.kernel.id"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, kid:Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kernel id["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    .line 75
    .local v6, t:Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 76
    .local v0, e:[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 78
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, msg:Ljava/lang/String;
    const/16 v7, 0x138d

    invoke-static {v7, v3}, Landroid/os/OppoManager;->writeRawPartition(ILjava/lang/String;)I

    .line 84
    const-string v7, "OppoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shutdown stack trace ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v7, "OppoManager"

    const-string v8, "dumpShutdownMsg x"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public static final init()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 27
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-eqz v2, :cond_1

    .line 36
    .local v0, times:I
    :cond_0
    :goto_0
    return v1

    .line 29
    .end local v0           #times:I
    :cond_1
    const/4 v0, 0x3

    .line 31
    .restart local v0       #times:I
    :cond_2
    const-string v2, "OppoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to OppoService Instance! times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v2, "OPPO"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOppoService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOppoService;

    move-result-object v2

    sput-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    .line 33
    sget-object v2, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v2, :cond_0

    .line 35
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 36
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readRawPartition(II)Ljava/lang/String;
    .locals 4
    .parameter "id"
    .parameter "size"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, res:Ljava/lang/String;
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 101
    .end local v1           #res:Ljava/lang/String;
    .local v2, res:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 97
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->readRawPartition(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 101
    .end local v1           #res:Ljava/lang/String;
    .restart local v2       #res:Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v2           #res:Ljava/lang/String;
    .restart local v1       #res:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeRawPartition(ILjava/lang/String;)I
    .locals 4
    .parameter "id"
    .parameter "content"

    .prologue
    .line 105
    const/4 v1, -0x1

    .line 106
    .local v1, res:I
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/OppoManager;->init()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 113
    .end local v1           #res:I
    .local v2, res:I
    :goto_0
    return v2

    .line 109
    .end local v2           #res:I
    .restart local v1       #res:I
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/OppoManager;->sService:Landroid/os/IOppoService;

    invoke-interface {v3, p0, p1}, Landroid/os/IOppoService;->writeRawPartition(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 113
    .end local v1           #res:I
    .restart local v2       #res:I
    goto :goto_0

    .line 110
    .end local v2           #res:I
    .restart local v1       #res:I
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
