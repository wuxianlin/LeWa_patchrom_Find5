.class final Landroid/server/BluetoothGattProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothGattProfileHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final END:Ljava/lang/String; = "end"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final HANDLE:Ljava/lang/String; = "handle"

.field private static final MESSAGE_ADD_TO_PREFERRED_DEVICE_LIST:I = 0xd

.field private static final MESSAGE_CANCEL_CREATE_CONN_REQ_PREFERRED_DEVICE_LIST:I = 0x11

.field private static final MESSAGE_CLEAR_PREFERRED_DEVICE_LIST:I = 0xf

.field private static final MESSAGE_CREATE_CONN_REQ_PREFERRED_DEVICE_LIST:I = 0x10

.field private static final MESSAGE_DISCONNECT_LE:I = 0xc

.field private static final MESSAGE_DISCOVER_CHARACTERISTICS_RESP:I = 0x7

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_BY_UUID_RESP:I = 0x5

.field private static final MESSAGE_DISCOVER_PRIMARY_SERVICE_RESP:I = 0x4

.field private static final MESSAGE_FIND_INCLUDED_SERVICE_RESP:I = 0x6

.field private static final MESSAGE_FIND_INFO_RESP:I = 0x8

.field private static final MESSAGE_READ_BY_TYPE_RESP:I = 0x9

.field private static final MESSAGE_READ_RESP:I = 0xa

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_REMOVE_FROM_PREFERRED_DEVICE_LIST:I = 0xe

.field private static final MESSAGE_SEND_INDICATION:I = 0x3

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final MESSAGE_WRITE_RESP:I = 0xb

.field private static final NOTIFY:Ljava/lang/String; = "notify"

.field private static final PATH:Ljava/lang/String; = "PATH"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final REQUEST_HANDLE:Ljava/lang/String; = "request_handle"

.field private static final SESSION:Ljava/lang/String; = "session"

.field private static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "BluetoothGattProfileHandler"

.field private static final UUID:Ljava/lang/String; = "uuid"

.field private static final VALUE_HANDLE:Ljava/lang/String; = "value_handle"

.field private static sInstance:Landroid/server/BluetoothGattProfileHandler;


# instance fields
.field private mAppConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattAppConfiguration;",
            "Landroid/bluetooth/IBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mRegisteredServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/server/BluetoothGattProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothGattProfileHandler$1;-><init>(Landroid/server/BluetoothGattProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    .line 386
    iput-object p2, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    .line 390
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothGattProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothGattProfileHandler;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->loadRegisteredServers([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothGattProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothGattProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverEnable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothGattProfileHandler;Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/server/BluetoothGattProfileHandler;->callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothGattProfileHandler;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothGattProfileHandler;->errorStatusToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callGattActionCompleteCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    .locals 5
    .parameter "config"
    .parameter "action"
    .parameter "status"

    .prologue
    .line 966
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 968
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onGattActionComplete(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 974
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 976
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private callGattApplicationStatusCallback(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    .locals 5
    .parameter "config"
    .parameter "status"

    .prologue
    .line 948
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GATT Application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " State Change: status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 951
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 953
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattAppConfigurationStatusChange(Landroid/bluetooth/BluetoothGattAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V

    goto :goto_0

    .line 958
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 959
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private errorStatusToString(II)Ljava/lang/String;
    .locals 3
    .parameter "errorCode"
    .parameter "handle"

    .prologue
    .line 984
    if-nez p1, :cond_1

    .line 985
    const/4 v0, 0x0

    .line 1053
    :cond_0
    :goto_0
    return-object v0

    .line 987
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 989
    .local v0, errorString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1044
    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT_0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    :goto_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 992
    :pswitch_0
    const-string v0, "ATT_INVALID_HANDLE"

    .line 993
    goto :goto_1

    .line 995
    :pswitch_1
    const-string v0, "ATT_WRITE_NOT_PERM"

    .line 996
    goto :goto_1

    .line 998
    :pswitch_2
    const-string v0, "ATT_READ_NOT_PERM"

    .line 999
    goto :goto_1

    .line 1001
    :pswitch_3
    const-string v0, "ATT_INVALID_PDU"

    .line 1002
    goto :goto_1

    .line 1004
    :pswitch_4
    const-string v0, "ATT_INSUFF_AUTHENTICATION"

    .line 1005
    goto :goto_1

    .line 1007
    :pswitch_5
    const-string v0, "ATT_REQ_NOT_SUPP"

    .line 1008
    goto :goto_1

    .line 1010
    :pswitch_6
    const-string v0, "ATT_INVALID_OFFSET"

    .line 1011
    goto :goto_1

    .line 1013
    :pswitch_7
    const-string v0, "ATT_INSUFF_AUTHORIZATION"

    .line 1014
    goto :goto_1

    .line 1016
    :pswitch_8
    const-string v0, "ATT_PREP_QUEUE_FULL"

    .line 1017
    goto :goto_1

    .line 1019
    :pswitch_9
    const-string v0, "ATT_ATTR_NOT_FOUND"

    .line 1020
    goto :goto_1

    .line 1022
    :pswitch_a
    const-string v0, "ATT_ATTR_NOT_LONG"

    .line 1023
    goto :goto_1

    .line 1025
    :pswitch_b
    const-string v0, "ATT_INSUFF_ENCR_KEY_SIZE"

    .line 1026
    goto :goto_1

    .line 1028
    :pswitch_c
    const-string v0, "ATT_INVAL_ATTR_VALUE_LEN"

    .line 1029
    goto :goto_1

    .line 1031
    :pswitch_d
    const-string v0, "ATT_UNLIKELY"

    .line 1032
    goto :goto_1

    .line 1034
    :pswitch_e
    const-string v0, "ATT_INSUFF_ENCRYPTION"

    .line 1035
    goto :goto_1

    .line 1037
    :pswitch_f
    const-string v0, "ATT_UNSUPP_GRP_TYPE"

    .line 1038
    goto :goto_1

    .line 1040
    :pswitch_10
    const-string v0, "ATT_INSUFF_RESOURCES"

    .line 1041
    goto :goto_1

    .line 1047
    :cond_2
    const-string v0, "ATT_UNLIKELY"

    goto :goto_1

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothGattProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 394
    const-class v1, Landroid/server/BluetoothGattProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothGattProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothGattProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;

    .line 395
    :cond_0
    sget-object v0, Landroid/server/BluetoothGattProfileHandler;->sInstance:Landroid/server/BluetoothGattProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isServerEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRegisteredServers([Ljava/lang/String;)V
    .locals 4
    .parameter "servers"

    .prologue
    .line 1057
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1058
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    return-void
.end method

.method private removeRegisteredServer(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    :cond_0
    return-void
.end method

.method private serverDisable(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1073
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, v2}, Landroid/server/BluetoothService;->unregisterGattServerNative(Ljava/lang/String;Z)Z

    .line 1077
    return-void
.end method

.method private serverEnable(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothGattProfileHandler;->mRegisteredServers:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    return-void
.end method


# virtual methods
.method addToPreferredDeviceList(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 671
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addToPreferredDeviceList path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 673
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "PATH"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 676
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 677
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    const/4 v2, 0x1

    return v2
.end method

.method clearPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 693
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " clearPreferredDeviceList  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 695
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    const/4 v1, 0x1

    return v1
.end method

.method closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 5
    .parameter "config"
    .parameter "devPath"

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, path:Ljava/lang/String;
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "closeGattLeConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v3, 0x0

    .line 441
    :goto_0
    return v3

    .line 433
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "PATH"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 437
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 438
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 439
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverCharacteristicsResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IBIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "property"
    .parameter "valueHandle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverCharacteristicsResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v3, 0x0

    .line 572
    :goto_0
    return v3

    .line 555
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " discoverCharacteristicsResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " property : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " valHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string/jumbo v3, "property"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 563
    const-string/jumbo v3, "value_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 567
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 568
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 570
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 572
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 499
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryByUuidResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v3, 0x0

    .line 517
    :goto_0
    return v3

    .line 503
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryByUuidResponse  handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v3, "end"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 513
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 515
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    const/4 v3, 0x1

    goto :goto_0
.end method

.method discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 470
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discoverPrimaryResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "discoverPrimaryResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v3, 0x0

    .line 492
    :goto_0
    return v3

    .line 479
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    const-string v3, "end"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 488
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 490
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;IIIII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "start"
    .parameter "end"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findIncludedResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v3, 0x0

    .line 544
    :goto_0
    return v3

    .line 528
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findIncludedResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string v3, "end"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const-string v3, "error"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 540
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 542
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;III)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    const-string v3, "BluetoothGattProfileHandler"

    const-string v4, "findInfoResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v3, 0x0

    .line 596
    :goto_0
    return v3

    .line 582
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findInfoResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 592
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 594
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    const/4 v3, 0x1

    goto :goto_0
.end method

.method gattCancelConnectToPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 707
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " gattCancelConnectToPreferredDeviceList : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 709
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    const/4 v1, 0x1

    return v1
.end method

.method gattConnectToPreferredDeviceList()Z
    .locals 3

    .prologue
    .line 700
    const-string v1, "BluetoothGattProfileHandler"

    const-string v2, " gattConnectToPreferredDeviceList  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    const/4 v1, 0x1

    return v1
.end method

.method declared-synchronized onGattDiscoverCharacteristicsRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverCharacteristicsRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 802
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 803
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 804
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverCharacteristicRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 816
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 807
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 808
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 810
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 799
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 811
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 812
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverIncludedRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 777
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverIncludedRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 780
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 781
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 782
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindIncludedServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 794
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 785
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 786
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 788
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 777
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 789
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 790
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryByUuidRequest(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "reqHandle"

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryByUuidRequest - path : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "start :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " end : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 756
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 757
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 758
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 761
    .local v4, uuid:Landroid/os/ParcelUuid;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p2

    move v3, p3

    move v5, p5

    .line 762
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceByUuidRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 763
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v6

    .line 764
    .local v6, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    instance-of v2, v6, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 766
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 753
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 767
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v6

    .line 768
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattDiscoverPrimaryRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattDiscoverPrimaryRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 717
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 718
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 719
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattDiscoverPrimaryServiceRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 731
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 722
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 723
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 725
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 715
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 726
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 727
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattFindInfoRequest(Ljava/lang/String;III)V
    .locals 6
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "reqHandle"

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gatt object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 824
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 825
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 826
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    :try_start_1
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattFindInfoRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 839
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 830
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 831
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 833
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 821
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 834
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 835
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadByTypeRequest(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "path"
    .parameter "start"
    .parameter "end"
    .parameter "uuidStr"
    .parameter "auth"
    .parameter "reqHandle"

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadByTypeRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "start :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 846
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 847
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 848
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    :try_start_1
    invoke-static {p4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 851
    .local v2, uuid:Landroid/os/ParcelUuid;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert string to parceluuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 852
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadByTypeRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 862
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v2           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 853
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 854
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    instance-of v3, v7, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 856
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 843
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 857
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 858
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattReadRequest(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "handle"
    .parameter "reqHandle"

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattReadRequest - path : handle :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " auth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 868
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    if-eqz v1, :cond_0

    .line 869
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 870
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    :try_start_1
    invoke-interface {v0, v1, p3, p2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onGattReadRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 882
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 873
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 874
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 876
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 866
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 877
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 878
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattSetClientConfigDescriptor(Ljava/lang/String;II[B)V
    .locals 6
    .parameter "path"
    .parameter "sessionHandle"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 928
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 929
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattSetClientConfigDescriptor - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-eqz v1, :cond_0

    .line 931
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 932
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattSetClientConfigDescriptor(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 944
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 936
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 938
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 928
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 939
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 940
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteCommand(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 6
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 887
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGattWriteRequest - path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", auth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    if-eqz v1, :cond_0

    .line 890
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 891
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 893
    :try_start_1
    invoke-interface {v0, v1, p3, p4, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteCommand(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 903
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 894
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 895
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    instance-of v3, v2, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_0

    .line 897
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 886
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 898
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v2

    .line 899
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onGattWriteRequest(Ljava/lang/String;Ljava/lang/String;I[BII)V
    .locals 8
    .parameter "path"
    .parameter "auth"
    .parameter "attrHandle"
    .parameter "value"
    .parameter "sessionHandle"
    .parameter "reqHandle"

    .prologue
    .line 908
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 909
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGattReliableWriteRequest - path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    if-eqz v1, :cond_0

    .line 911
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    .line 912
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->isServerEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move v6, p6

    .line 914
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onGattWriteRequest(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BLjava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 915
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v7

    .line 916
    .local v7, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    instance-of v2, v7, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    .line 918
    invoke-direct {p0, p1}, Landroid/server/BluetoothGattProfileHandler;->serverDisable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 908
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 919
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v1       #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :catch_1
    move-exception v7

    .line 920
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized onIndicateResponse(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "result"

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indicate response object path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "result :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 736
    .local v1, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-eqz v1, :cond_0

    .line 738
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    .local v0, callback:Landroid/bluetooth/IBluetoothGattCallback;
    if-eqz v0, :cond_0

    .line 741
    :try_start_1
    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onGattIndicateResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 747
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 742
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothGattCallback;
    :catch_0
    move-exception v2

    .line 743
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 734
    .end local v0           #callback:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v1           #config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;I[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "handle"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 601
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readByTypeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v3, 0x0

    .line 621
    :goto_0
    return v3

    .line 606
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readByTypeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v3, "handle"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 613
    const-string v3, "error"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 617
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 619
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    const/4 v3, 0x1

    goto :goto_0
.end method

.method readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;[BII)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "payload"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "readResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v3, 0x0

    .line 645
    :goto_0
    return v3

    .line 631
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 637
    const-string v3, "error"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 641
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 643
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    iget-object v1, p0, Landroid/server/BluetoothGattProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return v2
.end method

.method removeFromPreferredDeviceList(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 682
    const-string v2, "BluetoothGattProfileHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeFromPreferredDeviceList path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "PATH"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 687
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 688
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    const/4 v2, 0x1

    return v2
.end method

.method sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    .locals 5
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "notify"
    .parameter "sessionHandle"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "sendIndication: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v3, 0x0

    .line 464
    :goto_0
    return v3

    .line 453
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "session"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v3, "handle"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string/jumbo v3, "payload"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 457
    const-string/jumbo v3, "notify"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 461
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 462
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    const/4 v3, 0x1

    goto :goto_0
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 413
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    invoke-direct {p0, v1}, Landroid/server/BluetoothGattProfileHandler;->removeRegisteredServer(Ljava/lang/String;)V

    .line 416
    const/4 v2, 0x1

    .line 419
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v2

    .line 418
    :cond_0
    const-string v2, "BluetoothGattProfileHandler"

    const-string/jumbo v3, "unregisterAppConfiguration: GATT app not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, 0x0

    goto :goto_0
.end method

.method writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;II)Z
    .locals 6
    .parameter "config"
    .parameter "uuid"
    .parameter "status"
    .parameter "reqHandle"

    .prologue
    .line 650
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattAppConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 652
    const-string v3, "BluetoothGattProfileHandler"

    const-string/jumbo v4, "writeResponse: GATT app not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v3, 0x0

    .line 667
    :goto_0
    return v3

    .line 655
    :cond_0
    const-string v3, "BluetoothGattProfileHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeResponse uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqHandle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "uuid"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v3, "error"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    const-string/jumbo v3, "request_handle"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 663
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 664
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 665
    iget-object v3, p0, Landroid/server/BluetoothGattProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    const/4 v3, 0x1

    goto :goto_0
.end method
