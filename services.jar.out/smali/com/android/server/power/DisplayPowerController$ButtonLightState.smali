.class Lcom/android/server/power/DisplayPowerController$ButtonLightState;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonLightState"
.end annotation


# static fields
.field private static final mDebugButtonLight:Z = true


# instance fields
.field public final BUTTON_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/power/DisplayPowerController$ButtonLightState;",
            ">;"
        }
    .end annotation
.end field

.field private Enabled:Z

.field private Mode:I

.field private final TAG:Ljava/lang/String;

.field private Timeout:J

.field private mButnHandler:Landroid/os/Handler;

.field private mButtonBrightness:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/LightsService$Light;)V
    .locals 4
    .parameter
    .parameter "mLight"

    .prologue
    const-wide/16 v2, 0x1770

    const/4 v1, -0x1

    .line 1406
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    const-string v0, "ButtonLightState"

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->TAG:Ljava/lang/String;

    .line 1397
    iput v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButtonBrightness:I

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    .line 1401
    iput v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    .line 1402
    iput-wide v2, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    .line 1404
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButnHandler:Landroid/os/Handler;

    .line 1411
    new-instance v0, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;

    const-string v1, "buttonBrightness"

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;-><init>(Lcom/android/server/power/DisplayPowerController$ButtonLightState;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->BUTTON_BRIGHTNESS:Landroid/util/IntProperty;

    .line 1407
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 1408
    #getter for: Lcom/android/server/power/DisplayPowerController;->mButtonLightModeTmp:I
    invoke-static {p1}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setMode(IJ)V

    .line 1409
    return-void
.end method

.method private getPreferredButtonBrightness()I
    .locals 1

    .prologue
    .line 1443
    const/16 v0, 0xff

    return v0
.end method

.method private setTargetLocked(I)V
    .locals 8
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x1770

    const-wide/16 v6, 0x0

    .line 1495
    if-gez p1, :cond_0

    .line 1496
    const/4 p1, 0x0

    .line 1499
    :cond_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1500
    const/4 p1, 0x0

    .line 1504
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setButtonBrightnessLocked(I)V

    .line 1506
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButnHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1507
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1508
    if-eqz p1, :cond_3

    .line 1510
    const-string v4, "ButtonLightState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Button light will be turned off after timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    :goto_0
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButnHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1514
    :cond_3
    return-void

    :cond_4
    move-wide v0, v2

    .line 1510
    goto :goto_0
.end method


# virtual methods
.method public getButtonBrightness()I
    .locals 1

    .prologue
    .line 1453
    monitor-enter p0

    .line 1454
    :try_start_0
    iget v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButtonBrightness:I

    monitor-exit p0

    return v0

    .line 1455
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleScreenOnOff(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1427
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->getPreferredButtonBrightness()I

    move-result v0

    .line 1428
    .local v0, brightness:I
    :goto_0
    monitor-enter p0

    .line 1429
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1430
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setTargetLocked(I)V

    .line 1431
    :cond_0
    monitor-exit p0

    .line 1432
    return-void

    .line 1427
    .end local v0           #brightness:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1431
    .restart local v0       #brightness:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 1489
    monitor-enter p0

    .line 1490
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    monitor-exit p0

    return v0

    .line 1491
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isScreenOn()Z
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1400(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyKey(II)V
    .locals 3
    .parameter "keyCode"
    .parameter "action"

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/power/DisplayPowerController$ButtonLight;->acceptKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1466
    const-string v0, "ButtonLightState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set button light because of key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->getPreferredButtonBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setTargetLocked(I)V

    .line 1469
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1551
    const-string v0, "ButtonLightState"

    const-string v1, "Turnning off button light"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    monitor-enter p0

    .line 1553
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setTargetLocked(I)V

    .line 1554
    monitor-exit p0

    .line 1555
    return-void

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setButtonBrightnessLocked(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1447
    const-string v0, "ButtonLightState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setButtonBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButtonBrightness:I

    .line 1449
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1450
    return-void
.end method

.method setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    if-ne v0, p1, :cond_0

    .line 1476
    monitor-exit p0

    .line 1480
    :goto_0
    return-void

    .line 1478
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Enabled:Z

    .line 1479
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setMode(IJ)V
    .locals 5
    .parameter "mode"
    .parameter "timeout"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    .line 1517
    const-string v1, "ButtonLightState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting button light mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    monitor-enter p0

    .line 1520
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/DisplayPowerController$ButtonLight;->isModeValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1521
    monitor-exit p0

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 1525
    .local v0, modeChanged:Z
    :cond_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    if-eq v1, v4, :cond_3

    .line 1526
    monitor-exit p0

    goto :goto_0

    .line 1536
    .end local v0           #modeChanged:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1528
    .restart local v0       #modeChanged:Z
    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    if-ne v1, v4, :cond_4

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_4

    .line 1529
    monitor-exit p0

    goto :goto_0

    .line 1532
    :cond_4
    iput p1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    .line 1533
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    if-ne v1, v4, :cond_5

    .line 1534
    iput-wide p2, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Timeout:J

    .line 1536
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1538
    monitor-enter p0

    .line 1539
    :try_start_2
    iget v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->Mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1540
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setTargetLocked(I)V

    .line 1545
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1543
    :cond_6
    const/16 v1, 0xff

    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setTargetLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
