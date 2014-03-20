.class Lcom/android/server/ConnectivityService$4$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$4;

.field final synthetic val$tmpContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$4;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3655
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$4$1;->val$tmpContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x1f4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3660
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->val$tmpContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3662
    .local v4, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_3

    .line 3663
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 3664
    .local v5, nwType:I
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v8

    if-eq v8, v12, :cond_1

    .line 3665
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "networktype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    .end local v5           #nwType:I
    :cond_0
    :goto_0
    return-void

    .line 3669
    .restart local v5       #nwType:I
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-nez v8, :cond_0

    .line 3673
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 3677
    .local v3, imsi:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-ge v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xf

    if-gt v8, v9, :cond_3

    .line 3678
    :cond_2
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMSI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    const-string v8, "00101"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3680
    const-string v8, "ConnectivityService"

    const-string v9, "Is_CPHS_Test_SIM_card"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3686
    .end local v3           #imsi:Ljava/lang/String;
    .end local v5           #nwType:I
    :cond_3
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " screen on  TYPE_MOBILE state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v10, v10, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3689
    const-string v8, "net.dns1"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3690
    .local v2, dns1:Ljava/lang/String;
    if-eqz v2, :cond_4

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3691
    :cond_4
    const-string v8, "ConnectivityService"

    const-string v9, "dns is empty "

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3695
    :cond_5
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3696
    const-string v8, "ConnectivityService"

    const-string v9, "for wifi connected,so return"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3700
    :cond_6
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v8, v8, Lcom/android/server/ConnectivityService;->DNSProcess:Z

    if-eqz v8, :cond_7

    .line 3701
    const-string v8, "ConnectivityService"

    const-string v9, "is in dns process"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3705
    :cond_7
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v2}, Lcom/android/server/ConnectivityService;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 3706
    .local v1, dns:I
    const-string v8, "ConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    const/16 v7, 0xbb8

    .line 3709
    .local v7, timeout:I
    const/4 v0, 0x0

    .line 3710
    .local v0, count:I
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iput-boolean v12, v8, Lcom/android/server/ConnectivityService;->DNSProcess:Z

    .line 3711
    const/4 v0, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v0, v8, :cond_9

    .line 3712
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v1, v7}, Lcom/android/server/ConnectivityService;->isDnsReachable(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3713
    const-string v8, "ConnectivityService"

    const-string v9, "dns ok"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iput-boolean v11, v8, Lcom/android/server/ConnectivityService;->DNSProcess:Z

    goto/16 :goto_0

    .line 3717
    :cond_8
    add-int/lit16 v7, v7, 0x3e8

    .line 3718
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 3711
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3722
    :cond_9
    const-string v8, "ConnectivityService"

    const-string v9, "dns fail,so we try to reconnect data"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    sput-boolean v12, Lcom/android/server/ConnectivityService;->InDataSpecialPeocess:Z

    .line 3724
    new-instance v6, Landroid/content/Intent;

    const-string v8, "InDataSpecialPeocess"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3725
    .local v6, sendintent:Landroid/content/Intent;
    const-string v8, "value"

    sget-boolean v9, Lcom/android/server/ConnectivityService;->InDataSpecialPeocess:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3726
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3729
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v11}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    .line 3730
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 3731
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v12}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    .line 3734
    sput-boolean v11, Lcom/android/server/ConnectivityService;->InDataSpecialPeocess:Z

    .line 3735
    const-string v8, "value"

    sget-boolean v9, Lcom/android/server/ConnectivityService;->InDataSpecialPeocess:Z

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3736
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3737
    iget-object v8, p0, Lcom/android/server/ConnectivityService$4$1;->this$1:Lcom/android/server/ConnectivityService$4;

    iget-object v8, v8, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iput-boolean v11, v8, Lcom/android/server/ConnectivityService;->DNSProcess:Z

    goto/16 :goto_0
.end method
