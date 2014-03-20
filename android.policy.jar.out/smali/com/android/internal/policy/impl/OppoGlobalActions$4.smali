.class Lcom/android/internal/policy/impl/OppoGlobalActions$4;
.super Landroid/content/BroadcastReceiver;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1046
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    :cond_0
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, reason:Ljava/lang/String;
    const-string v3, "globalactions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1083
    .end local v1           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1054
    :cond_2
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1057
    const-string v3, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$102(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)Z

    .line 1060
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$300(Lcom/android/internal/policy/impl/OppoGlobalActions;Z)V

    goto :goto_0

    .line 1064
    :cond_3
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1065
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1066
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1202(Z)Z

    .line 1070
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1068
    :cond_4
    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1202(Z)Z

    goto :goto_1

    .line 1072
    :cond_5
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1402(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1074
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1075
    .local v2, wifiState:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1076
    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1502(Z)Z

    .line 1080
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1078
    :cond_6
    invoke-static {v5}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1502(Z)Z

    goto :goto_2
.end method
