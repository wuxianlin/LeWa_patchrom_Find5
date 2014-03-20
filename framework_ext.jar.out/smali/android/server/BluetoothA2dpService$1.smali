.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/os/Handler;
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
    .line 205
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const-string v0, "BluetoothA2dpService"

    const-string v1, "Timed outM - Sending Playstatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 215
    :try_start_0
    new-instance v10, Ljava/lang/Integer;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 216
    .local v10, val:Ljava/lang/Integer;
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    monitor-exit v1

    goto :goto_0

    .line 220
    .end local v10           #val:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 219
    .restart local v10       #val:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v3, "UpdateSupportedAttributes"

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->def_attrib:[B
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v11, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->def_attrib:[B
    invoke-static {v11}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v0, v1, v3, v4, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-byte v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attr:B

    packed-switch v0, :pswitch_data_2

    .line 243
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v3, "UpdateSupportedValues"

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_default:[B
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v11, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_default:[B
    invoke-static {v11}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v0, v1, v3, v4, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 231
    :pswitch_4
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v3, "UpdateSupportedValues"

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_repmode:[B
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v11, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_repmode:[B
    invoke-static {v11}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v0, v1, v3, v4, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 237
    :pswitch_5
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v3, "UpdateSupportedValues"

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_shufmode:[B
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v11, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->value_shufmode:[B
    invoke-static {v11}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)[B

    move-result-object v11

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v0, v1, v3, v4, v11}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 251
    :pswitch_6
    const/4 v7, 0x0

    .line 252
    .local v7, j:I
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .line 253
    .local v9, retVal:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 254
    add-int/lit8 v8, v7, 0x1

    .end local v7           #j:I
    .local v8, j:I
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v0, v0, v6

    aput-byte v0, v9, v7

    .line 255
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v0, v0, v6

    if-ne v0, v3, :cond_2

    .line 256
    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$localPlayerSettings;

    move-result-object v0

    iget-byte v0, v0, Landroid/server/BluetoothA2dpService$localPlayerSettings;->repeat_value:B

    aput-byte v0, v9, v8

    .line 253
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 257
    .end local v7           #j:I
    .restart local v8       #j:I
    :cond_2
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    aget-byte v0, v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 258
    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->settingValues:Landroid/server/BluetoothA2dpService$localPlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$localPlayerSettings;

    move-result-object v0

    iget-byte v0, v0, Landroid/server/BluetoothA2dpService$localPlayerSettings;->shuffle_value:B

    aput-byte v0, v9, v8

    goto :goto_2

    .line 260
    .end local v7           #j:I
    .restart local v8       #j:I
    :cond_3
    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    const/4 v0, 0x0

    aput-byte v0, v9, v8

    goto :goto_2

    .line 263
    :cond_4
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    const-string v3, "UpdateCurrentValues"

    array-length v4, v9

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayerSettingsNative(Ljava/lang/String;Ljava/lang/String;I[B)Z
    invoke-static {v0, v1, v3, v4, v9}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B)Z

    goto/16 :goto_0

    .line 270
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #retVal:[B
    :pswitch_7
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    array-length v0, v0

    new-array v5, v0, [Ljava/lang/String;

    .line 271
    .local v5, values:[Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    const-string v2, "UpdateAttributesText"

    .line 273
    .local v2, msgVal:Ljava/lang/String;
    :goto_3
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    array-length v0, v0

    if-ge v6, v0, :cond_6

    .line 274
    const-string v0, ""

    aput-object v0, v5, v6

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 271
    .end local v2           #msgVal:Ljava/lang/String;
    .end local v6           #i:I
    :cond_5
    const-string v2, "UpdateValuesText"

    goto :goto_3

    .line 276
    .restart local v2       #msgVal:Ljava/lang/String;
    .restart local v6       #i:I
    :cond_6
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Landroid/server/BluetoothA2dpService$PlayerSettings;->path:Ljava/lang/String;

    array-length v3, v5

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayerSettings:Landroid/server/BluetoothA2dpService$PlayerSettings;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothA2dpService$PlayerSettings;

    move-result-object v4

    iget-object v4, v4, Landroid/server/BluetoothA2dpService$PlayerSettings;->attrIds:[B

    #calls: Landroid/server/BluetoothA2dpService;->sendSettingsTextNative(Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;Ljava/lang/String;Ljava/lang/String;I[B[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 221
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 229
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
