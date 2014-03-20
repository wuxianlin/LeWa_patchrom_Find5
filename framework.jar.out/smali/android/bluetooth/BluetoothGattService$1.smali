.class Landroid/bluetooth/BluetoothGattService$1;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGattService;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/bluetooth/IBluetoothGattProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService$1;->this$0:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "BluetoothGattService"

    const-string v1, "Inside run for disc char"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService$1;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mHelper:Landroid/bluetooth/BluetoothGattService$ServiceHelper;
    invoke-static {v0}, Landroid/bluetooth/BluetoothGattService;->access$100(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService$ServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->startRemoteGattService()V

    .line 89
    return-void
.end method
