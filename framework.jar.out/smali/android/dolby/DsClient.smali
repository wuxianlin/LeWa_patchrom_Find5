.class public Landroid/dolby/DsClient;
.super Ljava/lang/Object;
.source "DsClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsClient"

.field private static lock_:Ljava/lang/Object;


# instance fields
.field private activityListener_:Landroid/dolby/IDsClientEvents;

.field private bandCount_:I

.field private callbacks_:Landroid/dolby/IDsServiceCallbacks;

.field private connection_:Landroid/content/ServiceConnection;

.field private dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

.field private ds_:Landroid/dolby/IDs;

.field private excitations_:[F

.field private gains_:[F

.field private handler_:Landroid/os/Handler;

.field private visualizerListener_:Landroid/dolby/IDsVisualizerEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    .line 75
    iput-object v1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 82
    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    .line 88
    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    .line 109
    iput-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    .line 116
    iput-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    .line 1878
    new-instance v0, Landroid/dolby/DsClient$1;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$1;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    .line 1934
    new-instance v0, Landroid/dolby/DsClient$2;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$2;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    .line 2000
    new-instance v0, Landroid/dolby/DsClient$3;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$3;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/dolby/DsClient;)Landroid/dolby/IDs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object v0
.end method

.method static synthetic access$002(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object p1
.end method

.method static synthetic access$100(Landroid/dolby/DsClient;)Landroid/dolby/IDsServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Landroid/dolby/DsClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    return v0
.end method

.method static synthetic access$202(Landroid/dolby/DsClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/dolby/DsClient;->bandCount_:I

    return p1
.end method

.method static synthetic access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/dolby/DsClient;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->gains_:[F

    return-object v0
.end method

.method static synthetic access$600(Landroid/dolby/DsClient;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->excitations_:[F

    return-object v0
.end method

.method static synthetic access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    return-object v0
.end method

.method static synthetic access$800(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    return-object v0
.end method

.method public static getGeqBandGainLowerBound()F
    .locals 2

    .prologue
    .line 1796
    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getGeqBandGainUpperBound()F
    .locals 2

    .prologue
    .line 1806
    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private translateErrorCodeToExceptions(I)V
    .locals 1
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 131
    if-ltz p1, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 138
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :pswitch_1
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 142
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 144
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 135
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindDsService(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1832
    const-string v1, "DsClient"

    const-string v2, "bindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/dolby/IDs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1838
    .local v0, bindIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public getBandCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, value:I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 499
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 500
    .local v2, paramInt:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getBandCount([I)I

    move-result v1

    .line 501
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 503
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 528
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_0
    :goto_0
    return v3

    .line 507
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 510
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getBandCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    throw v0

    .line 515
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 517
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getBandCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 519
    throw v0

    .line 521
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getBandCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 525
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getBandCount"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getBandFrequencies()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, bandFrequencies:[I
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    .line 553
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v3

    new-array v0, v3, [I

    .line 554
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, v0}, Landroid/dolby/IDs;->getBandFrequencies([I)I

    move-result v2

    .line 555
    .local v2, error:I
    if-eqz v2, :cond_0

    .line 557
    invoke-direct {p0, v2}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 578
    .end local v2           #error:I
    :cond_0
    return-object v0

    .line 560
    :catch_0
    move-exception v1

    .line 562
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "DsClient"

    const-string v4, "RemoteException in getBandFrequencies"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    throw v1

    .line 565
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 567
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getBandFrequencies"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 569
    throw v1

    .line 571
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getBandFrequencies"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getBandFrequencies"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 7
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1562
    const/4 v3, 0x0

    .line 1564
    .local v3, values:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 1568
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1569
    .local v2, paramInt:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v1

    .line 1570
    .local v1, error:I
    if-nez v1, :cond_0

    .line 1572
    const/4 v4, 0x0

    aget v4, v2, v4

    new-array v3, v4, [I

    .line 1573
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v3}, Landroid/dolby/IDs;->getDsApParam(Ljava/lang/String;[I)I

    move-result v1

    .line 1574
    if-eqz v1, :cond_0

    .line 1576
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1598
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_0
    return-object v3

    .line 1580
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    throw v0

    .line 1585
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1587
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1589
    throw v0

    .line 1591
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsApParam"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1595
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsApParam"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 964
    const-string v3, ""

    .line 966
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 970
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    .line 971
    .local v2, paramString:[Ljava/lang/String;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsApVersion([Ljava/lang/String;)I

    move-result v1

    .line 972
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 974
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 999
    .end local v1           #error:I
    .end local v2           #paramString:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 978
    .restart local v1       #error:I
    .restart local v2       #paramString:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 981
    .end local v1           #error:I
    .end local v2           #paramString:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 983
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsApVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    throw v0

    .line 986
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 988
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsApVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 990
    throw v0

    .line 992
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 994
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsApVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 996
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsApVersion"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsOn()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v3, 0x0

    .line 284
    .local v3, value:Z
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 288
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Z

    .line 289
    .local v2, paramBoolean:[Z
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsOn([Z)I

    move-result v1

    .line 290
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 292
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 317
    .end local v1           #error:I
    .end local v2           #paramBoolean:[Z
    :cond_0
    :goto_0
    return v3

    .line 296
    .restart local v1       #error:I
    .restart local v2       #paramBoolean:[Z
    :cond_1
    const/4 v4, 0x0

    aget-boolean v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 299
    .end local v1           #error:I
    .end local v2           #paramBoolean:[Z
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsOn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    throw v0

    .line 304
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsOn"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 308
    throw v0

    .line 310
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsOn"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1019
    const-string v3, ""

    .line 1021
    .local v3, version:Ljava/lang/String;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 1025
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    .line 1026
    .local v2, paramString:[Ljava/lang/String;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getDsVersion([Ljava/lang/String;)I

    move-result v1

    .line 1027
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 1029
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1054
    .end local v1           #error:I
    .end local v2           #paramString:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 1033
    .restart local v1       #error:I
    .restart local v2       #paramString:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1036
    .end local v1           #error:I
    .end local v2           #paramString:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getDsVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    throw v0

    .line 1041
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1043
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getDsVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1045
    throw v0

    .line 1047
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1049
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getDsVersion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getDsVersion"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getGeq(II)[F
    .locals 6
    .parameter "profile"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v2, 0x0

    .line 1453
    .local v2, value:[F
    if-ltz p1, :cond_0

    const/4 v3, 0x5

    if-le p1, v3, :cond_1

    .line 1455
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid profile"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1457
    :cond_1
    if-ltz p2, :cond_2

    const/4 v3, 0x3

    if-le p2, v3, :cond_3

    .line 1459
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid preset"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1462
    :cond_3
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_4

    .line 1466
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v3

    new-array v2, v3, [F

    .line 1467
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, p1, p2, v2}, Landroid/dolby/IDs;->getGeq(II[F)I

    move-result v1

    .line 1468
    .local v1, error:I
    if-eqz v1, :cond_4

    .line 1470
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1491
    .end local v1           #error:I
    :cond_4
    return-object v2

    .line 1473
    :catch_0
    move-exception v0

    .line 1475
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DsClient"

    const-string v4, "RemoteException in getGeq"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    throw v0

    .line 1478
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1480
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getGeq"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1482
    throw v0

    .line 1484
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1486
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getGeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1488
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getGeq"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getIeqPreset(I)I
    .locals 7
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1198
    const/4 v3, 0x0

    .line 1200
    .local v3, value:I
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 1202
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1205
    :cond_1
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_2

    .line 1209
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1210
    .local v2, paramInt:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getIeqPreset(I[I)I

    move-result v1

    .line 1211
    .local v1, error:I
    if-eqz v1, :cond_3

    .line 1213
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1238
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_2
    :goto_0
    return v3

    .line 1217
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_3
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1220
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getIeqPreset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    throw v0

    .line 1225
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1227
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getIeqPreset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1229
    throw v0

    .line 1231
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1233
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getIeqPreset"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1235
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getIeqPreset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProfileCount()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 389
    const/4 v3, 0x0

    .line 390
    .local v3, value:I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 394
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 395
    .local v2, paramInt:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getProfileCount([I)I

    move-result v1

    .line 396
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 398
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 423
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_0
    :goto_0
    return v3

    .line 402
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 405
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getProfileCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    throw v0

    .line 410
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getProfileCount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 414
    throw v0

    .line 416
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 418
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getProfileCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getProfileCount"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, names:[Ljava/lang/String;
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 450
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v3, v2}, Landroid/dolby/IDs;->getProfileNames([Ljava/lang/String;)I

    move-result v1

    .line 451
    .local v1, error:I
    if-eqz v1, :cond_0

    .line 453
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 474
    .end local v1           #error:I
    :cond_0
    return-object v2

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DsClient"

    const-string v4, "RemoteException in getProfileNames"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    throw v0

    .line 461
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "DsClient"

    const-string v4, "NullPointerException in getProfileNames"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 465
    throw v0

    .line 467
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in getProfileNames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Exception in getProfileNames"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 7
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v3, 0x0

    .line 790
    .local v3, settings:Landroid/dolby/DsClientSettings;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_1

    .line 794
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Landroid/dolby/DsClientSettings;

    .line 795
    .local v2, paramSettings:[Landroid/dolby/DsClientSettings;
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1, v2}, Landroid/dolby/IDs;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v1

    .line 796
    .local v1, error:I
    if-eqz v1, :cond_0

    .line 798
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 800
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 820
    .end local v1           #error:I
    .end local v2           #paramSettings:[Landroid/dolby/DsClientSettings;
    :cond_1
    return-object v3

    .line 802
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getProfileSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    throw v0

    .line 807
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getProfileSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 811
    throw v0

    .line 813
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getProfileSetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getProfileSettings"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSelectedProfile()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 658
    const/4 v3, 0x0

    .line 660
    .local v3, value:I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 664
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 665
    .local v2, paramInt:[I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getSelectedProfile([I)I

    move-result v1

    .line 666
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 668
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 693
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_0
    :goto_0
    return v3

    .line 672
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_1
    const/4 v4, 0x0

    aget v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 675
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in getSelectedProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    throw v0

    .line 680
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException in getSelectedProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 684
    throw v0

    .line 686
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in getSelectedProfile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in getSelectedProfile"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isMonoSpeaker()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v3, 0x0

    .line 1076
    .local v3, ret_val:Z
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 1080
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Z

    .line 1081
    .local v2, paramBoolean:[Z
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, v2}, Landroid/dolby/IDs;->getMonoSpeaker([Z)I

    move-result v1

    .line 1083
    .local v1, error:I
    if-eqz v1, :cond_1

    .line 1085
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1110
    .end local v1           #error:I
    .end local v2           #paramBoolean:[Z
    :cond_0
    :goto_0
    return v3

    .line 1089
    .restart local v1       #error:I
    .restart local v2       #paramBoolean:[Z
    :cond_1
    const/4 v4, 0x0

    aget-boolean v3, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1092
    .end local v1           #error:I
    .end local v2           #paramBoolean:[Z
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in isMonoSpeaker"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    throw v0

    .line 1097
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException isMonoSpeaker"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1101
    throw v0

    .line 1103
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1105
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in isMonoSpeaker"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1107
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in isMonoSpeaker"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isProfileModified(I)Z
    .locals 7
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1260
    const/4 v3, 0x0

    .line 1262
    .local v3, value:Z
    if-ltz p1, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1264
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1267
    :cond_1
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_2

    .line 1271
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [I

    .line 1272
    .local v2, paramInt:[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v2}, Landroid/dolby/IDs;->getProfileModified(I[I)I

    move-result v1

    .line 1273
    .local v1, error:I
    if-eqz v1, :cond_3

    .line 1275
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1300
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_2
    :goto_0
    return v3

    .line 1279
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_3
    const/4 v6, 0x0

    aget v6, v2, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_4

    move v3, v4

    :goto_1
    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    .line 1282
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 1284
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in isProfileModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    throw v0

    .line 1287
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1289
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException isProfileModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1291
    throw v0

    .line 1293
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1295
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in isProfileModified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1297
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in isProfileModified"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isProfileNameModified(I)Z
    .locals 8
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1322
    const/4 v3, 0x0

    .line 1324
    .local v3, value:Z
    if-ltz p1, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1326
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1329
    :cond_1
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_2

    .line 1333
    const/4 v6, 0x1

    :try_start_0
    new-array v2, v6, [I

    .line 1334
    .local v2, paramInt:[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v2}, Landroid/dolby/IDs;->getProfileModified(I[I)I

    move-result v1

    .line 1335
    .local v1, error:I
    if-eqz v1, :cond_3

    .line 1337
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1362
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :cond_2
    :goto_0
    return v3

    .line 1341
    .restart local v1       #error:I
    .restart local v2       #paramInt:[I
    :cond_3
    const/4 v6, 0x0

    aget v6, v2, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v3, v4

    :goto_1
    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    .line 1344
    .end local v1           #error:I
    .end local v2           #paramInt:[I
    :catch_0
    move-exception v0

    .line 1346
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DsClient"

    const-string v5, "RemoteException in isProfileNameModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    throw v0

    .line 1349
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1351
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "DsClient"

    const-string v5, "NullPointerException isProfileNameModified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1353
    throw v0

    .line 1355
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1357
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in isProfileNameModified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1359
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception in isProfileNameModified"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public registerDsApParamEvents(Landroid/dolby/IDsApParamEvents;)V
    .locals 4
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    .line 1621
    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->registerDsApParamEvents(I)V

    .line 1622
    iput-object p1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1646
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .line 1626
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DsClient"

    const-string v2, "RemoteException in registerDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    throw v0

    .line 1629
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1631
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "DsClient"

    const-string v2, "NullPointerException in registerDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1633
    throw v0

    .line 1635
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1637
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in registerDsApParamEvents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1639
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerDsApParamEvents"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1644
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "registerDsApParamEvents failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerVisualizer(Landroid/dolby/IDsVisualizerEvents;)V
    .locals 4
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_3

    .line 1709
    :try_start_0
    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    if-nez v1, :cond_0

    .line 1711
    const-string v1, "DsClient"

    const-string v2, "graphic equalizer band count NOT initialized yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1724
    :catch_0
    move-exception v0

    .line 1726
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DsClient"

    const-string v2, "RemoteException in registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    throw v0

    .line 1716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    if-nez v1, :cond_1

    .line 1717
    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    .line 1718
    :cond_1
    iget-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    if-nez v1, :cond_2

    .line 1719
    iget v1, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    .line 1721
    :cond_2
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->registerVisualizerData(I)V

    .line 1722
    iput-object p1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1746
    return-void

    .line 1729
    :catch_1
    move-exception v0

    .line 1731
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "DsClient"

    const-string v2, "NullPointerException in registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1733
    throw v0

    .line 1735
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1737
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in registerVisualizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1739
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in registerVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1744
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "registerVisualizer failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetProfile(I)V
    .locals 6
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 843
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 845
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :cond_1
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_3

    .line 850
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 854
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 855
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->resetProfile(I)I

    move-result v1

    .line 856
    .local v1, error:I
    if-eqz v1, :cond_2

    .line 858
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 878
    :cond_2
    :try_start_1
    monitor-exit v3

    .line 880
    .end local v1           #error:I
    :cond_3
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 863
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in resetProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    throw v0

    .line 878
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 866
    :catch_1
    move-exception v0

    .line 868
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in resetProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 870
    throw v0

    .line 872
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in resetProfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 876
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in resetProfile"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setDsApParam(Ljava/lang/String;[I)V
    .locals 5
    .parameter "param"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1512
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_0

    .line 1516
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v3, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 1517
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setDsApParam(Ljava/lang/String;[I)I

    move-result v1

    .line 1518
    .local v1, error:I
    if-eqz v1, :cond_0

    .line 1520
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1541
    .end local v1           #error:I
    :cond_0
    return-void

    .line 1523
    :catch_0
    move-exception v0

    .line 1525
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v3, "RemoteException in setDsApParam"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    throw v0

    .line 1528
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "DsClient"

    const-string v3, "NullPointerException in setDsApParam"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1532
    throw v0

    .line 1534
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1536
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in setDsApParam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1538
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in setDsApParam"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDsOn(Z)V
    .locals 6
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_0

    .line 174
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 179
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setDsOn(Z)I

    move-result v1

    .line 180
    .local v1, error:I
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 199
    :try_start_1
    monitor-exit v3

    .line 201
    .end local v1           #error:I
    :cond_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setDsOn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    throw v0

    .line 199
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 187
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setDsOn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 191
    throw v0

    .line 193
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setDsOn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setDsOn"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setDsOnChecked(Z)I
    .locals 6
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v1, 0x1

    .line 232
    .local v1, error:I
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_0

    .line 234
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 239
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setDsOn(Z)I

    move-result v1

    .line 240
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 259
    :try_start_1
    monitor-exit v3

    .line 262
    :cond_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setDsOnChecked"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    throw v0

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 247
    :catch_1
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setDsOnChecked"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 251
    throw v0

    .line 253
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setDsOnChecked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setDsOnChecked"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setEventListener(Landroid/dolby/IDsClientEvents;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1816
    if-eqz p1, :cond_0

    .line 1818
    iput-object p1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 1820
    :cond_0
    return-void
.end method

.method public setGeq(II[F)V
    .locals 6
    .parameter "profile"
    .parameter "preset"
    .parameter "geqBandGains"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1388
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 1390
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1392
    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    .line 1394
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid preset"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1397
    :cond_3
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_5

    .line 1399
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 1403
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 1404
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2, p3}, Landroid/dolby/IDs;->setGeq(II[F)I

    move-result v1

    .line 1405
    .local v1, error:I
    if-eqz v1, :cond_4

    .line 1407
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1427
    :cond_4
    :try_start_1
    monitor-exit v3

    .line 1429
    .end local v1           #error:I
    :cond_5
    return-void

    .line 1410
    :catch_0
    move-exception v0

    .line 1412
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setGeq"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    throw v0

    .line 1427
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1415
    :catch_1
    move-exception v0

    .line 1417
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setGeq"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1419
    throw v0

    .line 1421
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1423
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setGeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1425
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setGeq"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setIeqPreset(II)V
    .locals 6
    .parameter "profile"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1136
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 1138
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1140
    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    .line 1142
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid preset"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1145
    :cond_3
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_5

    .line 1147
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 1151
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 1152
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setIeqPreset(II)I

    move-result v1

    .line 1153
    .local v1, error:I
    if-eqz v1, :cond_4

    .line 1155
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1175
    :cond_4
    :try_start_1
    monitor-exit v3

    .line 1177
    .end local v1           #error:I
    :cond_5
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1160
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setIeqPreset"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    throw v0

    .line 1175
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1163
    :catch_1
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setIeqPreset"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1167
    throw v0

    .line 1169
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1171
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setIeqPreset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1173
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setIeqPreset"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setNonPersistentMode(Z)V
    .locals 6
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, error:I
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_1

    .line 341
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 345
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setNonPersistentMode(Z)I

    move-result v1

    .line 346
    if-eqz v1, :cond_0

    .line 348
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 368
    :cond_0
    :try_start_1
    monitor-exit v3

    .line 370
    :cond_1
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setNonPersistentMode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    throw v0

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 356
    :catch_1
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setNonPersistentMode"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 360
    throw v0

    .line 362
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setNonPersistentMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setNonPersistentMode"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileName(ILjava/lang/String;)V
    .locals 6
    .parameter "profile"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 904
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 906
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 908
    :cond_1
    if-nez p2, :cond_2

    .line 910
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :cond_2
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_4

    .line 915
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 919
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 920
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setProfileName(ILjava/lang/String;)I

    move-result v1

    .line 921
    .local v1, error:I
    if-eqz v1, :cond_3

    .line 923
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 943
    :cond_3
    :try_start_1
    monitor-exit v3

    .line 945
    .end local v1           #error:I
    :cond_4
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 928
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setProfileName"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    throw v0

    .line 943
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 931
    :catch_1
    move-exception v0

    .line 933
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setProfileName"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 935
    throw v0

    .line 937
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 939
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setProfileName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 941
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setProfileName"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    .locals 6
    .parameter "profile"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 722
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 724
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 726
    :cond_1
    if-nez p2, :cond_2

    .line 728
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid settings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    :cond_2
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_4

    .line 733
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 737
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 738
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1, p2}, Landroid/dolby/IDs;->setProfileSettings(ILandroid/dolby/DsClientSettings;)I

    move-result v1

    .line 739
    .local v1, error:I
    if-eqz v1, :cond_3

    .line 741
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 761
    :cond_3
    :try_start_1
    monitor-exit v3

    .line 763
    .end local v1           #error:I
    :cond_4
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    throw v0

    .line 761
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 749
    :catch_1
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 753
    throw v0

    .line 755
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setProfileSettings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setProfileSettings"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setSelectedProfile(I)V
    .locals 6
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 602
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_1

    .line 604
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid profile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v2, :cond_3

    .line 609
    sget-object v3, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 613
    :try_start_0
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v2, v4}, Landroid/dolby/IDs;->setClientHandle(I)V

    .line 614
    iget-object v2, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v2, p1}, Landroid/dolby/IDs;->setSelectedProfile(I)I

    move-result v1

    .line 615
    .local v1, error:I
    if-eqz v1, :cond_2

    .line 617
    invoke-direct {p0, v1}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 637
    :cond_2
    :try_start_1
    monitor-exit v3

    .line 639
    .end local v1           #error:I
    :cond_3
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DsClient"

    const-string v4, "RemoteException in setSelectedProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    throw v0

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 625
    :catch_1
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "DsClient"

    const-string v4, "NullPointerException in setSelectedProfile"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 629
    throw v0

    .line 631
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in setSelectedProfile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Exception in setSelectedProfile"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1852
    const-string v1, "DsClient"

    const-string v2, "unBindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    .line 1859
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    .line 1860
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    .line 1861
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    .line 1863
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    :goto_0
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1871
    return-void

    .line 1865
    :catch_0
    move-exception v0

    .line 1867
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DsClient"

    const-string v2, "Remote Exception in unBindFromRemoteRunningService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDsApParamEvents()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1662
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    .line 1666
    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    .line 1667
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1691
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1671
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DsClient"

    const-string v2, "RemoteException in unregisterDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    throw v0

    .line 1674
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1676
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "DsClient"

    const-string v2, "NullPointerException in unregisterDsApParamEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1678
    throw v0

    .line 1680
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1682
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unregisterDsApParamEvents"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1684
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in unregisterDsApParamEvents"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1689
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unregisterDsApParamEvents failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterVisualizer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1758
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v1, :cond_0

    .line 1762
    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    .line 1763
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1787
    return-void

    .line 1765
    :catch_0
    move-exception v0

    .line 1767
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DsClient"

    const-string v2, "RemoteException in unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    throw v0

    .line 1770
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1772
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "DsClient"

    const-string v2, "NullPointerException in unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1774
    throw v0

    .line 1776
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1778
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unregisterVisualizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1780
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in unregisterVisualizer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1785
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unregisterVisualizer failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
