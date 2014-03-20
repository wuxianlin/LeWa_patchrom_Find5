.class Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerProcessState"
.end annotation


# instance fields
.field isTurningOn:Z

.field mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 665
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$6400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v0, v1, Landroid/os/Message;->what:I

    .line 668
    .local v0, what:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 669
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    .line 675
    :goto_0
    return-void

    .line 670
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 671
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    goto :goto_0

    .line 673
    :cond_1
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter PerProcessState: wrong msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x69

    const/16 v7, 0x66

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PerProcessState process message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x1

    .line 682
    .local v2, retValue:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v2, v4

    .line 782
    .end local v2           #retValue:Z
    :cond_0
    :goto_0
    return v2

    .line 684
    .restart local v2       #retValue:Z
    :sswitch_0
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$6500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v3

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    iput-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 687
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getNumberOfApplicationStateChangeTrackers()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 688
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v6, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto :goto_0

    .line 692
    :sswitch_1
    iget-boolean v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v6, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 694
    iput-boolean v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    goto :goto_0

    .line 698
    :sswitch_2
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v3, v8}, Landroid/server/BluetoothAdapterStateMachine;->access$6600(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 699
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 700
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$6700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 701
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterStateMachine;->is_hot_off_enabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 704
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v7}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$6800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-boolean v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    if-nez v3, :cond_0

    .line 708
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v3, v7, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    .line 710
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getApplicationStateChangeCallbacks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 711
    .local v0, c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v4, v0}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 712
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v5, v9, v0}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$6900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 718
    .end local v0           #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :sswitch_3
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 719
    const-string v3, "BluetoothAdapterStateMachine"

    const-string v4, "Power-down timed out, resetting..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v7}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 721
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v3}, Landroid/server/BluetoothAdapterStateMachine;->is_hot_off_enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 728
    :sswitch_4
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0xb

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 729
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v3, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 730
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    .line 731
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4700(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 732
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0xc

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 734
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->runBluetooth()V

    goto/16 :goto_0

    .line 737
    :sswitch_5
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0xd

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 738
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getAdapterConnectionState()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getAdapterConnectionCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 741
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->disconnectDevices()V

    .line 742
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x67

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 748
    :cond_4
    :sswitch_6
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x67

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7400(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 749
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$3900(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 750
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0xa

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto/16 :goto_0

    .line 753
    :sswitch_7
    const-string v3, "BluetoothAdapterStateMachine"

    const-string v5, "Devices fail to disconnect, reseting..."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 755
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v5, v7}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7600(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 757
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getApplicationStateChangeCallbacks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 758
    .restart local v0       #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v4, v0}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 759
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v5, v9, v0}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_2

    .line 763
    .end local v0           #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :sswitch_8
    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v5, v4, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 764
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->isApplicationStateChangeTrackerEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 766
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v8, v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 770
    :sswitch_9
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 771
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v8, v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 772
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->allProcessesCallback(Z)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$6200(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 774
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$7800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 777
    :sswitch_a
    const-string v3, "BluetoothAdapterStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PerProcessState received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_a
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x5 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
        0x37 -> :sswitch_9
        0x67 -> :sswitch_7
        0x69 -> :sswitch_3
    .end sparse-switch
.end method
