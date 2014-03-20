.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ATT_ATTR_NOT_FOUND:I = 0xa

.field public static final ATT_ATTR_NOT_LONG:I = 0xb

.field public static final ATT_AUTHENTICATION:I = 0x5

.field public static final ATT_AUTHORIZATION:I = 0x8

.field public static final ATT_INSUFF_ENC:I = 0xf

.field public static final ATT_INSUFF_ENCR_KEY_SIZE:I = 0xc

.field public static final ATT_INSUFF_RESOURCES:I = 0x11

.field public static final ATT_INVALID_HANDLE:I = 0x1

.field public static final ATT_INVALID_OFFSET:I = 0x7

.field public static final ATT_INVALID_PDU:I = 0x4

.field public static final ATT_INVAL_ATTR_VALUE_LEN:I = 0xd

.field public static final ATT_PREP_QUEUE_FULL:I = 0x9

.field public static final ATT_READ_NOT_PERM:I = 0x2

.field public static final ATT_REQ_NOT_SUPP:I = 0x6

.field public static final ATT_UNLIKELY:I = 0xe

.field public static final ATT_UNSUPP_GRP_TYPE:I = 0x10

.field public static final ATT_WRITE_NOT_PERM:I = 0x3

.field public static final CLIENT_ROLE:I = 0x2

.field public static final GATT_CONFIG_REGISTRATION_FAILURE:I = 0x202

.field public static final GATT_CONFIG_REGISTRATION_SUCCESS:I = 0x201

.field public static final GATT_CONFIG_UNREGISTRATION_FAILURE:I = 0x204

.field public static final GATT_CONFIG_UNREGISTRATION_SUCCESS:I = 0x203

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INVALID_ARGUMENTS:I = 0x102

.field public static final GATT_SUCCESS:B = 0x0t

.field public static final SERVER_ROLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mService:Landroid/bluetooth/IBluetooth;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 3
    .parameter "mContext"
    .parameter "l"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, b:Landroid/os/IBinder;
    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    .line 113
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2, p0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "BluetoothGatt"

    const-string v2, "Bluetooth Service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    goto :goto_0
.end method

.method private checkAppParam(Ljava/lang/String;ILandroid/bluetooth/BluetoothGattCallback;)Z
    .locals 2
    .parameter "name"
    .parameter "range"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 526
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->rangeCheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private rangeCheck(I)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 519
    if-lt p1, v0, :cond_0

    const v1, 0xffff

    if-le p1, v1, :cond_1

    .line 520
    :cond_0
    const/4 v0, 0x0

    .line 522
    :cond_1
    return v0
.end method

.method private unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 5
    .parameter "config"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, result:Z
    if-nez p1, :cond_0

    move v2, v1

    .line 185
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 173
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_1

    .line 175
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetooth;->unregisterGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 185
    .restart local v2       #result:I
    goto :goto_0

    .line 176
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGatt"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothGatt"

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 127
    return-void
.end method

.method public closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 4
    .parameter "config"
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return v1

    .line 251
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothGatt"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public discoverCharacteristicResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIIBILandroid/os/ParcelUuid;)Z
    .locals 10
    .parameter "config"
    .parameter "errorCode"
    .parameter "requestHandle"
    .parameter "handle"
    .parameter "property"
    .parameter "valueHandle"
    .parameter "uuid"

    .prologue
    .line 397
    const-string v0, "BluetoothGatt"

    const-string v1, "discoverCharacteristicResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v9, 0x0

    .line 400
    .local v9, result:Z
    if-nez p1, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    .line 403
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 406
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object/from16 v2, p7

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move v6, p2

    move v7, p3

    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetooth;->discoverCharacteristicResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IBIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 411
    :goto_1
    const/4 v9, 0x1

    :goto_2
    move v0, v9

    .line 417
    goto :goto_0

    .line 408
    :catch_0
    move-exception v8

    .line 409
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public discoverPrimaryServiceByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIIILandroid/os/ParcelUuid;)Z
    .locals 8
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "handle"
    .parameter "end"
    .parameter "uuid"

    .prologue
    .line 317
    const-string v0, "BluetoothGatt"

    const-string v1, "discoverPrimaryServiceByUuidResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v7, 0x0

    .line 320
    .local v7, result:Z
    if-nez p1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 331
    :goto_1
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    .line 337
    goto :goto_0

    .line 328
    :catch_0
    move-exception v6

    .line 329
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public discoverPrimaryServiceResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIIILandroid/os/ParcelUuid;)Z
    .locals 9
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "handle"
    .parameter "end"
    .parameter "uuid"

    .prologue
    .line 291
    const-string v0, "BluetoothGatt"

    const-string v1, "discoverPrimaryServiceResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v8, 0x0

    .line 294
    .local v8, result:Z
    const-string v0, "BluetoothGatt"

    const-string v1, "discoverPrimaryServiceResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object v2, p6

    move v3, p4

    move v4, p5

    move v5, p3

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetooth;->discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 305
    :goto_1
    const/4 v8, 0x1

    :goto_2
    move v0, v8

    .line 311
    goto :goto_0

    .line 302
    :catch_0
    move-exception v7

    .line 303
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public findIncludedServiceResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIIIILandroid/os/ParcelUuid;)Z
    .locals 10
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "handle"
    .parameter "start"
    .parameter "end"
    .parameter "uuid"

    .prologue
    .line 343
    const-string v0, "BluetoothGatt"

    const-string v1, "findIncludedServiceResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v9, 0x0

    .line 346
    .local v9, result:Z
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object/from16 v2, p7

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move v6, p3

    move v7, p2

    invoke-interface/range {v0 .. v7}, Landroid/bluetooth/IBluetooth;->findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 357
    :goto_1
    const/4 v9, 0x1

    :goto_2
    move v0, v9

    .line 363
    goto :goto_0

    .line 354
    :catch_0
    move-exception v8

    .line 355
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIILandroid/os/ParcelUuid;)Z
    .locals 8
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "handle"
    .parameter "uuid"

    .prologue
    .line 370
    const-string v0, "BluetoothGatt"

    const-string v1, "findInfoResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v7, 0x0

    .line 373
    .local v7, result:Z
    if-nez p1, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object v2, p5

    move v3, p4

    move v4, p3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 384
    :goto_1
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    .line 390
    goto :goto_0

    .line 381
    :catch_0
    move-exception v6

    .line 382
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 386
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public gattConnectLe(Ljava/lang/String;BBIIIIIIIII)I
    .locals 15
    .parameter "address"
    .parameter "prohibitRemoteChg"
    .parameter "filterPolicy"
    .parameter "scanInterval"
    .parameter "scanWindow"
    .parameter "intervalMin"
    .parameter "intervalMax"
    .parameter "latency"
    .parameter "superVisionTimeout"
    .parameter "minCeLen"
    .parameter "maxCeLen"
    .parameter "connTimeout"

    .prologue
    .line 206
    const-string v0, "BluetoothGatt"

    const-string v1, "Establish LE GATT Connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v0 .. v13}, Landroid/bluetooth/IBluetooth;->gattConnect(Ljava/lang/String;Ljava/lang/String;BBIIIIIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 213
    :catch_0
    move-exception v14

    .local v14, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v14           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public gattConnectLeCancel(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z
    .locals 4
    .parameter "config"
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 229
    const-string v2, "BluetoothGatt"

    const-string v3, "Cancel LE GATT Connection creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_2

    .line 236
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Landroid/bluetooth/IBluetooth;->gattConnectCancel(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "BluetoothGatt"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_0

    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;I[B)Z
    .locals 9
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "uuid"
    .parameter "handle"
    .parameter "payload"

    .prologue
    .line 422
    const-string v0, "BluetoothGatt"

    const-string/jumbo v1, "readByTypeResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v8, 0x0

    .line 425
    .local v8, result:Z
    if-nez p1, :cond_0

    .line 426
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 431
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move v2, p5

    move-object v3, p4

    move-object v4, p6

    move v5, p3

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetooth;->readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;ILandroid/os/ParcelUuid;[BII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 435
    :goto_1
    const/4 v8, 0x1

    :goto_2
    move v0, v8

    .line 441
    goto :goto_0

    .line 432
    :catch_0
    move-exception v7

    .line 433
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 437
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;[B)Z
    .locals 8
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "uuid"
    .parameter "payload"

    .prologue
    .line 447
    const-string v0, "BluetoothGatt"

    const-string/jumbo v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v7, 0x0

    .line 450
    .local v7, result:Z
    if-nez p1, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 456
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;[BII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 460
    :goto_1
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    .line 465
    goto :goto_0

    .line 457
    :catch_0
    move-exception v6

    .line 458
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public registerServerConfiguration(Ljava/lang/String;ILandroid/bluetooth/BluetoothGattCallback;)Z
    .locals 7
    .parameter "name"
    .parameter "range"
    .parameter "callback"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->checkAppParam(Ljava/lang/String;ILandroid/bluetooth/BluetoothGattCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 154
    :goto_0
    return v2

    .line 138
    :cond_0
    const-string v4, "BluetoothGatt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register GATT server application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v3, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;

    invoke-direct {v3, p0, p3}, Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCallback;)V

    .line 140
    .local v3, wrapper:Landroid/bluetooth/BluetoothGatt$BluetoothGattCallbackWrapper;
    new-instance v0, Landroid/bluetooth/BluetoothGattAppConfiguration;

    const/4 v4, 0x1

    invoke-direct {v0, p1, v4, p2}, Landroid/bluetooth/BluetoothGattAppConfiguration;-><init>(Ljava/lang/String;II)V

    .line 141
    .local v0, config:Landroid/bluetooth/BluetoothGattAppConfiguration;
    const/4 v2, 0x0

    .line 143
    .local v2, result:Z
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_1

    .line 145
    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4, v0, v3}, Landroid/bluetooth/IBluetooth;->registerGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 149
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothGatt"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v4, "BluetoothGatt"

    const-string v5, "Proxy not attached to service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "BluetoothGatt"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    .locals 8
    .parameter "config"
    .parameter "handle"
    .parameter "value"
    .parameter "notify"
    .parameter "sessionHandle"

    .prologue
    .line 267
    const/4 v7, 0x0

    .line 269
    .local v7, result:Z
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGatt;->rangeCheck(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 272
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_2

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 278
    :goto_1
    const/4 v7, 0x1

    :goto_2
    move v0, v7

    .line 284
    goto :goto_0

    .line 275
    :catch_0
    move-exception v6

    .line 276
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 280
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v0, "BluetoothGatt"

    const-string v1, "Proxy not attached to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public unregisterServerConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGatt;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z

    move-result v0

    return v0
.end method

.method public writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IILandroid/os/ParcelUuid;)Z
    .locals 4
    .parameter "config"
    .parameter "requestHandle"
    .parameter "errorCode"
    .parameter "uuid"

    .prologue
    .line 470
    const-string v2, "BluetoothGatt"

    const-string/jumbo v3, "writeResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, result:Z
    if-nez p1, :cond_0

    .line 474
    const/4 v2, 0x0

    .line 488
    :goto_0
    return v2

    .line 476
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 479
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p4, p3, p2}, Landroid/bluetooth/IBluetooth;->writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 483
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 488
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 485
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothGatt"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
