.class final Landroid/bluetooth/BluetoothGattAppConfiguration$1;
.super Ljava/lang/Object;
.source "BluetoothGattAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattAppConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothGattAppConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattAppConfiguration;
    .locals 5
    .parameter "in"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, role:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, range:I
    new-instance v4, Landroid/bluetooth/BluetoothGattAppConfiguration;

    invoke-direct {v4, v0, v3, v2}, Landroid/bluetooth/BluetoothGattAppConfiguration;-><init>(Ljava/lang/String;II)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattAppConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothGattAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothGattAppConfiguration;
    .locals 1
    .parameter "size"

    .prologue
    .line 123
    new-array v0, p1, [Landroid/bluetooth/BluetoothGattAppConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattAppConfiguration$1;->newArray(I)[Landroid/bluetooth/BluetoothGattAppConfiguration;

    move-result-object v0

    return-object v0
.end method
