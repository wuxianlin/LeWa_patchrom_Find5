.class public Landroid/net/wifi/cmcc/ConnectivityServiceExt;
.super Landroid/net/wifi/cmcc/DefaultConnectivityServiceExt;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/cmcc/ConnectivityServiceExt$1;,
        Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;,
        Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CMCC_MUSIC_RETRY:Ljava/lang/String; = "android.intent.action.EMMRRS_PS_RESUME"

.field private static final ACTION_PS_STATE_RESUMED:Ljava/lang/String; = "com.mtk.ACTION_PS_STATE_RESUMED"

.field private static final MTK_TAG:Ljava/lang/String; = "CDS/ConnectivityServiceExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStateListener:Landroid/telephony/PhoneStateListener;

.field private mDataStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPsNetworkType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSynchronizedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/net/wifi/cmcc/DefaultConnectivityServiceExt;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I

    .line 64
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/cmcc/ConnectivityServiceExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mPsNetworkType:I

    return p1
.end method

.method static synthetic access$300(Landroid/net/wifi/cmcc/ConnectivityServiceExt;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isPsDataAvailable()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    :try_start_0
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 142
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v4

    .line 157
    .restart local v3       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 159
    .local v2, isSIMInsert:Z
    if-eqz v2, :cond_0

    .line 167
    iget-object v6, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, airplanMode:I
    const-string v6, "CDS/ConnectivityServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "airplanMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eq v0, v5, :cond_0

    move v4, v5

    .line 171
    goto :goto_0

    .line 162
    .end local v0           #airplanMode:I
    .end local v2           #isSIMInsert:Z
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "CDS/ConnectivityServiceExt"

    const-string v6, "Connect to phone service error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EMMRRS_PS_RESUME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    new-instance v3, Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/wifi/cmcc/ConnectivityServiceExt$ConnectivityServiceReceiver;-><init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;Landroid/net/wifi/cmcc/ConnectivityServiceExt$1;)V

    iput-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iget-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 80
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v3, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/wifi/cmcc/ConnectivityServiceExt$DataStateListener;-><init>(Landroid/net/wifi/cmcc/ConnectivityServiceExt;I)V

    iput-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mDataStateListener:Landroid/telephony/PhoneStateListener;

    .line 82
    iget-object v3, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mDataStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 84
    const-string v3, "CDS/ConnectivityServiceExt"

    const-string v4, "Init done in ConnectivityServiceExt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isControlBySetting(II)Z
    .locals 3
    .parameter "netType"
    .parameter "radio"

    .prologue
    .line 127
    const-string v0, "CDS/ConnectivityServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isControlBySetting: netType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-nez p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFailover(II)Z
    .locals 1
    .parameter "netType"
    .parameter "activeDefaultNetwork"

    .prologue
    const/4 v0, 0x1

    .line 89
    if-ne v0, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserPrompt()Z
    .locals 7

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->isPsDataAvailable()Z

    move-result v0

    .line 105
    .local v0, dataAvailable:Z
    iget-object v4, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 106
    .local v3, mgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->hasConnectableAP()Z

    move-result v2

    .line 108
    .local v2, hasConnectableAP:Z
    const-string v4, "CDS/ConnectivityServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataAvailable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",hasConnectableAP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, failoverIntent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/net/wifi/cmcc/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    const-string v4, "CDS/ConnectivityServiceExt"

    const-string v5, "Send ACTION_WIFI_FAILOVER_GPRS_DIALOG intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v4, 0x1

    .line 123
    .end local v1           #failoverIntent:Landroid/content/Intent;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
