.class Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/cmcc/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateListener"
.end annotation


# instance fields
.field mSimID:I

.field final synthetic this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;


# direct methods
.method public constructor <init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;I)V
    .locals 1
    .parameter
    .parameter "simID"

    .prologue
    .line 237
    iput-object p1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->mSimID:I

    .line 238
    iput p2, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->mSimID:I

    .line 239
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 6
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 243
    const-string v1, "CDS/ConnectivityServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nw type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v3}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$200(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->mSimID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-ne p1, v4, :cond_3

    .line 247
    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$200(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)I

    move-result v1

    if-le v1, v4, :cond_0

    if-ge p2, v5, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$200(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$200(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)I

    move-result v1

    if-ge v1, v5, :cond_2

    if-le p2, v4, :cond_2

    .line 250
    :cond_1
    const-string v1, "CDS/ConnectivityServiceExt"

    const-string v2, "Send ps resumed from connectivityservice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$300(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #setter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1, p2}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$202(Landroid/net/wifi/cmcc/ConnectivityServiceExt;I)I

    .line 256
    :cond_3
    return-void
.end method
