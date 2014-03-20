.class Landroid/hardware/fmradio/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# static fields
.field static final FM_ANALOG_PATH:I = 0x1

.field static final FM_DIGITAL_PATH:I = 0x0

.field static final FREQ_MUL:I = 0x3e8

.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmRxControls"

.field private static final V4L2_CID_AUDIO_MUTE:I = 0x980909

.field private static final V4L2_CID_BASE:I = 0x980900

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_SINR:I = 0x800002c

.field private static final V4L2_CID_PRIVATE_SPUR_FREQ:I = 0x8000031

.field private static final V4L2_CID_PRIVATE_SPUR_FREQ_RMSSI:I = 0x8000032

.field private static final V4L2_CID_PRIVATE_SPUR_SELECTION:I = 0x8000033

.field private static final V4L2_CID_PRIVATE_TAVARUA_AF_JUMP:I = 0x800001b

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_HLSI:I = 0x800001d

.field private static final V4L2_CID_PRIVATE_TAVARUA_INTDET:I = 0x8000019

.field private static final V4L2_CID_PRIVATE_TAVARUA_IOVERC:I = 0x8000018

.field private static final V4L2_CID_PRIVATE_TAVARUA_LP_MODE:I = 0x8000011

.field private static final V4L2_CID_PRIVATE_TAVARUA_MPX_DCC:I = 0x800001a

.field private static final V4L2_CID_PRIVATE_TAVARUA_OFF_CHANNEL_THRESHOLD:I = 0x800002e

.field private static final V4L2_CID_PRIVATE_TAVARUA_ON_CHANNEL_THRESHOLD:I = 0x800002d

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_RSSI_DELTA:I = 0x800001c

.field private static final V4L2_CID_PRIVATE_TAVARUA_SCANDWELL:I = 0x8000002

.field private static final V4L2_CID_PRIVATE_TAVARUA_SET_AUDIO_PATH:I = 0x8000029

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field private static final V4L2_CID_PRIVATE_TAVARUA_SINR_SAMPLES:I = 0x8000030

.field private static final V4L2_CID_PRIVATE_TAVARUA_SINR_THRESHOLD:I = 0x800002f

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHMODE:I = 0x8000001

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHON:I = 0x8000003

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_CNT:I = 0x800000b

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PI:I = 0x800000a

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PTY:I = 0x8000009

.field private static final V4L2_CID_PRIVATE_TAVARUA_STATE:I = 0x8000004

.field private static final V4L2_CID_PRIVATE_TAVARUA_TRANSMIT_MODE:I = 0x8000005

.field private static final V4L2_CTRL_CLASS_USER:I = 0x980000


# instance fields
.field private mFreq:I

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:I

.field private mSrchDir:I

.field private mSrchListMode:I

.field private mSrchMode:I

.field private mStateMute:Z

.field private mStateStereo:Z

.field private sOffData:I

.field private sOnData:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IntDet(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 147
    const v1, 0x8000019

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 148
    .local v0, intdet:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOVERC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method public IovercControl(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 138
    const v1, 0x8000018

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 139
    .local v0, ioverc:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOVERC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0
.end method

.method public Mpx_Dcc(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 157
    const v1, 0x800001a

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 158
    .local v0, mpx_dcc:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPX_DCC value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0
.end method

.method public cancelSearch(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 488
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->cancelSearchNative(I)I

    .line 489
    return-void
.end method

.method public configureSpurTable(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 549
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->configureSpurTable(I)I

    move-result v0

    return v0
.end method

.method public fmOff(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 118
    const v0, 0x8000004

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 119
    return-void
.end method

.method public fmOn(II)V
    .locals 3
    .parameter "fd"
    .parameter "device"

    .prologue
    .line 107
    const v1, 0x8000004

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/hardware/fmradio/FmRxControls;->setAudioPath(IZ)I

    .line 109
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->SetCalibrationNative(I)I

    move-result v0

    .line 110
    .local v0, re:I
    if-eqz v0, :cond_0

    .line 111
    const-string v1, "FmRxControls"

    const-string v2, "Calibration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    return v0
.end method

.method public getOffChannelThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 206
    const v0, 0x800002e

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getOnChannelThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 198
    const v0, 0x800002d

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getPwrMode(I)I
    .locals 2
    .parameter "fd"

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, re:I
    const v1, 0x8000011

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 514
    return v0
.end method

.method public getRmssiDelta(I)I
    .locals 2
    .parameter "fd"

    .prologue
    .line 252
    const v1, 0x800001c

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 253
    .local v0, rmssiDel:I
    return v0
.end method

.method public getSINR(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 310
    const v0, 0x800002c

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getSINRThreshold(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 236
    const v0, 0x800002f

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getSINRsamples(I)I
    .locals 1
    .parameter "fd"

    .prologue
    .line 244
    const v0, 0x8000030

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    return v0
.end method

.method public getTunedFrequency(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 293
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 294
    .local v0, frequency:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTunedFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v0
.end method

.method public muteControl(IZ)V
    .locals 2
    .parameter "fd"
    .parameter "on"

    .prologue
    const v1, 0x980909

    .line 125
    if-eqz p2, :cond_0

    .line 127
    const/4 v0, 0x3

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public searchRdsStations(IIIII)V
    .locals 0
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 479
    return-void
.end method

.method public searchStationList(IIIII)I
    .locals 2
    .parameter "fd"
    .parameter "mode"
    .parameter "preset_num"
    .parameter "dir"
    .parameter "pty"

    .prologue
    .line 324
    const v1, 0x8000001

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 325
    .local v0, re:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 350
    :goto_0
    return v1

    .line 330
    :cond_0
    const v1, 0x800000b

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 331
    if-eqz v0, :cond_1

    move v1, v0

    .line 332
    goto :goto_0

    .line 336
    :cond_1
    if-lez p5, :cond_2

    .line 337
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 339
    :cond_2
    if-eqz v0, :cond_3

    move v1, v0

    .line 340
    goto :goto_0

    .line 345
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 346
    if-eqz v0, :cond_4

    move v1, v0

    .line 347
    goto :goto_0

    .line 350
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchStations(IIIIII)I
    .locals 6
    .parameter "fd"
    .parameter "mode"
    .parameter "dwell"
    .parameter "dir"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const v5, 0x8000001

    .line 422
    const/4 v0, 0x0

    .line 425
    .local v0, re:I
    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dwell is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PTY is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v2, "FmRxControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p1, v5, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    const-string v2, "FmRxControls"

    const-string/jumbo v3, "setting of search mode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 460
    .end local v0           #re:I
    .local v1, re:I
    :goto_0
    return v1

    .line 436
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_0
    const v2, 0x8000002

    invoke-static {p1, v2, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 437
    if-eqz v0, :cond_1

    .line 438
    const-string v2, "FmRxControls"

    const-string/jumbo v3, "setting of scan dwell time failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 439
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 441
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_1
    if-eqz p5, :cond_2

    .line 443
    const v2, 0x8000009

    invoke-static {p1, v2, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 444
    if-eqz v0, :cond_2

    .line 445
    const-string v2, "FmRxControls"

    const-string/jumbo v3, "setting of PTY failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 446
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 450
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_2
    if-eqz p6, :cond_3

    .line 452
    const v2, 0x800000a

    invoke-static {p1, v2, p6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 453
    if-eqz v0, :cond_3

    .line 454
    const-string v2, "FmRxControls"

    const-string/jumbo v3, "setting of PI failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 455
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 459
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    move v1, v0

    .line 460
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0
.end method

.method public setAudioPath(IZ)I
    .locals 3
    .parameter "fd"
    .parameter "value"

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 275
    .local v0, mode:I
    :goto_0
    const v2, 0x8000029

    invoke-static {p1, v2, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 276
    .local v1, re:I
    return v1

    .line 274
    .end local v0           #mode:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #mode:I
    goto :goto_0
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 303
    iput p1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    .line 304
    return-void
.end method

.method public setHiLoInj(II)I
    .locals 2
    .parameter "fd"
    .parameter "inj"

    .prologue
    .line 167
    const v1, 0x800001d

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 168
    .local v0, re:I
    return v0
.end method

.method public setLowPwrMode(IZ)I
    .locals 3
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    const v2, 0x8000011

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, re:I
    if-eqz p2, :cond_0

    .line 497
    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 503
    :goto_0
    return v0

    .line 500
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_0
.end method

.method public setOffChannelThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 187
    const v1, 0x800002e

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 188
    .local v0, re:I
    if-gez v0, :cond_0

    .line 189
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set Off channel Threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return v0
.end method

.method public setOnChannelThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 176
    const v1, 0x800002d

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 177
    .local v0, re:I
    if-gez v0, :cond_0

    .line 178
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set On channel threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return v0
.end method

.method public setRmssiDel(II)I
    .locals 2
    .parameter "fd"
    .parameter "delta"

    .prologue
    .line 261
    const v1, 0x800001c

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 262
    .local v0, re:I
    return v0
.end method

.method public setSINRThreshold(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 214
    const v1, 0x800002f

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 215
    .local v0, re:I
    if-gez v0, :cond_0

    .line 216
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set SINR threshold data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return v0
.end method

.method public setSINRsamples(II)I
    .locals 3
    .parameter "fd"
    .parameter "sBuff"

    .prologue
    .line 225
    const v1, 0x8000030

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 226
    .local v0, re:I
    if-gez v0, :cond_0

    .line 227
    const-string v1, "FmRxControls"

    const-string v2, "Failed to set SINR samples "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return v0
.end method

.method public setStation(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 283
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Tune Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFreqNative(II)I

    move-result v0

    .line 285
    .local v0, ret:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v0
.end method

.method public stationList(I)[I
    .locals 17
    .parameter "fd"

    .prologue
    .line 358
    const/4 v2, 0x0

    .line 359
    .local v2, freq:I
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .line 360
    .local v5, j:I
    const/4 v10, 0x0

    .line 361
    .local v10, station_num:I
    const/4 v7, 0x0

    .line 363
    .local v7, real_freq:F
    const/16 v13, 0x64

    new-array v8, v13, [B

    .line 364
    .local v8, sList:[B
    const/4 v11, 0x0

    .line 365
    .local v11, tmpFreqByte1:I
    const/4 v12, 0x0

    .line 369
    .local v12, tmpFreqByte2:I
    invoke-static/range {p1 .. p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-float v6, v13

    .line 370
    .local v6, lowBand:F
    invoke-static/range {p1 .. p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getUpperBandNative(I)I

    move-result v13

    int-to-double v13, v13

    const-wide v15, 0x408f400000000000L

    div-double/2addr v13, v15

    double-to-float v3, v13

    .line 372
    .local v3, highBand:F
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lowBand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "highBand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-static {v0, v8, v13}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 377
    const/4 v13, 0x0

    aget-byte v13, v8, v13

    if-lez v13, :cond_0

    .line 378
    const/4 v13, 0x0

    aget-byte v10, v8, v13

    .line 380
    :cond_0
    add-int/lit8 v13, v10, 0x1

    new-array v9, v13, [I

    .line 381
    .local v9, stationList:[I
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "station_num: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v10, :cond_3

    .line 384
    const/4 v2, 0x0

    .line 385
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Byte1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v4, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-byte v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Byte2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v4, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-byte v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v8, v13

    and-int/lit16 v11, v13, 0xff

    .line 388
    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, v8, v13

    and-int/lit16 v12, v13, 0xff

    .line 389
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " tmpFreqByte1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " tmpFreqByte2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    and-int/lit8 v13, v11, 0x3

    shl-int/lit8 v2, v13, 0x8

    .line 392
    or-int/2addr v2, v12

    .line 393
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " freq: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    mul-int/lit8 v13, v2, 0x32

    int-to-float v13, v13

    const/high16 v14, 0x447a

    mul-float/2addr v14, v6

    add-float v7, v13, v14

    .line 395
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " real_freq: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/high16 v13, 0x447a

    mul-float/2addr v13, v6

    cmpg-float v13, v7, v13

    if-ltz v13, :cond_1

    const/high16 v13, 0x447a

    mul-float/2addr v13, v3

    cmpl-float v13, v7, v13

    if-lez v13, :cond_2

    .line 397
    :cond_1
    const-string v13, "FmRxControls"

    const-string v14, "Frequency out of band limits"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 400
    :cond_2
    float-to-int v13, v7

    aput v13, v9, v5

    .line 401
    const-string v13, "FmRxControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " stationList: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v9, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 408
    :cond_3
    const/4 v13, 0x0

    :try_start_0
    aput v13, v9, v10
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_2
    return-object v9

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v13, "FmRxControls"

    const-string v14, "ArrayIndexOutOfBoundsException !!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public stereoControl(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "stereo"

    .prologue
    .line 466
    if-eqz p2, :cond_0

    .line 467
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    goto :goto_0
.end method

.method public updateSpurTable(IIIZ)I
    .locals 4
    .parameter "fd"
    .parameter "freq"
    .parameter "rmssi"
    .parameter "enable"

    .prologue
    const v3, 0x8000033

    .line 522
    const v2, 0x8000031

    invoke-static {p1, v2, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 523
    .local v0, re:I
    if-gez v0, :cond_0

    .line 524
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program the Spur frequency value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 545
    .end local v0           #re:I
    .local v1, re:I
    :goto_0
    return v1

    .line 528
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_0
    const v2, 0x8000032

    invoke-static {p1, v2, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 529
    if-gez v0, :cond_1

    .line 530
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program the RMSSI level of the Spur frequency"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 531
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 534
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_1
    if-eqz p4, :cond_2

    .line 535
    const/4 v2, 0x1

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 540
    :goto_1
    if-gez v0, :cond_3

    .line 541
    const-string v2, "FmRxControls"

    const-string v3, "Failed to program Spur selection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 542
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0

    .line 538
    .end local v1           #re:I
    .restart local v0       #re:I
    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v3, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v0

    .line 545
    .end local v0           #re:I
    .restart local v1       #re:I
    goto :goto_0
.end method
