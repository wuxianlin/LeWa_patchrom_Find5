.class Landroid/dolby/DsClient$2;
.super Landroid/dolby/IDsServiceCallbacks$Stub;
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
    .line 1934
    iput-object p1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Landroid/dolby/IDsServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDsApParamChange(ILjava/lang/String;)V
    .locals 4
    .parameter "profile"
    .parameter "paramName"

    .prologue
    .line 1990
    const-string v0, "DsClient"

    const-string v1, "event onDsApParamChange()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1992
    return-void
.end method

.method public onDsOn(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1943
    const-string v3, "DsClient"

    const-string v4, "event onDsOn()"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    if-eqz p1, :cond_0

    move v0, v1

    .line 1945
    .local v0, status:I
    :goto_0
    iget-object v3, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v4}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1946
    return-void

    .end local v0           #status:I
    :cond_0
    move v0, v2

    .line 1944
    goto :goto_0
.end method

.method public onEqSettingsChanged(II)V
    .locals 3
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 1984
    const-string v0, "DsClient"

    const-string v1, "event onEqSettingsChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1986
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 1962
    const-string v0, "DsClient"

    const-string v1, "event onProfileNameChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1964
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 1950
    const-string v0, "DsClient"

    const-string v1, "event onProfileSelected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1952
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 1956
    const-string v0, "DsClient"

    const-string v1, "event onProfileSettingsChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1958
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 5
    .parameter "isSuspended"

    .prologue
    const/4 v1, 0x0

    .line 1977
    const-string v2, "DsClient"

    const-string v3, "event onVisualizerSuspended()"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1979
    .local v0, status:I
    :goto_0
    iget-object v2, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v2}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v3}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1980
    return-void

    .end local v0           #status:I
    :cond_0
    move v0, v1

    .line 1978
    goto :goto_0
.end method

.method public onVisualizerUpdated([F[F)V
    .locals 4
    .parameter "gains"
    .parameter "excitations"

    .prologue
    const/4 v3, 0x0

    .line 1968
    const-string v0, "DsClient"

    const-string v1, "event onVisualizerUpdated()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->gains_:[F
    invoke-static {v0}, Landroid/dolby/DsClient;->access$500(Landroid/dolby/DsClient;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->bandCount_:I
    invoke-static {v1}, Landroid/dolby/DsClient;->access$200(Landroid/dolby/DsClient;)I

    move-result v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1971
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->excitations_:[F
    invoke-static {v0}, Landroid/dolby/DsClient;->access$600(Landroid/dolby/DsClient;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->bandCount_:I
    invoke-static {v1}, Landroid/dolby/DsClient;->access$200(Landroid/dolby/DsClient;)I

    move-result v1

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1972
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v0}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    #getter for: Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;
    invoke-static {v1}, Landroid/dolby/DsClient;->access$400(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1973
    return-void
.end method
