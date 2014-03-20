.class Landroid/hardware/fmradio/FmTxEventListner$1;
.super Ljava/lang/Thread;
.source "FmTxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmTxEventListner;->startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmTxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmTxEventListner;ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 53
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting Tx Event listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, index:I
    const/4 v2, 0x0

    .line 59
    .local v2, freq:I
    :try_start_0
    const-string v4, "FMTxEventListner"

    const-string v5, "getBufferNative called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    iget-object v5, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    #getter for: Landroid/hardware/fmradio/FmTxEventListner;->buff:[B
    invoke-static {v5}, Landroid/hardware/fmradio/FmTxEventListner;->access$000(Landroid/hardware/fmradio/FmTxEventListner;)[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v0

    .line 62
    .local v0, eventCount:I
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event. Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    .line 65
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    #getter for: Landroid/hardware/fmradio/FmTxEventListner;->buff:[B
    invoke-static {v6}, Landroid/hardware/fmradio/FmTxEventListner;->access$000(Landroid/hardware/fmradio/FmTxEventListner;)[B

    move-result-object v6

    aget-byte v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    #getter for: Landroid/hardware/fmradio/FmTxEventListner;->buff:[B
    invoke-static {v4}, Landroid/hardware/fmradio/FmTxEventListner;->access$000(Landroid/hardware/fmradio/FmTxEventListner;)[B

    move-result-object v4

    aget-byte v4, v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 113
    const-string v4, "FMTxEventListner"

    const-string v5, "Unknown event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    :sswitch_0
    const-string v4, "FMTxEventListner"

    const-string v5, "Got RADIO_ENABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 72
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    .line 74
    const-string v4, "FMTxEventListner"

    const-string v5, "TxEvtList: CURRENT-STATE:FMTxStarting ---> NEW-STATE : FMTxOn"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvRadioEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 117
    .end local v0           #eventCount:I
    :catch_0
    move-exception v1

    .line 118
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FMTxEventListner"

    const-string v5, "RunningThread InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 80
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #eventCount:I
    :sswitch_1
    :try_start_1
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TUNE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v2

    .line 82
    if-lez v2, :cond_2

    .line 83
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4, v2}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvTuneStatusChange(I)V

    goto :goto_2

    .line 85
    :cond_2
    const-string v4, "FMTxEventListner"

    const-string v5, "get frqency cmd failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 88
    :sswitch_2
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDAT_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvRDSGroupsAvailable()V

    goto :goto_2

    .line 92
    :sswitch_3
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDONE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvContRDSGroupsComplete()V

    goto :goto_2

    .line 96
    :sswitch_4
    const-string v4, "FMTxEventListner"

    const-string v5, "Got RADIO_DISABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Landroid/hardware/fmradio/FmTransceiver;->getFMPowerState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 100
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/hardware/fmradio/FmTransceiver;->setFMPowerState(I)V

    .line 102
    const-string v4, "FMTxEventListner"

    const-string v5, "TxEvtList:CURRENT-STATE :FMTurningOff ---> NEW-STATE: FMOff"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v4, "/dev/radio0"

    invoke-static {v4}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 105
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvRadioDisabled()V

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_2

    .line 108
    :cond_3
    const-string v4, "FMTxEventListner"

    const-string v5, "Unexpected RADIO_DISABLED recvd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->FmTxEvRadioReset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 122
    .end local v0           #eventCount:I
    .end local v2           #freq:I
    .end local v3           #index:I
    :cond_4
    const-string v4, "FMTxEventListner"

    const-string v5, "Came out of the while loop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method
