.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"


# instance fields
.field bluetooth:Landroid/server/BluetoothService;

.field bluetoothA2dp:Landroid/server/BluetoothA2dpService;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    .line 41
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetoothA2dp:Landroid/server/BluetoothA2dpService;

    .line 56
    const-string v2, "BluetoothManagerService"

    const-string v3, "BluetoothManagerService started.Start Bluetooth Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance v2, Landroid/server/BluetoothService;

    invoke-direct {v2, p1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    .line 59
    const-string v2, "bluetooth"

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 61
    new-instance v2, Landroid/server/BluetoothA2dpService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-direct {v2, p1, v3}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetoothA2dp:Landroid/server/BluetoothA2dpService;

    .line 62
    const-string v2, "bluetooth_a2dp"

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->bluetoothA2dp:Landroid/server/BluetoothA2dpService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 64
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, airplaneModeOn:I
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, bluetoothOn:I
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->enable()Z

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .locals 1
    .parameter "saveSetting"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->bluetooth:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
