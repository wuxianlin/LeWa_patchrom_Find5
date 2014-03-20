.class public Landroid/net/wifi/cmcc/WifiAutoConnectOP01;
.super Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;
.source "WifiAutoConnectOP01.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAMEWORK_SCAN_INTERVAL_MS:I = 0x3a98

.field private static final SUSPEND_NOTIFICATION_DURATION:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectOP01"

.field private static final WIFISETTINGS_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"


# instance fields
.field private mCellToWiFiPolicy:I

.field private mConnectPolicy:I

.field private mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

.field private mSuspendNotificationTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;-><init>(Landroid/content/Context;)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendUpdateSettingsBroadcast()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    return-wide p1
.end method

.method private sendEnableAllNetworksBroadcast()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private sendUpdateSettingsBroadcast()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method


# virtual methods
.method public defaultFrameworkScanIntervalMs()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x3a98

    return v0
.end method

.method public getApDefaultSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const-string v0, "MTK Athens15"

    return-object v0
.end method

.method public hasConnectableAP()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 263
    const-string v0, "WifiAutoConnectOP01"

    const-string v1, "Scan for checking connectable AP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCustomizedAutoConnect()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Landroid/net/wifi/cmcc/DefaultWifiAutoConnect;->init()V

    .line 43
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    .line 45
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_connect_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    .line 47
    new-instance v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectTypeObserver:Landroid/net/wifi/cmcc/WifiAutoConnectOP01$ConnectTypeObserver;

    .line 48
    iget-object v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01$1;-><init>(Landroid/net/wifi/cmcc/WifiAutoConnectOP01;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public isWifiConnecting(ILjava/util/List;)Z
    .locals 23
    .parameter "connectingNetworkId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, disconnectNetworks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isWifiConnecting, mConnectPolicy:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mCellToWiFiPolicy:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", connectingNetworkId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v14, 0x0

    .line 111
    .local v14, isConnecting:Z
    const/4 v3, 0x0

    .line 112
    .local v3, autoConnect:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 113
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 114
    .local v12, info:Landroid/net/NetworkInfo;
    if-nez v12, :cond_2

    .line 115
    const-string v19, "WifiAutoConnectOP01"

    const-string v20, "No active network."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    const/4 v9, 0x0

    .line 120
    .local v9, highestPriorityNetworkSSID:Ljava/lang/String;
    const/4 v7, -0x1

    .line 121
    .local v7, highestPriority:I
    const/4 v8, -0x1

    .line 122
    .local v8, highestPriorityNetworkId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v16

    .line 123
    .local v16, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v17

    .line 124
    .local v17, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v16, :cond_3

    if-eqz v17, :cond_3

    .line 125
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 126
    .local v15, network:Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 130
    .local v18, scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 133
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v7, :cond_1

    .line 134
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 135
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 136
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 117
    .end local v7           #highestPriority:I
    .end local v8           #highestPriorityNetworkId:I
    .end local v9           #highestPriorityNetworkSSID:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v16           #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v17           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v18           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_2
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Active network type:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .restart local v7       #highestPriority:I
    .restart local v8       #highestPriorityNetworkId:I
    .restart local v9       #highestPriorityNetworkSSID:Ljava/lang/String;
    .restart local v16       #networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v17       #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "highestPriorityNetworkId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", currentTimeMillis:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mSuspendNotificationTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez v14, :cond_4

    .line 151
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    if-nez v19, :cond_e

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 154
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    const-wide/32 v21, 0x36ee80

    cmp-long v19, v19, v21

    if-lez v19, :cond_4

    .line 156
    const-string v19, "WifiAutoConnectOP01"

    const-string/jumbo v20, "send WIFI_NOTIFICATION_ACTION 1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v13, intent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v19, "ssid"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v19, "network_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    .end local v13           #intent:Landroid/content/Intent;
    :cond_4
    :goto_2
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isWifiConnecting, isConnecting:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", autoConnect:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-nez v14, :cond_5

    if-eqz v3, :cond_12

    :cond_5
    const/16 v19, 0x1

    :goto_3
    return v19

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v7, -0x1

    .line 166
    const/4 v8, -0x1

    .line 167
    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    .line 168
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 169
    .restart local v15       #network:Landroid/net/wifi/WifiConfiguration;
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 170
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 174
    .restart local v18       #scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 177
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v7, :cond_8

    .line 178
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 179
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 180
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_4

    .line 187
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v18           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_9
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "highestPriorityNetworkId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 191
    const-string v19, "WifiAutoConnectOP01"

    const-string v20, "Enable all networks for mobile is connected."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 197
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 198
    .local v2, am:Landroid/app/ActivityManager;
    const/4 v6, 0x0

    .line 199
    .local v6, cn:Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 200
    .local v4, classname:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 201
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 203
    :cond_b
    if-eqz v6, :cond_d

    .line 204
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Class Name:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    if-eqz v4, :cond_c

    const-string v19, "com.android.settings.Settings$WifiSettingsActivity"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 211
    :cond_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    move-wide/from16 v21, v0

    sub-long v19, v19, v21

    const-wide/32 v21, 0x36ee80

    cmp-long v19, v19, v21

    if-lez v19, :cond_4

    .line 213
    const-string v19, "WifiAutoConnectOP01"

    const-string/jumbo v20, "send WIFI_NOTIFICATION_ACTION 2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v13       #intent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    const-string/jumbo v19, "ssid"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v19, "network_id"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 207
    .end local v13           #intent:Landroid/content/Intent;
    :cond_d
    const-string v19, "WifiAutoConnectOP01"

    const-string v20, "ComponentName is null!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 223
    .end local v2           #am:Landroid/app/ActivityManager;
    .end local v4           #classname:Ljava/lang/String;
    .end local v6           #cn:Landroid/content/ComponentName;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v7, -0x1

    .line 226
    const/4 v8, -0x1

    .line 227
    if-eqz v16, :cond_11

    if-eqz v17, :cond_11

    .line 228
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 229
    .restart local v15       #network:Landroid/net/wifi/WifiConfiguration;
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 230
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 234
    .restart local v18       #scanresult:Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 237
    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v7, :cond_10

    .line 238
    iget v7, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 239
    iget v8, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 240
    iget-object v9, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 247
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v18           #scanresult:Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v19, "WifiAutoConnectOP01"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "highestPriorityNetworkId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", highestPriorityNetworkSSID="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 250
    const-string v19, "WifiAutoConnectOP01"

    const-string v20, "Enable all networks for mobile is not connected."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->sendEnableAllNetworksBroadcast()V

    .line 252
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 258
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_3
.end method

.method public shouldAutoConnect()Z
    .locals 5

    .prologue
    .line 89
    iget-object v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 90
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 91
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 92
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "No active network."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mConnectPolicy:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mCellToWiFiPolicy:I

    if-nez v2, :cond_2

    .line 99
    :cond_0
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "Should auto connect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v2, 0x1

    .line 103
    :goto_1
    return v2

    .line 94
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

    .line 102
    :cond_2
    const-string v2, "WifiAutoConnectOP01"

    const-string v3, "Shouldn\'t auto connect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public shouldEnableAllNetworksForCompletion()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, connectPolicy:I
    iget-object v3, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_connect_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, cellToWiFiPolicy:I
    const-string v3, "WifiAutoConnectOP01"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldEnableAllNetworksForCompletion, connectPolicy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellToWiFiPolicy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public shouldEnableAllNetworksForScreenOn()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNotification()V
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    .line 273
    const-string v0, "WifiAutoConnectOP01"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspendNotification, mSuspendNotificationTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/cmcc/WifiAutoConnectOP01;->mSuspendNotificationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method
