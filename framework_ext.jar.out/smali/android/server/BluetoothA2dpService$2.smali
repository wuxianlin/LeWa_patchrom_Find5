.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    .line 326
    .local v12, device:Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 329
    .local v28, state:I
    packed-switch v28, :pswitch_data_0

    .line 586
    .end local v28           #state:I
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v28       #state:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 334
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)V

    goto :goto_0

    .line 337
    .end local v28           #state:I
    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    monitor-enter p0

    .line 339
    if-nez v12, :cond_2

    .line 340
    :try_start_0
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Error! device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit p0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 343
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 345
    .restart local v28       #state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    move/from16 v0, v28

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v12, v0, v3}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 347
    .end local v28           #state:I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :cond_4
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 350
    .local v29, streamType:I
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v27

    .line 353
    .local v27, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v3, v2}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, address:Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 357
    .local v23, newVolLevel:I
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 359
    .local v24, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 360
    .local v25, path:Ljava/lang/String;
    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 362
    :cond_5
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 367
    .end local v9           #address:Ljava/lang/String;
    .end local v23           #newVolLevel:I
    .end local v24           #oldVolLevel:I
    .end local v25           #path:Ljava/lang/String;
    .end local v27           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v29           #streamType:I
    :cond_6
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "track"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    :cond_9
    const-string v2, "id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 378
    .local v14, extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_a

    .line 379
    const-wide/16 v14, 0x0

    .line 380
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const-string v2, "ListSize"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 382
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_b

    .line 383
    const-wide/16 v14, 0x0

    .line 384
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 386
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_c

    .line 387
    const-wide/16 v14, 0x0

    .line 388
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    const-string/jumbo v2, "position"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 390
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_d

    .line 391
    const-wide/16 v14, 0x0

    .line 392
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v14, v15}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 394
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meta data info is trackname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " artist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mediaCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPostion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v25, v10, v17

    .line 399
    .restart local v25       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 398
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 402
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v14           #extra:J
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v25           #path:Ljava/lang/String;
    :cond_e
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 403
    const-string v2, "Received PLAYSTATE_CHANGED"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "playing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mIsMusicAppPlaying:Z
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3102(Landroid/server/BluetoothA2dpService;Z)Z

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing Status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mIsMusicAppPlaying:Z
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :cond_f
    const-string v2, "com.qualcomm.music.playstatusresponse"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 408
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Received PLAYSTATUS_RESPONSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v2, "duration"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 410
    .restart local v14       #extra:J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_10

    .line 411
    const-wide/16 v14, 0x0

    .line 412
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-wide/16 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 416
    :cond_11
    const-string/jumbo v2, "playing"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 417
    .local v26, playStatus:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v4

    move/from16 v0, v26

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v3, v0, v4, v5}, Landroid/server/BluetoothA2dpService;->access$3300(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3202(Landroid/server/BluetoothA2dpService;I)I

    .line 418
    const-string v2, "BluetoothA2dpService"

    const-string v3, "Sending Playstatus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    .end local v14           #extra:J
    .end local v26           #playStatus:Z
    :cond_12
    const-string v2, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 421
    const-string v2, "Received ACTION_METADATA_CHANGED"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v2, "uripath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/net/Uri;

    .line 423
    .local v33, uri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mUri is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 425
    if-eqz v33, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mIsMusicAppPlaying:Z
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3100(Landroid/server/BluetoothA2dpService;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    .line 431
    const-string v2, "Internal audio file data, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v31

    .line 437
    .local v31, tempMediaNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "time"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mReportTime:Ljava/lang/Long;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3502(Landroid/server/BluetoothA2dpService;Ljava/lang/Long;)Ljava/lang/Long;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "duration"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string/jumbo v3, "position"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$2702(Landroid/server/BluetoothA2dpService;J)J

    .line 440
    const-string/jumbo v2, "playstate"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 441
    .local v26, playStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlaySatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)I

    move-result v2

    move/from16 v0, v26

    if-eq v0, v2, :cond_14

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move/from16 v0, v26

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3202(Landroid/server/BluetoothA2dpService;I)I

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    aget-object v25, v10, v17

    .line 446
    .restart local v25       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 445
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 450
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v25           #path:Ljava/lang/String;
    :cond_14
    const-string v2, "Metadata received"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playstate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3200(Landroid/server/BluetoothA2dpService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 456
    const-string v2, "Update for same Uri, ignoring"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v33

    #setter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$3402(Landroid/server/BluetoothA2dpService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 461
    const/16 v19, 0x0

    .line 464
    .local v19, mCursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mCursorCols:[Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$3600(Landroid/server/BluetoothA2dpService;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_music=1"

    const/4 v6, 0x0

    const-string/jumbo v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 467
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 468
    const-string/jumbo v2, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 471
    .local v30, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v30

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    const-string v2, "artist"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v30

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    const-string v2, "album"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v30

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 482
    .local v20, mediaNumber:J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Artist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Album is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 487
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 488
    const/16 v19, 0x0

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/server/BluetoothA2dpService;->getTrackId(Ljava/lang/String;)J
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$3900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 490
    .local v32, tmpId:Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tmpId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 495
    new-instance v22, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v22 .. v22}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 496
    .local v22, mmr:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$3400(Landroid/server/BluetoothA2dpService;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 497
    const/4 v2, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v30

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v30

    #calls: Landroid/server/BluetoothA2dpService;->getValidUtf8String(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/server/BluetoothA2dpService;->access$3800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$4002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Genre is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$4000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 501
    .end local v22           #mmr:Landroid/media/MediaMetadataRetriever;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3700(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "is_music=1"

    const/4 v6, 0x0

    const-string/jumbo v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 508
    const/16 v19, 0x0

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$2500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 522
    .end local v20           #mediaNumber:J
    .end local v30           #temp:Ljava/lang/String;
    .end local v32           #tmpId:Ljava/lang/Long;
    :goto_3
    const-string v2, "end of parsing mData"

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v25, v10, v17

    .line 524
    .restart local v25       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothA2dpService;->access$2800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$2400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v2, v0, v3, v4, v5}, Landroid/server/BluetoothA2dpService;->access$2900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 523
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 510
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v25           #path:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 511
    .local v13, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$3000(Ljava/lang/String;)V

    .line 513
    if-eqz v19, :cond_17

    .line 514
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$2302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mGenre:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/server/BluetoothA2dpService;->access$4002(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 527
    .end local v13           #e:Ljava/lang/Exception;
    .end local v19           #mCursor:Landroid/database/Cursor;
    .end local v26           #playStatus:I
    .end local v31           #tempMediaNumber:Ljava/lang/String;
    .end local v33           #uri:Landroid/net/Uri;
    :cond_18
    const-string v2, "com.qualcomm.music.playersettingsresponse"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const-string v2, "Response"

    const/16 v3, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 532
    .local v16, getResponse:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 533
    :try_start_3
    new-instance v34, Ljava/lang/Integer;

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 534
    .local v34, val:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$4100(Landroid/server/BluetoothA2dpService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    :cond_19
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 539
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_0

    .line 541
    :pswitch_2
    const-string v2, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 542
    .local v11, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedAttributes"

    array-length v5, v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 538
    .end local v11           #data:[B
    .end local v34           #val:Ljava/lang/Integer;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 548
    .restart local v34       #val:Ljava/lang/Integer;
    :pswitch_3
    const-string v2, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 549
    .restart local v11       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateSupportedValues"

    array-length v5, v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 556
    .end local v11           #data:[B
    :pswitch_4
    const-string v2, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v11

    .line 557
    .restart local v11       #data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->updateLocalPlayerSettings([B)V
    invoke-static {v2, v11}, Landroid/server/BluetoothA2dpService;->access$4200(Landroid/server/BluetoothA2dpService;[B)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateCurrentValues"

    array-length v5, v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v3, v4, v5, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 562
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v2}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v10

    .restart local v10       #arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v25, v10, v17

    .line 563
    .restart local v25       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const-string v3, "UpdateCurrentValues"

    array-length v4, v11

    move-object/from16 v0, v25

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v2, v0, v3, v4, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    .line 562
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 569
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v11           #data:[B
    .end local v17           #i$:I
    .end local v18           #len$:I
    .end local v25           #path:Ljava/lang/String;
    :pswitch_5
    const-string v2, "AttributeStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateAttributesText"

    array-length v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v2 .. v7}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 577
    .end local v7           #text:[Ljava/lang/String;
    :pswitch_6
    const-string v2, "ValueStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 578
    .restart local v7       #text:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v4, "UpdateValuesText"

    array-length v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v2 .. v7}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 539
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
