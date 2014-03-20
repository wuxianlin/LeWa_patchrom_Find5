.class Landroid/dolby/DsClient$3;
.super Landroid/os/Handler;
.source "DsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/dolby/DsClient;


# direct methods
.method constructor <init>(Landroid/dolby/DsClient;)V
    .locals 0
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2005
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2083
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2008
    :pswitch_0
    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(DS_STATUS_CHANGED_MSG): isOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 2012
    .local v0, isOn:Z
    :goto_1
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2014
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/dolby/IDsClientEvents;->onDsOn(Z)V

    goto :goto_0

    .end local v0           #isOn:Z
    :cond_1
    move v0, v2

    .line 2009
    goto :goto_1

    .line 2019
    :pswitch_1
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_SELECTED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/dolby/IDsClientEvents;->onProfileSelected(I)V

    goto :goto_0

    .line 2028
    :pswitch_2
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2032
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/dolby/IDsClientEvents;->onProfileSettingsChanged(I)V

    goto/16 :goto_0

    .line 2037
    :pswitch_3
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_NAME_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2041
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2046
    :pswitch_4
    const-string v2, "DsClient"

    const-string v3, "handleMessage(VISUALIZER_UPDATED_MSG):"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2050
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->excitations_:[F
    invoke-static {v3}, Landroid/dolby/DsClient;->access$600(Landroid/dolby/DsClient;)[F

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->gains_:[F
    invoke-static {v4}, Landroid/dolby/DsClient;->access$500(Landroid/dolby/DsClient;)[F

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/dolby/IDsVisualizerEvents;->onVisualizerUpdate([F[F)V

    goto/16 :goto_0

    .line 2055
    :pswitch_5
    const-string v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(VISUALIZER_SUSPENDED_MSG): isSuspended = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v3, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2059
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    move v1, v0

    .line 2060
    .local v1, isSuspended:Z
    :goto_2
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$700(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/dolby/IDsVisualizerEvents;->onVisualizerSuspended(Z)V

    goto/16 :goto_0

    .end local v1           #isSuspended:Z
    :cond_2
    move v1, v2

    .line 2059
    goto :goto_2

    .line 2065
    :pswitch_6
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(EQ_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " preset ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2069
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$300(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    goto/16 :goto_0

    .line 2074
    :pswitch_7
    const-string v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(DS_PARAM_CHANGED_MSG): profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parameter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$800(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2078
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$800(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/dolby/IDsApParamEvents;->onDsApParamChange(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2005
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
