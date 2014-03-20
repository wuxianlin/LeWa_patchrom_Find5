.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattService$ServiceHelper;
    }
.end annotation


# static fields
.field private static final DISCOVERY_FINISHED:I = 0x1

.field private static final DISCOVERY_IN_PROGRESS:I = 0x2

.field private static final DISCOVERY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothGattService"


# instance fields
.field private characteristicPaths:[Ljava/lang/String;

.field private discoveryState:I

.field private final mCharacteristicProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mName:Ljava/lang/String;

.field private mObjPath:Ljava/lang/String;

.field private final mRemoteGattServiceHandler:Landroid/os/Handler;

.field private final mService:Landroid/bluetooth/IBluetooth;

.field private mServiceId:I

.field private final mUpdateCharacteristicsTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Landroid/os/ParcelUuid;

.field private profileCallback:Landroid/bluetooth/IBluetoothGattProfile;

.field private watcherRegistered:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/bluetooth/IBluetoothGattProfile;)V
    .locals 5
    .parameter "device"
    .parameter "uuid"
    .parameter "path"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    .line 47
    iput-object v2, p0, Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;

    .line 51
    iput-object v2, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 71
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    .line 72
    iput-object p3, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;

    .line 74
    iput-boolean v1, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    .line 75
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mUpdateCharacteristicsTracker:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;-><init>(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattService$1;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mRemoteGattServiceHandler:Landroid/os/Handler;

    .line 84
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mRemoteGattServiceHandler:Landroid/os/Handler;

    new-instance v2, Landroid/bluetooth/BluetoothGattService$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothGattService$1;-><init>(Landroid/bluetooth/BluetoothGattService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 91
    .local v0, hasGattServiceStarted:Z
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Gatt service started : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService$ServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattService;->updateCharacteristicPropertyCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothGattService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->discoveryState:I

    return v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothGattService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->discoveryState:I

    return p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothGattService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceId:I

    return v0
.end method

.method static synthetic access$402(Landroid/bluetooth/BluetoothGattService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mServiceId:I

    return p1
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothGattService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Landroid/bluetooth/BluetoothGattService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothGattService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUpdateCharacteristicsTracker:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    return v0
.end method

.method private addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "properties"

    .prologue
    .line 389
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 390
    .local v3, propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 391
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 394
    .restart local v3       #propertyValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    .line 395
    aget-object v1, p2, v0

    .line 396
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 398
    .local v2, newValue:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 399
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Gatt Characterisitc Property at index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p2, v0

    .line 405
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 408
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method private getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "property"

    .prologue
    .line 380
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristicProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 382
    .local v0, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCharacteristicPropertyCache(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 415
    .local v1, properties:[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    :goto_0
    if-eqz v1, :cond_0

    .line 419
    invoke-direct {p0, p1, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothGattService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 353
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 366
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->deregisterWatcher()Z

    .line 361
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    .line 362
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    iget v2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceId:I

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetooth;->closeRemoteGattService(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public deregisterWatcher()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 336
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    if-ne v1, v0, :cond_1

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    .line 339
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 341
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GATT service closed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 342
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->deregisterCharacteristicsWatcher()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 344
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 347
    :cond_1
    return v0
.end method

.method public discoverCharacteristics()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->doDiscovery()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public gattConnect(BBIIIIIIIII)Z
    .locals 12
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
    .line 104
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->gattConnect(BBIIIIIIIII)Z

    move-result v0

    return v0
.end method

.method public gattConnectCancel()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->gattConnectCancel()Z

    move-result v0

    return v0
.end method

.method public getCharacteristicClientConf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    const-string v2, "ClientConfiguration"

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 271
    goto :goto_0
.end method

.method public getCharacteristicDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 216
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Description"

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharacteristicPaths()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    const-string v2, ""

    .line 149
    .local v2, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, paths:[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    const-string v5, "Characteristics"

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetooth;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-nez v2, :cond_0

    .line 153
    const-string v3, "BluetoothGattService"

    const-string/jumbo v4, "value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v3, 0x0

    .line 164
    :goto_0
    return-object v3

    .line 156
    :cond_0
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothGattService"

    const-string v4, "!!!Error while calling getGattServiceProperty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCharacteristicUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .locals 5
    .parameter "path"

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, uuid:Landroid/os/ParcelUuid;
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 212
    :goto_0
    return-object v2

    .line 205
    :cond_0
    const-string v2, "UUID"

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 208
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 210
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Characteristic UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v0

    .line 212
    goto :goto_0
.end method

.method public getCharacteristicUuids()[Landroid/os/ParcelUuid;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v3

    .line 174
    :cond_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    array-length v0, v5

    .line 179
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 181
    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "UUID"

    invoke-direct {p0, v5, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 184
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    const-string v5, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Characteristic UUID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    new-array v3, v0, [Landroid/os/ParcelUuid;

    .line 192
    .local v3, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCharacteristics()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "GATT service closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 125
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getGattServiceName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 127
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public isDiscoveryDone()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v0

    return v0
.end method

.method public readCharacteristicRaw(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 225
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readCharacteristicValue for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 233
    const-string v2, "Value"

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 239
    .local v0, ret:[B
    goto :goto_0
.end method

.method public registerWatcher()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 323
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GATT service closed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 325
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->registerCharacteristicsWatcher()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z

    .line 326
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->watcherRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 331
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCharacteristicClientConf(Ljava/lang/String;I)Z
    .locals 4
    .parameter "path"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 307
    .local v0, value:[B
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 308
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 310
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 312
    :try_start_0
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "GATT service closed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 313
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    const-string v2, "ClientConfiguration"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 315
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method

.method public updateCharacteristicValue(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCharacteristicValue for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 251
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 253
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GATT service closed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 254
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->fetchCharValue(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method

.method public writeCharacteristicRaw(Ljava/lang/String;[BZ)Z
    .locals 4
    .parameter "path"
    .parameter "value"
    .parameter "reliable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 280
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeCharacteristicRaw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->discoveryDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 290
    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGattService;->mClosed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GATT service closed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 291
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    const-string v1, "Value"

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 293
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method
