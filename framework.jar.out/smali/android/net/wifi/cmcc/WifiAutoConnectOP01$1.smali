.class Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnectOP01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;


# direct methods
.method constructor <init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "Received CONNECTIVITY_ACTION."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    iget-object v2, v2, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 56
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 57
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "No active network."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;->this$0:Landroid/net/wifi/cmcc/WifiAutoConnectOP01;

    #calls: Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendUpdateSettingsBroadcast()V
    invoke-static {v2}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->access$000(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    const-string v2, "WifiAutoConnectOP01"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
