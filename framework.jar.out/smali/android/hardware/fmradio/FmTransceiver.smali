.class public Landroid/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static FMState:I = 0x0

.field public static final FMState_Rx_Turned_On:I = 0x1

.field public static final FMState_Srch_InProg:I = 0x3

.field public static final FMState_Turned_Off:I = 0x0

.field public static final FMState_Tx_Turned_On:I = 0x2

.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x2

.field public static final FM_JAPAN_WIDE_BAND:I = 0x3

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_SET_NOTCH_FILTER:I = 0x8000028

.field protected static sFd:I = 0x0

.field public static final subPwrLevel_FMRx_Starting:I = 0x4

.field public static final subPwrLevel_FMTurning_Off:I = 0x6

.field public static final subPwrLevel_FMTx_Starting:I = 0x5

.field public static final subSrchLevel_ScanInProg:I = 0x1

.field public static final subSrchLevel_SeekInPrg:I = 0x0

.field public static final subSrchLevel_SrchAbort:I = 0x4

.field public static final subSrchLevel_SrchComplete:I = 0x3

.field public static final subSrchLevel_SrchListInProg:I = 0x2


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field private final V4L2_DEVICE:Ljava/lang/String;

.field protected mControl:Landroid/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

.field protected mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 130
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 139
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    .line 140
    const-string v0, "/dev/radio0"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->V4L2_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public static getFMPowerState()I
    .locals 1

    .prologue
    .line 632
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    return v0
.end method

.method static release(Ljava/lang/String;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 225
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v0, :cond_0

    .line 227
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 228
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 229
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_0
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setFMPowerState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 610
    sput p0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    .line 611
    return-void
.end method

.method public static setRDSGrpMask(I)Z
    .locals 3
    .parameter "mask"

    .prologue
    .line 637
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v2, 0x8000006

    invoke-static {v1, v2, p0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 639
    .local v0, re:I
    if-nez v0, :cond_0

    .line 640
    const/4 v1, 0x1

    .line 642
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, bStatus:Z
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-gtz v1, :cond_1

    .line 174
    const-string v1, "/dev/radio0"

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 176
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v1, :cond_0

    .line 177
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already Opened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public configure(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "configSettings"

    .prologue
    .line 465
    const/4 v1, 0x1

    .line 466
    .local v1, status:Z
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 467
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 469
    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 470
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;I)Z
    .locals 5
    .parameter "configSettings"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 405
    const-string v2, "/dev/radio0"

    invoke-virtual {p0, v2}, Landroid/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    const-string v2, "FmTransceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turning on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 411
    const-string v2, "FmTransceiver"

    const-string v3, "Calling fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    .line 413
    .local v0, status:Z
    if-nez v0, :cond_0

    .line 414
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 416
    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    goto :goto_0
.end method

.method public getInternalAntenna()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 557
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 559
    .local v0, re:I
    if-ne v0, v1, :cond_0

    .line 562
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 272
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 273
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 276
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerTransmitClient(Landroid/hardware/fmradio/FmTransmitterCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 339
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmTxEventListner;->startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V

    .line 340
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnalogMode(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 534
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3, p1}, Landroid/hardware/fmradio/FmRxControls;->setAudioPath(IZ)I

    move-result v0

    .line 535
    .local v0, re:I
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setAnalogModeNative(Z)I

    move-result v0

    .line 536
    if-ne v0, v1, :cond_0

    .line 538
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalAntenna(Z)Z
    .locals 4
    .parameter "intAnt"

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .line 585
    const/4 v0, 0x1

    .line 590
    .local v0, iAntenna:I
    :goto_0
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 592
    .local v1, re:I
    if-nez v1, :cond_1

    .line 593
    const/4 v2, 0x1

    .line 595
    :goto_1
    return v2

    .line 587
    .end local v0           #iAntenna:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #iAntenna:I
    goto :goto_0

    .line 595
    .restart local v1       #re:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNotchFilter(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 521
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    const v1, 0x8000028

    invoke-static {v0, v1, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(IIZ)I

    .line 522
    return-void
.end method

.method public setStation(I)Z
    .locals 3
    .parameter "frequencyKHz"

    .prologue
    .line 496
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 497
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->setStation(I)I

    move-result v0

    .line 498
    .local v0, ret:I
    if-gez v0, :cond_0

    .line 500
    const/4 v1, 0x0

    .line 504
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmTxEventListner;->stopListener()V

    .line 366
    const/4 v0, 0x1

    return v0
.end method
