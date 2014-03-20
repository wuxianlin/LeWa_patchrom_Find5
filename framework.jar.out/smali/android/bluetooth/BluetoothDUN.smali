.class public Landroid/bluetooth/BluetoothDUN;
.super Ljava/lang/Object;
.source "BluetoothDUN.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothDUN"


# instance fields
.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDUN;->mService:Landroid/bluetooth/IBluetooth;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v1, "BluetoothDUN"

    const-string v2, "Failed to get the Bluetooth Interface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public Disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    const-string v2, "BluetoothDUN"

    const-string v3, "->disableDUN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v2, "ro.qualcomm.bluetooth.dun"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    :goto_0
    return v1

    .line 112
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDUN;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->disableDUN()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDUN"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public Enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string v2, "BluetoothDUN"

    const-string v3, "->enableDUN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string/jumbo v2, "ro.qualcomm.bluetooth.dun"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return v1

    .line 92
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDUN;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->enableDUN()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDUN"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 3

    .prologue
    .line 70
    const-string v1, "BluetoothDUN"

    const-string v2, "->disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDUN;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disconnectDUN()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v1, 0x1

    .line 78
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDUN"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method
