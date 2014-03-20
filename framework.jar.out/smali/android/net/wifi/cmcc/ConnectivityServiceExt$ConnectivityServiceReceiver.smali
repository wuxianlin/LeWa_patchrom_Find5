.class Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/cmcc/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;


# direct methods
.method private constructor <init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;Landroid/net/wifi/cmcc/ConnectivityServiceExt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;-><init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 220
    if-nez p2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, action:Ljava/lang/String;
    const-string v1, "CDS/ConnectivityServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received intent ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Landroid/net/wifi/cmcc/ConnectivityServiceExt;

    #getter for: Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->access$100(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 225
    :try_start_0
    const-string v1, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 227
    :cond_2
    :try_start_1
    const-string v1, "android.intent.action.EMMRRS_PS_RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method
