.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1213
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1181
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1185
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return v1

    .line 1188
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1194
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$3;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_idle_ms"

    const-wide/32 v12, 0x493e0

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1089
    .local v2, idleMillis:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stay_on_while_plugged_in"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1092
    .local v6, stayAwakeConditions:I
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1096
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$1902(Lcom/android/server/WifiService;Z)Z

    .line 1098
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;Z)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1104
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$1902(Lcom/android/server/WifiService;Z)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1114
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_2

    .line 1116
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1119
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1122
    :cond_3
    const-string v10, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1123
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1124
    :cond_4
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1132
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1136
    .local v4, pluggedType:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v8, v10, v2

    .line 1142
    .local v8, triggerTime:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1145
    .end local v8           #triggerTime:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10, v4}, Lcom/android/server/WifiService;->access$2102(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1146
    .end local v4           #pluggedType:I
    :cond_6
    const-string v10, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1147
    const-string v10, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1149
    .local v5, state:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1150
    .end local v5           #state:I
    :cond_7
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1151
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v11, "phoneinECMState"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 1152
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 1155
    :cond_8
    const-string v10, "com.android.server.WifiManager.action.CHECK_CONNECTION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .line 1157
    .local v7, supplicantState:Landroid/net/wifi/SupplicantState;
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check connection, supplicantState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    sget-object v10, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v10}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v10

    invoke-virtual {v7}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    if-gt v10, v11, :cond_9

    invoke-virtual {v7}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v10

    sget-object v11, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    if-le v10, v11, :cond_a

    .line 1161
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->showGPRSDialog()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 1163
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v10, v11, :cond_0

    .line 1164
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0xfa0

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCheckConnectionIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method
