.class public final Lcom/android/internal/telephony/cdma/CdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "CdmaCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final MAX_CONNECTIONS:I = 0x2

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field hangupPendingMO:Z

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

.field phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

.field state:Lcom/android/internal/telephony/PhoneConstants$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 62
    new-array v0, v1, [Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;-><init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 86
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 99
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 105
    return-void
.end method

.method private checkAndEnableDataCallAfterEmergencyCallDropped()V
    .locals 3

    .prologue
    .line 1117
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_0

    .line 1118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1119
    const-string/jumbo v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, inEcm:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndEnableDataCallAfterEmergencyCallDropped,inEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1123
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1128
    .end local v0           #inEcm:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dc"
    .parameter "i"

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1138
    .local v0, newRinging:Lcom/android/internal/telephony/Connection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v2, v1, p2

    .line 1140
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_1

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v0, v1, p2

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify new ring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1160
    :cond_0
    :goto_0
    return-object v0

    .line 1147
    :cond_1
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phantom call appeared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1154
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v1, v2, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dialString"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 2
    .parameter "dialString"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    const-string v0, "disableDataCallInEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1110
    :cond_0
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 186
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 189
    .local v0, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->fakeHoldBeforeDial()V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 930
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 933
    packed-switch p1, :pswitch_data_0

    .line 943
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 935
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 937
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 939
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 941
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 933
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "cw"

    .prologue
    const/4 v1, 0x1

    .line 966
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 972
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 973
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 976
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 977
    return-void
.end method

.method private handleEcmTimer(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleTimerInEmergencyCallbackMode(I)V

    .line 1093
    packed-switch p1, :pswitch_data_0

    .line 1097
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEcmTimer, unsupported action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_0
    return-void

    .line 1094
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1095
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    goto :goto_0

    .line 1093
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 951
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    .line 411
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 957
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 428
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    .line 445
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 450
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 461
    .local v0, oldState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_5

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 478
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update phone state, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    .line 483
    :cond_1
    return-void

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 465
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 467
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 473
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 288
    const-string/jumbo v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 306
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 299
    .local v0, cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 300
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 301
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 304
    .end local v0           #cwConn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 365
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 366
    .local v2, serviceState:I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, disableCall:Ljava/lang/String;
    if-eq v2, v9, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v4

    .line 377
    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_1

    .line 378
    const-string v6, "canDial is false\n((serviceState=%d) != ServiceState.STATE_POWER_OFF)::=%s\n&& pendingMO == null::=%s\n&& !ringingCall.isRinging()::=%s\n&& !disableCall.equals(\"true\")::=%s\n&& (!foregroundCall.getState().isAlive()::=%s\n   || foregroundCall.getState() == CdmaCall.State.ACTIVE::=%s\n   ||!backgroundCall.getState().isAlive())::=%s)"

    const/16 v3, 0x8

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eq v2, v9, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v9

    const/4 v8, 0x4

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_8

    move v3, v4

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v8

    if-nez v8, :cond_9

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 395
    :cond_1
    return v1

    .end local v1           #ret:Z
    :cond_2
    move v1, v5

    .line 369
    goto/16 :goto_0

    .restart local v1       #ret:Z
    :cond_3
    move v3, v5

    .line 378
    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    move v4, v5

    goto :goto_7
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 400
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 352
    return-void
.end method

.method conference()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    .line 339
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_0
    const-string/jumbo v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 207
    .local v2, isPhoneInEcmMode:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 211
    .local v1, isEmergencyCall:Z
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 260
    :goto_0
    return-object v3

    .line 227
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 229
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 231
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 234
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    .line 257
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 258
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 247
    if-eqz v2, :cond_5

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 248
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 250
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 251
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    .line 253
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 108
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 109
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 110
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 111
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallWaitingInfo(Landroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 114
    .local v1, c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 118
    const-string v5, "CDMA"

    const-string v6, "Posting connection disconnect due to LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CDMA"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v1           #c:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 129
    const-string v5, "CDMA"

    const-string v6, "Posting disconnect to pendingMO due to LOST_SIGNAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 138
    return-void

    .line 132
    :catch_1
    move-exception v2

    .line 133
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "CDMA"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1179
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1183
    const-string v1, " connections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " voiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callWaitingRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "droppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1190
    const-string v1, " droppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ringingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " foregroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallInEcm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsInEmergencyCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " desiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pendingCallClirMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsEcmTimerCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 344
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "CDMA"

    const-string v1, "CdmaCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)Lcom/android/internal/telephony/cdma/CdmaConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 911
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 912
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 913
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 914
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 919
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_1
    return-object v0

    .line 912
    .restart local v0       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 984
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_1

    .line 985
    const-string v5, "CDMA"

    const-string v6, "Ignoring events received on inactive CdmaPhone"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 988
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1083
    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "unexpected event not handled"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 990
    :pswitch_2
    const-string v5, "CDMA"

    const-string v6, "Event EVENT_POLL_CALLS_RESULT Received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 993
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    if-ne p1, v5, :cond_0

    .line 996
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->needsPoll:Z

    .line 997
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 998
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1004
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    goto :goto_0

    .line 1015
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1017
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->operationComplete()V

    .line 1019
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1022
    const/16 v1, 0x10

    .line 1023
    .local v1, causeCode:I
    const-string v5, "CDMA"

    const-string v6, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1030
    .local v4, s:I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 1032
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1034
    .local v2, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onRemoteDisconnect(I)V

    .line 1030
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1026
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v3           #i:I
    .end local v4           #s:I
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v1, v5, v9

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 1037
    .restart local v3       #i:I
    .restart local v4       #s:I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 1039
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 1040
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1045
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v3           #i:I
    .end local v4           #s:I
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsWhenSafe()V

    goto :goto_0

    .line 1049
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioAvailable()V

    goto :goto_0

    .line 1053
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleRadioNotAvailable()V

    goto :goto_0

    .line 1058
    :pswitch_8
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    if-eqz v5, :cond_4

    .line 1059
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallClirMode:I

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    .line 1060
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 1062
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1066
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1067
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1068
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleCallWaitingInfo(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V

    .line 1069
    const-string v5, "CDMA"

    const-string v6, "Event EVENT_CALL_WAITING_INFO_CDMA Received"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1074
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1075
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1077
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 1078
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    goto/16 :goto_0

    .line 988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 22
    .parameter "ar"

    .prologue
    .line 491
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 492
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/List;

    .line 504
    .local v16, polledCalls:Ljava/util/List;
    :goto_0
    const/4 v15, 0x0

    .line 505
    .local v15, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v11, 0x0

    .line 507
    .local v11, hasNonHangupStateChanged:Z
    const/4 v14, 0x0

    .line 508
    .local v14, needsPollDelay:Z
    const/16 v17, 0x0

    .line 510
    .local v17, unknownConnectionAppeared:Z
    const/4 v12, 0x0

    .local v12, i:I
    const/4 v7, 0x0

    .local v7, curDC:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    .line 511
    .local v9, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_16

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    aget-object v5, v18, v12

    .line 513
    .local v5, conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    const/4 v8, 0x0

    .line 516
    .local v8, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v7, v9, :cond_0

    .line 517
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v8, Lcom/android/internal/telephony/DriverCall;

    .line 519
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v0, v8, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v18, v0

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 520
    add-int/lit8 v7, v7, 0x1

    .line 529
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 537
    const-string v18, "New call with same index. Dropping old call"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v5, 0x0

    .line 542
    :cond_1
    if-nez v5, :cond_b

    if-eqz v8, :cond_b

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v19, v0

    aput-object v19, v18, v12

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v12, v0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 552
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 556
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 558
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v18, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 563
    :cond_2
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v7           #curDC:I
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v9           #dcSize:I
    .end local v11           #hasNonHangupStateChanged:Z
    .end local v12           #i:I
    .end local v14           #needsPollDelay:Z
    .end local v15           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v16           #polledCalls:Ljava/util/List;
    .end local v17           #unknownConnectionAppeared:Z
    :cond_3
    :goto_3
    return-void

    .line 493
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 496
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .restart local v16       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 500
    .end local v16           #polledCalls:Ljava/util/List;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 522
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .restart local v7       #curDC:I
    .restart local v8       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v9       #dcSize:I
    .restart local v11       #hasNonHangupStateChanged:Z
    .restart local v12       #i:I
    .restart local v14       #needsPollDelay:Z
    .restart local v15       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v16       #polledCalls:Ljava/util/List;
    .restart local v17       #unknownConnectionAppeared:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 566
    :catch_0
    move-exception v10

    .line 567
    .local v10, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v18, "CDMA"

    const-string/jumbo v19, "unexpected error on hangup"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 576
    .end local v10           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "pendingMo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", dc="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v15

    .line 580
    if-nez v15, :cond_8

    .line 581
    const/16 v17, 0x1

    .line 583
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 585
    :cond_9
    const/4 v11, 0x1

    .line 511
    :cond_a
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 586
    :cond_b
    if-eqz v5, :cond_10

    if-nez v8, :cond_10

    .line 587
    if-eqz v9, :cond_d

    .line 591
    const-string v18, "conn != null, dc == null. Still have connections in the call list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsEcmTimerCanceled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v18, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleEcmTimer(I)V

    .line 623
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->connections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v19, v18, v12

    goto :goto_4

    .line 598
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 599
    .local v6, count:I
    const/4 v13, 0x0

    .local v13, n:I
    :goto_6
    if-ge v13, v6, :cond_e

    .line 601
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding fgCall cn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to droppedDuringPoll"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 603
    .local v4, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 605
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 608
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v6, :cond_f

    .line 610
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adding rgCall cn "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to droppedDuringPoll"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 612
    .restart local v4       #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 614
    .end local v4           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/CdmaCall;->setGeneric(Z)V

    goto/16 :goto_5

    .line 628
    .end local v6           #count:I
    .end local v13           #n:I
    :cond_10
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    .line 630
    iget-boolean v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    move/from16 v18, v0

    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 631
    iget-boolean v0, v8, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkMtFindNewRinging(Lcom/android/internal/telephony/DriverCall;I)Lcom/android/internal/telephony/Connection;

    move-result-object v15

    .line 636
    if-nez v15, :cond_11

    .line 637
    const/16 v17, 0x1

    .line 639
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->checkAndEnableDataCallAfterEmergencyCallDropped()V

    goto/16 :goto_4

    .line 645
    :cond_12
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in RIL, Phantom call appeared "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 649
    :cond_13
    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    .line 650
    .local v3, changed:Z
    if-nez v11, :cond_14

    if-eqz v3, :cond_15

    :cond_14
    const/4 v11, 0x1

    :goto_8
    goto/16 :goto_4

    :cond_15
    const/4 v11, 0x0

    goto :goto_8

    .line 677
    .end local v3           #changed:Z
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v8           #dc:Lcom/android/internal/telephony/DriverCall;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    .line 678
    const-string v18, "CDMA"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 683
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 684
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    .line 685
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingCallInEcm:Z

    .line 689
    :cond_17
    if-eqz v15, :cond_18

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 696
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v12, v18, -0x1

    :goto_9
    if-ltz v12, :cond_1d

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 699
    .restart local v5       #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming()Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getConnectTime()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_1b

    .line 702
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 703
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 709
    .local v2, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "missed/rejected call, conn.cause="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 710
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setting cause to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 713
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 696
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_19
    :goto_b
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 705
    :cond_1a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .restart local v2       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    goto :goto_a

    .line 714
    .end local v2           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1b
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 717
    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 718
    :cond_1c
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 720
    sget-object v18, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 725
    .end local v5           #conn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1e

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 730
    :cond_1e
    if-eqz v14, :cond_1f

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pollCallsAfterDelay()V

    .line 739
    :cond_1f
    if-nez v15, :cond_20

    if-eqz v11, :cond_21

    .line 740
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->internalClearDisconnected()V

    .line 743
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 745
    if-eqz v17, :cond_22

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyUnknownConnection()V

    .line 749
    :cond_22
    if-nez v11, :cond_23

    if-eqz v15, :cond_3

    .line 750
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_1

    .line 841
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 866
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->onHangupLocal()V

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    .line 868
    return-void

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_3

    .line 844
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne p1, v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 855
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    goto :goto_0

    .line 859
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    .line 862
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 760
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->pendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-ne p1, v1, :cond_1

    .line 768
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 769
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangupPendingMO:Z

    .line 798
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 799
    :goto_1
    return-void

    .line 770
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 783
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onLocalDisconnect()V

    .line 784
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->updatePhoneState()V

    .line 785
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 789
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 793
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 898
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 899
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 900
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 901
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 903
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 904
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/cdma/CdmaCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 884
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 885
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 886
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CdmaCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 887
    .local v0, cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 888
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 889
    return-void

    .line 885
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    .end local v0           #cn:Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 878
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 880
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 872
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->log(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 874
    return-void
.end method

.method isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1174
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 170
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 172
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 161
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 163
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 149
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    .line 153
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 155
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 317
    return-void

    .line 315
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    if-eq v1, p0, :cond_0

    .line 804
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCDMAIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 813
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 824
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 323
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->flashAndSetGenericTrue()V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, ""

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 158
    return-void
.end method
