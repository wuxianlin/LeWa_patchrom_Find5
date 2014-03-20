.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2893
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2896
    if-nez p2, :cond_1

    .line 3044
    :cond_0
    :goto_0
    return-void

    .line 2898
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2899
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2900
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2903
    .local v11, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2904
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v13

    const/16 v14, 0x37

    invoke-virtual {v13, v14}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2906
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v13

    const/16 v14, 0x38

    invoke-virtual {v13, v14}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2908
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2909
    const-string v13, "android.intent.extra.DOCK_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2911
    .local v12, state:I
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    if-nez v12, :cond_4

    .line 2913
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/server/BluetoothService;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 2914
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v13, v14}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2916
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 2919
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dock_bluetooth_address"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/server/BluetoothService;->access$1000()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2920
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2922
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #state:I
    :cond_5
    const-string v13, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2923
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2925
    .local v3, audioState:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v14

    const/16 v13, 0xc

    if-ne v3, v13, :cond_6

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/server/BluetoothService$ConnectionManager;->setScoAudioActive(Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    .line 2926
    .end local v3           #audioState:I
    :cond_7
    const-string v13, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2927
    const-string v13, "BluetoothService"

    const-string v14, "Received ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 2930
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v13

    invoke-virtual {v13}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 2931
    .local v2, audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_9

    .line 2932
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/server/BluetoothA2dpService;

    move-result-object v14

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v14, v13}, Landroid/server/BluetoothA2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 2933
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2931
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2937
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    .line 2939
    .end local v2           #audioDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #i:I
    :cond_a
    const-string v13, "BluetoothService"

    const-string v14, "BluetoothA2dp service not available"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2941
    :cond_b
    const-string v13, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2942
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input connection state change"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2944
    .restart local v12       #state:I
    const-string v13, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2946
    .local v10, prevState:I
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2949
    .local v7, inputDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x4

    invoke-virtual {v13, v7, v14, v12, v10}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 2951
    .end local v7           #inputDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #prevState:I
    .end local v12           #state:I
    :cond_c
    const-string v13, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2952
    const-string v13, "BluetoothService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pan connection state change"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2954
    .restart local v12       #state:I
    const-string v13, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2956
    .restart local v10       #prevState:I
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 2959
    .local v8, panDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x5

    invoke-virtual {v13, v8, v14, v12, v10}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 2961
    .end local v8           #panDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #prevState:I
    .end local v12           #state:I
    :cond_d
    const-string v13, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2962
    const-string v13, "BluetoothService"

    const-string v14, "Received ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 2964
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 2968
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v13

    invoke-virtual {v13}, Landroid/server/BluetoothEventLoop;->getAuthorizationRequestData()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_e

    .line 2969
    const-string v13, "BluetoothService"

    const-string v14, "SAP authorization not in progress, ignoring this intent"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2973
    :cond_e
    const-string v13, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 2976
    const-string v13, "0000112D-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v14, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 2977
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    .line 2981
    :cond_f
    :goto_3
    const-string v13, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2982
    const-string v13, "BluetoothService"

    const-string v14, "Setting trust state to true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->setTrust(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2978
    :cond_10
    const-string v13, "00001103-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v14, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2979
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 2986
    :cond_11
    const-string v13, "BluetoothService"

    const-string v14, "User did not accept the SIM access request"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    const-string v13, "0000112D-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v14, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2988
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->sapAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2989
    :cond_12
    const-string v13, "00001103-0000-1000-8000-00805F9B34FB"

    const-string/jumbo v14, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2990
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->DUNAuthorize(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2993
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_13
    const-string v13, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 2994
    const-string v13, "BluetoothService"

    const-string v14, "Received ACTION_PLAYING_STATE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2997
    .local v9, playingState:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectionManager:Landroid/server/BluetoothService$ConnectionManager;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$ConnectionManager;

    move-result-object v14

    const/16 v13, 0xa

    if-ne v9, v13, :cond_14

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v14, v13}, Landroid/server/BluetoothService$ConnectionManager;->setA2dpAudioActive(Z)V

    goto/16 :goto_0

    :cond_14
    const/4 v13, 0x0

    goto :goto_4

    .line 2998
    .end local v9           #playingState:I
    :cond_15
    const-string v13, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2999
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3000
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 3007
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13, v4}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    if-eqz v13, :cond_16

    .line 3009
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    .line 3011
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13, v4}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 3013
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothPanProfileHandler:Landroid/server/BluetoothPanProfileHandler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothPanProfileHandler;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/server/BluetoothPanProfileHandler;->getPanDeviceRole(Landroid/bluetooth/BluetoothDevice;)I

    move-result v15

    invoke-virtual {v13, v4, v14, v15}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 3016
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->listConnectionNative()I
    invoke-static {v13}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)I

    move-result v13

    if-nez v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_18

    .line 3018
    const-string v13, "BluetoothService"

    const-string v14, "All connections disconnected"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v13}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v13

    const/16 v14, 0x34

    invoke-virtual {v13, v14}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 3022
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const-string v14, "ACTION_ACL_DISCONNECTED"

    invoke-virtual {v13, v14, v4}, Landroid/server/BluetoothService;->gattAclDisconnected(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 3023
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_19
    const-string v13, "android.bluetooth.service.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3024
    const-string v13, "BluetoothService"

    const-string v14, "ACTION_BT_DISCOVERABLE_TIMEOUT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v14, 0x15

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 3026
    :cond_1a
    const-string v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 3027
    const-string v13, "android.bluetooth.adapter.extra.STATE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_0

    .line 3029
    const-string v13, "BluetoothService"

    const-string v14, "Bluetooth is off"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/server/BluetoothService;->preferredDevicesList:Ljava/util/HashMap;

    .line 3031
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/server/BluetoothService;->btDeviceInPreferredDevList:Landroid/bluetooth/BluetoothDevice;

    .line 3032
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/server/BluetoothService;->isScanInProgress:Z

    .line 3033
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/server/BluetoothService;->callerPreferredDevApi:Ljava/lang/String;

    .line 3034
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/server/BluetoothService;->callerIntent:Ljava/lang/String;

    .line 3035
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/server/BluetoothService;->sPListCallBack:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    goto/16 :goto_0

    .line 3037
    :cond_1b
    const-string v13, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3038
    const-string v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3039
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v4, :cond_0

    .line 3042
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v13, v4}, Landroid/server/BluetoothService;->gattAclConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method
