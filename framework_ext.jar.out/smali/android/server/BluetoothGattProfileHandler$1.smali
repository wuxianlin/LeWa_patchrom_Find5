.class Landroid/server/BluetoothGattProfileHandler$1;
.super Landroid/os/Handler;
.source "BluetoothGattProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothGattProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothGattProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothGattProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .parameter "msg"

    .prologue
    .line 104
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 109
    .local v31, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const/16 v37, 0x1

    .line 110
    .local v37, result:Z
    const/4 v3, 0x0

    .line 111
    .local v3, path:Ljava/lang/String;
    if-eqz v31, :cond_0

    .line 112
    invoke-virtual/range {v31 .. v31}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_0
    const/16 v29, 0x0

    .line 117
    .local v29, payloadLen:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual/range {v31 .. v31}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getRange()I

    move-result v36

    .line 123
    .local v36, range:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/16 v7, 0x201

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    goto :goto_0

    .line 129
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    const/16 v38, 0x0

    .line 131
    .local v38, servers:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getGattServersNative()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v38, v2

    check-cast v38, [Ljava/lang/String;

    .line 132
    if-eqz v38, :cond_3

    move-object/from16 v0, v38

    array-length v2, v0

    if-lez v2, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move-object/from16 v0, v38

    #calls: Landroid/server/BluetoothGattProfileHandler;->loadRegisteredServers([Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/server/BluetoothGattProfileHandler;->access$400(Landroid/server/BluetoothGattProfileHandler;[Ljava/lang/String;)V

    .line 136
    .end local v38           #servers:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/16 v34, 0x1

    .line 137
    .local v34, isNew:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    move/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v2, v3, v0, v1}, Landroid/server/BluetoothService;->registerGattServerNative(Ljava/lang/String;IZ)Z

    move-result v37

    .line 139
    if-nez v37, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/16 v7, 0x202

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 136
    .end local v34           #isNew:Z
    :cond_5
    const/16 v34, 0x0

    goto :goto_1

    .line 144
    .restart local v34       #isNew:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #calls: Landroid/server/BluetoothGattProfileHandler;->serverEnable(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/server/BluetoothGattProfileHandler;->access$600(Landroid/server/BluetoothGattProfileHandler;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/16 v7, 0x201

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    goto/16 :goto_0

    .line 153
    .end local v34           #isNew:Z
    .end local v36           #range:I
    :pswitch_1
    const-string v2, "BluetoothGattProfileHandler"

    const-string v7, "GATT: MESSAGE_UNREGISTER_APPLICATION"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/server/BluetoothService;->unregisterGattServerNative(Ljava/lang/String;Z)Z

    move-result v37

    .line 157
    if-nez v37, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/16 v7, 0x204

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    .line 165
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/16 v7, 0x203

    move-object/from16 v0, v31

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    goto :goto_2

    .line 171
    :pswitch_2
    const-string v2, "BluetoothGattProfileHandler"

    const-string v7, "GATT: MESSAGE_DISCONNECT_LE"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "PATH"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 175
    .local v32, devPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->gattLeDisconnectRequestNative(Ljava/lang/String;)Z

    move-result v37

    .line 177
    if-nez v37, :cond_1

    .line 178
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to handle GATT LE disconnect request for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v32           #devPath:Ljava/lang/String;
    :pswitch_3
    const-string v2, "BluetoothGattProfileHandler"

    const-string v7, "GATT: MESSAGE_SEND_INDICATION"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "session"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 188
    .local v4, sessionHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 189
    .local v5, handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "payload"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 190
    .local v6, payload:[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "notify"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v35

    .line 192
    .local v35, notify:Z
    if-eqz v35, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    array-length v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/server/BluetoothService;->notifyNative(Ljava/lang/String;II[BI)Z

    move-result v37

    .line 197
    :goto_3
    if-nez v37, :cond_9

    .line 198
    const/16 v39, 0x101

    .line 202
    .local v39, status:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const-string v7, "SEND_INDICATION"

    move-object/from16 v0, v31

    move/from16 v1, v39

    #calls: Landroid/server/BluetoothGattProfileHandler;->callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    invoke-static {v2, v0, v7, v1}, Landroid/server/BluetoothGattProfileHandler;->access$700(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 195
    .end local v39           #status:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    array-length v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/server/BluetoothService;->indicateNative(Ljava/lang/String;II[BI)Z

    move-result v37

    goto :goto_3

    .line 200
    :cond_9
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto :goto_4

    .line 206
    .end local v4           #sessionHandle:I
    .end local v5           #handle:I
    .end local v6           #payload:[B
    .end local v35           #notify:Z
    .end local v39           #status:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 208
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "end"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 209
    .local v11, end:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 210
    .local v12, reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 211
    .local v33, errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v7

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/server/BluetoothService;->discoverPrimaryResponseNative(Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v37

    .line 215
    if-nez v37, :cond_a

    .line 216
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 218
    .end local v39           #status:I
    :cond_a
    const/16 v39, 0x101

    .line 219
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 221
    .end local v5           #handle:I
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v11           #end:I
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 222
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "end"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 223
    .restart local v11       #end:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 224
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 225
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 226
    .restart local v9       #errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v9, v5, v11, v12}, Landroid/server/BluetoothService;->discoverPrimaryByUuidResponseNative(Ljava/lang/String;III)Z

    move-result v37

    .line 229
    if-nez v37, :cond_b

    .line 230
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 232
    .end local v39           #status:I
    :cond_b
    const/16 v39, 0x101

    .line 233
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 236
    .end local v5           #handle:I
    .end local v9           #errorString:Ljava/lang/String;
    .end local v11           #end:I
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 238
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "start"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 239
    .local v17, start:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "end"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 240
    .restart local v11       #end:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 241
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 242
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 244
    .restart local v9       #errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v13

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v5

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Landroid/server/BluetoothService;->findIncludedResponseNative(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v37

    .line 246
    if-nez v37, :cond_c

    .line 247
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 249
    .end local v39           #status:I
    :cond_c
    const/16 v39, 0x101

    .line 250
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 253
    .end local v5           #handle:I
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v11           #end:I
    .end local v12           #reqHandle:I
    .end local v17           #start:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 255
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "value_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 256
    .local v23, valueHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 257
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 258
    .restart local v33       #errorCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "property"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v22

    .line 259
    .local v22, property:B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 261
    .restart local v9       #errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v18

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v5

    move/from16 v24, v12

    invoke-virtual/range {v18 .. v24}, Landroid/server/BluetoothService;->discoverCharacteristicsResponseNative(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v37

    .line 264
    if-nez v37, :cond_d

    .line 265
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 267
    .end local v39           #status:I
    :cond_d
    const/16 v39, 0x101

    .line 268
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 271
    .end local v5           #handle:I
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v12           #reqHandle:I
    .end local v22           #property:B
    .end local v23           #valueHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 273
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 274
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 275
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 277
    .restart local v9       #errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v8, v9, v5, v12}, Landroid/server/BluetoothService;->findInfoResponseNative(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v37

    .line 280
    if-nez v37, :cond_e

    .line 281
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 283
    .end local v39           #status:I
    :cond_e
    const/16 v39, 0x101

    .line 284
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 287
    .end local v5           #handle:I
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 288
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 289
    .restart local v5       #handle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 290
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 291
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v5}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 292
    .restart local v9       #errorString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "payload"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 293
    .restart local v6       #payload:[B
    if-eqz v6, :cond_f

    .line 294
    array-length v0, v6

    move/from16 v29, v0

    .line 297
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v24

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v30, v12

    invoke-virtual/range {v24 .. v30}, Landroid/server/BluetoothService;->readByTypeResponseNative(Ljava/lang/String;Ljava/lang/String;I[BII)Z

    move-result v37

    .line 300
    if-nez v37, :cond_10

    .line 301
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 296
    .end local v39           #status:I
    :cond_f
    const/16 v29, 0x0

    goto :goto_5

    .line 303
    :cond_10
    const/16 v39, 0x101

    .line 304
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 307
    .end local v5           #handle:I
    .end local v6           #payload:[B
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 309
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 310
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/4 v7, -0x1

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 311
    .restart local v9       #errorString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "payload"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 312
    .restart local v6       #payload:[B
    if-eqz v6, :cond_11

    .line 313
    array-length v0, v6

    move/from16 v29, v0

    .line 316
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v25

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v6

    move/from16 v30, v12

    invoke-virtual/range {v25 .. v30}, Landroid/server/BluetoothService;->readResponseNative(Ljava/lang/String;Ljava/lang/String;[BII)Z

    move-result v37

    .line 319
    if-nez v37, :cond_12

    .line 320
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 315
    .end local v39           #status:I
    :cond_11
    const/16 v29, 0x0

    goto :goto_6

    .line 322
    :cond_12
    const/16 v39, 0x101

    .line 323
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 326
    .end local v6           #payload:[B
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "uuid"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .restart local v8       #uuid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "request_handle"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 328
    .restart local v12       #reqHandle:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 329
    .restart local v33       #errorCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    const/4 v7, -0x1

    move/from16 v0, v33

    #calls: Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;
    invoke-static {v2, v0, v7}, Landroid/server/BluetoothGattProfileHandler;->access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;

    move-result-object v9

    .line 331
    .restart local v9       #errorString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v8, v9, v12}, Landroid/server/BluetoothService;->writeResponseNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v37

    .line 332
    if-nez v37, :cond_13

    .line 333
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 335
    .end local v39           #status:I
    :cond_13
    const/16 v39, 0x101

    .line 336
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 339
    .end local v8           #uuid:Ljava/lang/String;
    .end local v9           #errorString:Ljava/lang/String;
    .end local v12           #reqHandle:I
    .end local v33           #errorCode:I
    .end local v39           #status:I
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "PATH"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->addToPreferredDeviceListNative(Ljava/lang/String;)Z

    move-result v37

    .line 341
    if-nez v37, :cond_14

    .line 342
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 344
    .end local v39           #status:I
    :cond_14
    const/16 v39, 0x101

    .line 345
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 348
    .end local v39           #status:I
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "PATH"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->removeFromPreferredDeviceListNative(Ljava/lang/String;)Z

    move-result v37

    .line 351
    if-nez v37, :cond_15

    .line 352
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 354
    .end local v39           #status:I
    :cond_15
    const/16 v39, 0x101

    .line 355
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 358
    .end local v39           #status:I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->clearPreferredDeviceListNative()Z

    move-result v37

    .line 359
    if-nez v37, :cond_16

    .line 360
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 362
    .end local v39           #status:I
    :cond_16
    const/16 v39, 0x101

    .line 363
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 366
    .end local v39           #status:I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->gattConnectToPreferredDeviceListNative()Z

    move-result v37

    .line 367
    if-nez v37, :cond_17

    .line 368
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 370
    .end local v39           #status:I
    :cond_17
    const/16 v39, 0x101

    .line 371
    .restart local v39       #status:I
    goto/16 :goto_0

    .line 374
    .end local v39           #status:I
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/server/BluetoothGattProfileHandler$1;->this$0:Landroid/server/BluetoothGattProfileHandler;

    #getter for: Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v2}, Landroid/server/BluetoothGattProfileHandler;->access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/server/BluetoothService;->gattCancelConnectToPreferredDeviceListNative()Z

    move-result v37

    .line 375
    if-nez v37, :cond_1

    .line 376
    const/16 v39, 0x0

    .restart local v39       #status:I
    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
