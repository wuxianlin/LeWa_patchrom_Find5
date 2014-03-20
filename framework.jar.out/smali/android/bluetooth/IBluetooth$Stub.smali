.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x35

.field static final TRANSACTION_addToPreferredDeviceList:I = 0x76

.field static final TRANSACTION_addToPreferredDeviceListWrapper:I = 0x7b

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x37

.field static final TRANSACTION_cancelBondProcess:I = 0x1a

.field static final TRANSACTION_cancelDiscovery:I = 0x12

.field static final TRANSACTION_cancelPairingUserInput:I = 0x31

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x17

.field static final TRANSACTION_clearPreferredDeviceList:I = 0x78

.field static final TRANSACTION_closeGattLeConnection:I = 0x67

.field static final TRANSACTION_closeRemoteGattService:I = 0x64

.field static final TRANSACTION_connectChannelToSink:I = 0x4c

.field static final TRANSACTION_connectChannelToSource:I = 0x4b

.field static final TRANSACTION_connectHeadset:I = 0x38

.field static final TRANSACTION_connectInputDevice:I = 0x3b

.field static final TRANSACTION_connectPanDevice:I = 0x47

.field static final TRANSACTION_createBond:I = 0x18

.field static final TRANSACTION_createBondOutOfBand:I = 0x19

.field static final TRANSACTION_deregisterCharacteristicsWatcher:I = 0x62

.field static final TRANSACTION_deregisterEl2capConnection:I = 0x54

.field static final TRANSACTION_disable:I = 0x7

.field static final TRANSACTION_disableDUN:I = 0x74

.field static final TRANSACTION_disconnectChannel:I = 0x4d

.field static final TRANSACTION_disconnectDUN:I = 0x73

.field static final TRANSACTION_disconnectHeadset:I = 0x39

.field static final TRANSACTION_disconnectInputDevice:I = 0x3c

.field static final TRANSACTION_disconnectPanDevice:I = 0x48

.field static final TRANSACTION_disconnectSap:I = 0x71

.field static final TRANSACTION_discoverCharacteristicResponse:I = 0x6c

.field static final TRANSACTION_discoverCharacteristics:I = 0x5c

.field static final TRANSACTION_discoverPrimaryByUuidResponse:I = 0x6a

.field static final TRANSACTION_discoverPrimaryResponse:I = 0x69

.field static final TRANSACTION_enable:I = 0x5

.field static final TRANSACTION_enableDUN:I = 0x75

.field static final TRANSACTION_enableNoAutoConnect:I = 0x6

.field static final TRANSACTION_enterTestMode:I = 0x7d

.field static final TRANSACTION_fetchRemoteUuids:I = 0x29

.field static final TRANSACTION_findIncludedResponse:I = 0x6b

.field static final TRANSACTION_findInfoResponse:I = 0x6d

.field static final TRANSACTION_gattCancelConnectToPreferredDeviceList:I = 0x7a

.field static final TRANSACTION_gattCancelConnectToPreferredDeviceListWrapper:I = 0x7c

.field static final TRANSACTION_gattConnect:I = 0x59

.field static final TRANSACTION_gattConnectCancel:I = 0x5a

.field static final TRANSACTION_gattConnectToPreferredDeviceList:I = 0x79

.field static final TRANSACTION_getAdapterConnectionState:I = 0x15

.field static final TRANSACTION_getAddress:I = 0x8

.field static final TRANSACTION_getBluetoothState:I = 0x4

.field static final TRANSACTION_getBondState:I = 0x1d

.field static final TRANSACTION_getCOD:I = 0xa

.field static final TRANSACTION_getCharacteristicProperties:I = 0x5e

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x4f

.field static final TRANSACTION_getConnectedInputDevices:I = 0x3d

.field static final TRANSACTION_getConnectedPanDevices:I = 0x45

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xf

.field static final TRANSACTION_getEffectiveAmpPolicy:I = 0x55

.field static final TRANSACTION_getGattServiceName:I = 0x5b

.field static final TRANSACTION_getGattServiceProperty:I = 0x5d

.field static final TRANSACTION_getGattServices:I = 0x58

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x51

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x50

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x3f

.field static final TRANSACTION_getInputDevicePriority:I = 0x41

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x3e

.field static final TRANSACTION_getMainChannelFd:I = 0x4e

.field static final TRANSACTION_getName:I = 0x9

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x44

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x46

.field static final TRANSACTION_getProfileConnectionState:I = 0x16

.field static final TRANSACTION_getRemoteAlias:I = 0x25

.field static final TRANSACTION_getRemoteClass:I = 0x27

.field static final TRANSACTION_getRemoteFeature:I = 0x2c

.field static final TRANSACTION_getRemoteL2capPsm:I = 0x2b

.field static final TRANSACTION_getRemoteName:I = 0x24

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x2a

.field static final TRANSACTION_getRemoteUuids:I = 0x28

.field static final TRANSACTION_getScanMode:I = 0xd

.field static final TRANSACTION_getTrustState:I = 0x33

.field static final TRANSACTION_getUuids:I = 0xc

.field static final TRANSACTION_isBluetoothDock:I = 0x34

.field static final TRANSACTION_isDiscovering:I = 0x13

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isHostPatchRequired:I = 0x72

.field static final TRANSACTION_isServiceRegistered:I = 0x2

.field static final TRANSACTION_isTetheringOn:I = 0x42

.field static final TRANSACTION_listBonds:I = 0x1c

.field static final TRANSACTION_notifyIncomingConnection:I = 0x3a

.field static final TRANSACTION_quitTestMode:I = 0x7e

.field static final TRANSACTION_readByTypeResponse:I = 0x6e

.field static final TRANSACTION_readOutOfBandData:I = 0x14

.field static final TRANSACTION_readResponse:I = 0x6f

.field static final TRANSACTION_registerAppConfiguration:I = 0x49

.field static final TRANSACTION_registerCharacteristicsWatcher:I = 0x60

.field static final TRANSACTION_registerEl2capConnection:I = 0x53

.field static final TRANSACTION_registerGattAppConfiguration:I = 0x65

.field static final TRANSACTION_registerRssiUpdateWatcher:I = 0x20

.field static final TRANSACTION_registerService:I = 0x3

.field static final TRANSACTION_removeBond:I = 0x1b

.field static final TRANSACTION_removeFromPreferredDeviceList:I = 0x77

.field static final TRANSACTION_removeServiceRecord:I = 0x36

.field static final TRANSACTION_sendConnectionStateChange:I = 0x52

.field static final TRANSACTION_sendIndication:I = 0x68

.field static final TRANSACTION_setBluetoothClass:I = 0x1f

.field static final TRANSACTION_setBluetoothTethering:I = 0x43

.field static final TRANSACTION_setCharacteristicProperty:I = 0x5f

.field static final TRANSACTION_setDesiredAmpPolicy:I = 0x56

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1e

.field static final TRANSACTION_setDiscoverableTimeout:I = 0x10

.field static final TRANSACTION_setInputDevicePriority:I = 0x40

.field static final TRANSACTION_setLEConnectionParams:I = 0x22

.field static final TRANSACTION_setName:I = 0xb

.field static final TRANSACTION_setPairingConfirmation:I = 0x2f

.field static final TRANSACTION_setPasskey:I = 0x2e

.field static final TRANSACTION_setPin:I = 0x2d

.field static final TRANSACTION_setRemoteAlias:I = 0x26

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x30

.field static final TRANSACTION_setScanMode:I = 0xe

.field static final TRANSACTION_setTrust:I = 0x32

.field static final TRANSACTION_setUseWifiForBtTransfers:I = 0x57

.field static final TRANSACTION_startDiscovery:I = 0x11

.field static final TRANSACTION_startRemoteGattService:I = 0x63

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x4a

.field static final TRANSACTION_unregisterGattAppConfiguration:I = 0x66

.field static final TRANSACTION_unregisterRssiUpdateWatcher:I = 0x21

.field static final TRANSACTION_updateCharacteristicValue:I = 0x61

.field static final TRANSACTION_updateLEConnectionParams:I = 0x23

.field static final TRANSACTION_writeResponse:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1771
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v16

    .line 54
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v16, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 60
    .end local v16           #_result:Z
    :sswitch_2
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 68
    .local v3, _arg0:Landroid/os/ParcelUuid;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isServiceRegistered(Landroid/os/ParcelUuid;)Z

    move-result v16

    .line 69
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v16, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_2

    .line 70
    .restart local v16       #_result:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 75
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_3
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 84
    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .line 85
    .local v4, _arg1:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerService(Landroid/os/ParcelUuid;Z)Z

    move-result v16

    .line 86
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 81
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 84
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 87
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 92
    .end local v3           #_arg0:Landroid/os/ParcelUuid;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_4
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v16

    .line 94
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v16           #_result:I
    :sswitch_5
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v16

    .line 102
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v16, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 103
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 108
    .end local v16           #_result:Z
    :sswitch_6
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableNoAutoConnect()Z

    move-result v16

    .line 110
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v16, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 111
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 116
    .end local v16           #_result:Z
    :sswitch_7
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    .line 119
    .local v3, _arg0:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v16

    .line 120
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v16, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 118
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 121
    .restart local v3       #_arg0:Z
    .restart local v16       #_result:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 126
    .end local v3           #_arg0:Z
    .end local v16           #_result:Z
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 134
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v16

    .line 136
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 142
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getCOD()Ljava/lang/String;

    move-result-object v16

    .line 144
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 150
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v16

    .line 154
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v16, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 160
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v16

    .line 162
    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 168
    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v16

    .line 170
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v16           #_result:I
    :sswitch_e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v16

    .line 182
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v16, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 183
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 188
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v16

    .line 190
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 196
    .end local v16           #_result:I
    :sswitch_10
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v16

    .line 200
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v16, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 201
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 206
    .end local v3           #_arg0:I
    .end local v16           #_result:Z
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v16

    .line 208
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v16, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 214
    .end local v16           #_result:Z
    :sswitch_12
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v16

    .line 216
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v16, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 222
    .end local v16           #_result:Z
    :sswitch_13
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v16

    .line 224
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v16, :cond_f

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    :cond_f
    const/4 v2, 0x0

    goto :goto_10

    .line 230
    .end local v16           #_result:Z
    :sswitch_14
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v16

    .line 232
    .local v16, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 234
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 238
    .end local v16           #_result:[B
    :sswitch_15
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v16

    .line 240
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v16           #_result:I
    :sswitch_16
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v16

    .line 250
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_17
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .line 260
    .local v3, _arg0:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v4

    .line 262
    .local v4, _arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 263
    .local v5, _arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v16

    .line 264
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v16, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 258
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 265
    .restart local v3       #_arg0:Z
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .restart local v5       #_arg2:Landroid/os/IBinder;
    .restart local v16       #_result:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 270
    .end local v3           #_arg0:Z
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v16           #_result:Z
    :sswitch_18
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v16

    .line 274
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 275
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 280
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_19
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 286
    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 287
    .local v5, _arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v16

    .line 288
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v16, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 289
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 294
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v16

    .line 298
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v16, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 299
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 304
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v16

    .line 308
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v16, :cond_15

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 309
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 314
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_1c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v16

    .line 316
    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_1d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v16

    .line 326
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 332
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_1e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 338
    .restart local v4       #_arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 339
    .restart local v5       #_arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v16

    .line 340
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v16, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 346
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v16           #_result:Z
    :sswitch_1f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothClass(Ljava/lang/String;I)Z

    move-result v16

    .line 352
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v16, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 353
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 358
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_20
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v6, 0x1

    .line 367
    .local v6, _arg3:Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->registerRssiUpdateWatcher(Ljava/lang/String;IIZ)Z

    move-result v16

    .line 368
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v16, :cond_19

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_19

    .line 369
    .restart local v6       #_arg3:Z
    .restart local v16       #_result:Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 374
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Z
    .end local v16           #_result:Z
    :sswitch_21
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterRssiUpdateWatcher(Ljava/lang/String;)Z

    move-result v16

    .line 378
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v16, :cond_1a

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 379
    :cond_1a
    const/4 v2, 0x0

    goto :goto_1b

    .line 384
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_22
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 390
    .local v4, _arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 392
    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 394
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 396
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 398
    .local v8, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 400
    .local v9, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 402
    .local v10, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 404
    .local v11, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 406
    .local v12, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 408
    .local v13, _arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, _arg11:I
    move-object/from16 v2, p0

    .line 409
    invoke-virtual/range {v2 .. v14}, Landroid/bluetooth/IBluetooth$Stub;->setLEConnectionParams(Ljava/lang/String;BBIIIIIIIII)Z

    move-result v16

    .line 410
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v16, :cond_1b

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 411
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 416
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v14           #_arg11:I
    .end local v16           #_result:Z
    :sswitch_23
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 422
    .restart local v4       #_arg1:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 426
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 428
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 429
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->updateLEConnectionParams(Ljava/lang/String;BIIII)Z

    move-result v16

    .line 430
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v16, :cond_1c

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 431
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 436
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:B
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_24
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 446
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_25
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 449
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 450
    .restart local v16       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 456
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_26
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 462
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v16, :cond_1d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 463
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 468
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_27
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v16

    .line 472
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 478
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:I
    :sswitch_28
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v16

    .line 482
    .local v16, _result:[Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 484
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 488
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Landroid/os/ParcelUuid;
    :sswitch_29
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 493
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 499
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v5

    .line 500
    .local v5, _arg2:Landroid/bluetooth/IBluetoothCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v16

    .line 501
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v16, :cond_1f

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 496
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :cond_1e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 502
    .restart local v5       #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .restart local v16       #_result:Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_20

    .line 507
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v16           #_result:Z
    :sswitch_2a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 512
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 517
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .line 518
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 515
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_20
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_21

    .line 524
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 528
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 529
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 534
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteL2capPsm(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v16

    .line 535
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 532
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:I
    :cond_21
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_22

    .line 541
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 547
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 553
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_2d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 558
    .local v4, _arg1:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v16

    .line 559
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v16, :cond_22

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 560
    :cond_22
    const/4 v2, 0x0

    goto :goto_23

    .line 565
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:[B
    .end local v16           #_result:Z
    :sswitch_2e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 570
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v16

    .line 571
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    if-eqz v16, :cond_23

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 572
    :cond_23
    const/4 v2, 0x0

    goto :goto_24

    .line 577
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_2f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v4, 0x1

    .line 582
    .local v4, _arg1:Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v16

    .line 583
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v16, :cond_25

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 581
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 584
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_26

    .line 589
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_30
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 592
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v16

    .line 593
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v16, :cond_26

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 594
    :cond_26
    const/4 v2, 0x0

    goto :goto_27

    .line 599
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_31
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 602
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v16

    .line 603
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v16, :cond_27

    const/4 v2, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 604
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 609
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_32
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v4, 0x1

    .line 614
    .restart local v4       #_arg1:Z
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v16

    .line 615
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v16, :cond_29

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 613
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_29

    .line 616
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_2a

    .line 621
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_33
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 624
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v16

    .line 625
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v16, :cond_2a

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 626
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 631
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_34
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v16

    .line 635
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v16, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 636
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 641
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_35
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 645
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 646
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 652
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 654
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 655
    .local v6, _arg3:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v16

    .line 656
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 649
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    .end local v16           #_result:I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2d

    .line 662
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_36
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 665
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 671
    .end local v3           #_arg0:I
    :sswitch_37
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 674
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 680
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    .line 681
    .local v4, _arg1:Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v16

    .line 682
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    if-eqz v16, :cond_2f

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 677
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_2d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_2e

    .line 680
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .line 683
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .line 688
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_38
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v16

    .line 692
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    if-eqz v16, :cond_30

    const/4 v2, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 693
    :cond_30
    const/4 v2, 0x0

    goto :goto_31

    .line 698
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_39
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 701
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v16

    .line 702
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v16, :cond_31

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 703
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 708
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_3a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    const/4 v4, 0x1

    .line 713
    .restart local v4       #_arg1:Z
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v16

    .line 714
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    if-eqz v16, :cond_33

    const/4 v2, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 712
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :cond_32
    const/4 v4, 0x0

    goto :goto_33

    .line 715
    .restart local v4       #_arg1:Z
    .restart local v16       #_result:Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 720
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Z
    .end local v16           #_result:Z
    :sswitch_3b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    .line 723
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 728
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 729
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v16, :cond_35

    const/4 v2, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 726
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_34
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_35

    .line 730
    .restart local v16       #_result:Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_36

    .line 735
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    .line 738
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 743
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 744
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v16, :cond_37

    const/4 v2, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 741
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_36
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_37

    .line 745
    .restart local v16       #_result:Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .line 750
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_3d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v17

    .line 752
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 754
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 758
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 761
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 762
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 764
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 768
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    .line 771
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 776
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 777
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 774
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_38
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_39

    .line 783
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_40
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    .line 786
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 792
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 793
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .line 794
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    if-eqz v16, :cond_3a

    const/4 v2, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 789
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_39
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3a

    .line 795
    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_3a
    const/4 v2, 0x0

    goto :goto_3b

    .line 800
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_41
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 803
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 808
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 809
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 806
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_3b
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3c

    .line 815
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_42
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v16

    .line 817
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    if-eqz v16, :cond_3c

    const/4 v2, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 818
    :cond_3c
    const/4 v2, 0x0

    goto :goto_3d

    .line 823
    .end local v16           #_result:Z
    :sswitch_43
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 826
    .local v3, _arg0:Z
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 825
    .end local v3           #_arg0:Z
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .line 832
    :sswitch_44
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 835
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 840
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 841
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 838
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_3e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3f

    .line 847
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_45
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v17

    .line 849
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 851
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 855
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_46
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 858
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 859
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 861
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 865
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_47
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    .line 868
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 873
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 874
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v16, :cond_40

    const/4 v2, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 871
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_3f
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_40

    .line 875
    .restart local v16       #_result:Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_41

    .line 880
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_48
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    .line 883
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 888
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_42
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 889
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    if-eqz v16, :cond_42

    const/4 v2, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 886
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :cond_41
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_42

    .line 890
    .restart local v16       #_result:Z
    :cond_42
    const/4 v2, 0x0

    goto :goto_43

    .line 895
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:Z
    :sswitch_49
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    .line 898
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 904
    .local v3, _arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v4

    .line 905
    .local v4, _arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v16

    .line 906
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    if-eqz v16, :cond_44

    const/4 v2, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 901
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :cond_43
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_44

    .line 907
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .restart local v16       #_result:Z
    :cond_44
    const/4 v2, 0x0

    goto :goto_45

    .line 912
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v16           #_result:Z
    :sswitch_4a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    .line 915
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 920
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .line 921
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v16, :cond_46

    const/4 v2, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 918
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_45
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_46

    .line 922
    .restart local v16       #_result:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_47

    .line 927
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    .line 930
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 936
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 937
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 942
    .local v4, _arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v16

    .line 943
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v16, :cond_49

    const/4 v2, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 933
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :cond_47
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_48

    .line 940
    :cond_48
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_49

    .line 944
    .restart local v16       #_result:Z
    :cond_49
    const/4 v2, 0x0

    goto :goto_4a

    .line 949
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_4c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 952
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 958
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    .line 959
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 965
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 966
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .line 967
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v16, :cond_4c

    const/4 v2, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 955
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4b

    .line 962
    :cond_4b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4c

    .line 968
    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_4c
    const/4 v2, 0x0

    goto :goto_4d

    .line 973
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_4d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 976
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 982
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 983
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 989
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 990
    .restart local v5       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v16

    .line 991
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    if-eqz v16, :cond_4f

    const/4 v2, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 979
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :cond_4d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4e

    .line 986
    :cond_4e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_4f

    .line 992
    .restart local v5       #_arg2:I
    .restart local v16       #_result:Z
    :cond_4f
    const/4 v2, 0x0

    goto :goto_50

    .line 997
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_4e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    .line 1000
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1006
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_51

    .line 1007
    sget-object v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 1012
    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_52
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 1013
    .local v16, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    if-eqz v16, :cond_52

    .line 1015
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1021
    :goto_53
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1003
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_50
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_51

    .line 1010
    :cond_51
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_52

    .line 1019
    .restart local v16       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 1025
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v16           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_4f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v17

    .line 1027
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1028
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1029
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1033
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_50
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1036
    .local v3, _arg0:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v17

    .line 1037
    .restart local v17       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1039
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1043
    .end local v3           #_arg0:[I
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_51
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    .line 1046
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1051
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v16

    .line 1052
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1049
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v16           #_result:I
    :cond_53
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_54

    .line 1058
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_52
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    .line 1061
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1067
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1069
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1071
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1072
    .local v6, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1064
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    :cond_54
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_55

    .line 1078
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_53
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v3

    .line 1082
    .local v3, _arg0:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1083
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v16

    .line 1084
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1090
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothCallback;
    .end local v4           #_arg1:I
    .end local v16           #_result:I
    :sswitch_54
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1093
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->deregisterEl2capConnection(I)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1099
    .end local v3           #_arg0:I
    :sswitch_55
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1102
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getEffectiveAmpPolicy(I)I

    move-result v16

    .line 1103
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v3           #_arg0:I
    .end local v16           #_result:I
    :sswitch_56
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1114
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->setDesiredAmpPolicy(II)Z

    move-result v16

    .line 1115
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    if-eqz v16, :cond_55

    const/4 v2, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1116
    :cond_55
    const/4 v2, 0x0

    goto :goto_56

    .line 1121
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_57
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    const/4 v3, 0x1

    .line 1124
    .local v3, _arg0:Z
    :goto_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->setUseWifiForBtTransfers(Z)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1123
    .end local v3           #_arg0:Z
    :cond_56
    const/4 v3, 0x0

    goto :goto_57

    .line 1130
    :sswitch_58
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    .line 1135
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1140
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServices(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v16

    .line 1141
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    if-eqz v16, :cond_58

    const/4 v2, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :cond_57
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_58

    .line 1142
    .restart local v16       #_result:Z
    :cond_58
    const/4 v2, 0x0

    goto :goto_59

    .line 1147
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v16           #_result:Z
    :sswitch_59
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1151
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1153
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 1155
    .local v5, _arg2:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 1157
    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1159
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1161
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1163
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1165
    .restart local v10       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1167
    .restart local v11       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1169
    .restart local v12       #_arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1171
    .restart local v13       #_arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1173
    .restart local v14       #_arg11:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, _arg12:I
    move-object/from16 v2, p0

    .line 1174
    invoke-virtual/range {v2 .. v15}, Landroid/bluetooth/IBluetooth$Stub;->gattConnect(Ljava/lang/String;Ljava/lang/String;BBIIIIIIIII)I

    move-result v16

    .line 1175
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1181
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:B
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    .end local v13           #_arg10:I
    .end local v14           #_arg11:I
    .end local v15           #_arg12:I
    .end local v16           #_result:I
    :sswitch_5a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1185
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1186
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->gattConnectCancel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 1187
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    if-eqz v16, :cond_59

    const/4 v2, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1188
    :cond_59
    const/4 v2, 0x0

    goto :goto_5a

    .line 1193
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_5b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1197
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1199
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1203
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_5c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1207
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1208
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristics(Ljava/lang/String;I)Z

    move-result v16

    .line 1209
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    if-eqz v16, :cond_5a

    const/4 v2, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1210
    :cond_5a
    const/4 v2, 0x0

    goto :goto_5b

    .line 1215
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_5d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1219
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1220
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->getGattServiceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1221
    .local v16, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Ljava/lang/String;
    :sswitch_5e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1230
    .restart local v3       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1231
    .local v16, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1233
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1237
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v16           #_result:[Ljava/lang/String;
    :sswitch_5f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1243
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1245
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v6, 0x1

    .line 1247
    .local v6, _arg3:Z
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1248
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v16

    .line 1249
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    if-eqz v16, :cond_5c

    const/4 v2, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5c

    .line 1250
    .restart local v6       #_arg3:Z
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_5c
    const/4 v2, 0x0

    goto :goto_5d

    .line 1255
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_60
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .line 1261
    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1262
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->registerCharacteristicsWatcher(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;I)Z

    move-result v16

    .line 1263
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    if-eqz v16, :cond_5d

    const/4 v2, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_5d
    const/4 v2, 0x0

    goto :goto_5e

    .line 1269
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v5           #_arg2:I
    .end local v16           #_result:Z
    :sswitch_61
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1273
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1274
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->updateCharacteristicValue(Ljava/lang/String;I)Z

    move-result v16

    .line 1275
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    if-eqz v16, :cond_5e

    const/4 v2, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1276
    :cond_5e
    const/4 v2, 0x0

    goto :goto_5f

    .line 1281
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_62
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1285
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1286
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->deregisterCharacteristicsWatcher(Ljava/lang/String;I)Z

    move-result v16

    .line 1287
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    if-eqz v16, :cond_5f

    const/4 v2, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1288
    :cond_5f
    const/4 v2, 0x0

    goto :goto_60

    .line 1293
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_63
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1297
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattService;

    move-result-object v4

    .line 1298
    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->startRemoteGattService(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)I

    move-result v16

    .line 1299
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1305
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattService;
    .end local v16           #_result:I
    :sswitch_64
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1309
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1310
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->closeRemoteGattService(Ljava/lang/String;I)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1316
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:I
    :sswitch_65
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60

    .line 1319
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1325
    .local v3, _arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .line 1326
    .local v4, _arg1:Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->registerGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/bluetooth/IBluetoothGattCallback;)Z

    move-result v16

    .line 1327
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    if-eqz v16, :cond_61

    const/4 v2, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1322
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :cond_60
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_61

    .line 1328
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .restart local v16       #_result:Z
    :cond_61
    const/4 v2, 0x0

    goto :goto_62

    .line 1333
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    .end local v16           #_result:Z
    :sswitch_66
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 1336
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1341
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_63
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->unregisterGattAppConfiguration(Landroid/bluetooth/BluetoothGattAppConfiguration;)Z

    move-result v16

    .line 1342
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    if-eqz v16, :cond_63

    const/4 v2, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1339
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :cond_62
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_63

    .line 1343
    .restart local v16       #_result:Z
    :cond_63
    const/4 v2, 0x0

    goto :goto_64

    .line 1348
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v16           #_result:Z
    :sswitch_67
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    .line 1351
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1357
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1358
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->closeGattLeConnection(Landroid/bluetooth/BluetoothGattAppConfiguration;Ljava/lang/String;)Z

    move-result v16

    .line 1359
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    if-eqz v16, :cond_65

    const/4 v2, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1354
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :cond_64
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_65

    .line 1360
    .restart local v4       #_arg1:Ljava/lang/String;
    .restart local v16       #_result:Z
    :cond_65
    const/4 v2, 0x0

    goto :goto_66

    .line 1365
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_68
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    .line 1368
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1374
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1376
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1378
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_67

    const/4 v6, 0x1

    .line 1380
    .restart local v6       #_arg3:Z
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1381
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->sendIndication(Landroid/bluetooth/BluetoothGattAppConfiguration;I[BZI)Z

    move-result v16

    .line 1382
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    if-eqz v16, :cond_68

    const/4 v2, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1371
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_66
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_67

    .line 1378
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:[B
    :cond_67
    const/4 v6, 0x0

    goto :goto_68

    .line 1383
    .restart local v6       #_arg3:Z
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_68
    const/4 v2, 0x0

    goto :goto_69

    .line 1388
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:Z
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_69
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    .line 1391
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1397
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    .line 1398
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1404
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1406
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1408
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1410
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 1411
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIII)Z

    move-result v16

    .line 1412
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    if-eqz v16, :cond_6b

    const/4 v2, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1394
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_69
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6a

    .line 1401
    :cond_6a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_6b

    .line 1413
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_6b
    const/4 v2, 0x0

    goto :goto_6c

    .line 1418
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_6a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6c

    .line 1421
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1427
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1429
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1431
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1433
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1434
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->discoverPrimaryByUuidResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;IIII)Z

    move-result v16

    .line 1435
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    if-eqz v16, :cond_6d

    const/4 v2, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1424
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_6c
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6d

    .line 1436
    .restart local v4       #_arg1:I
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_6d
    const/4 v2, 0x0

    goto :goto_6e

    .line 1441
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6e

    .line 1444
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1450
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6f

    .line 1451
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1457
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1459
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1461
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1463
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1465
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    .line 1466
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->findIncludedResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IIIII)Z

    move-result v16

    .line 1467
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    if-eqz v16, :cond_70

    const/4 v2, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1447
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_6e
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_6f

    .line 1454
    :cond_6f
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_70

    .line 1468
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_70
    const/4 v2, 0x0

    goto :goto_71

    .line 1473
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_71

    .line 1476
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1482
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    .line 1483
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1489
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1491
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 1493
    .local v6, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1495
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1497
    .restart local v8       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v2, p0

    .line 1498
    invoke-virtual/range {v2 .. v9}, Landroid/bluetooth/IBluetooth$Stub;->discoverCharacteristicResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;IBIII)Z

    move-result v16

    .line 1499
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    if-eqz v16, :cond_73

    const/4 v2, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1501
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1479
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :cond_71
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_72

    .line 1486
    :cond_72
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_73

    .line 1500
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v9       #_arg6:I
    .restart local v16       #_result:Z
    :cond_73
    const/4 v2, 0x0

    goto :goto_74

    .line 1505
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v9           #_arg6:I
    .end local v16           #_result:Z
    :sswitch_6d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_74

    .line 1508
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1514
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    .line 1515
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1521
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1523
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1525
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1526
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->findInfoResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;III)Z

    move-result v16

    .line 1527
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    if-eqz v16, :cond_76

    const/4 v2, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1529
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1511
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_74
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_75

    .line 1518
    :cond_75
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_76

    .line 1528
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_76
    const/4 v2, 0x0

    goto :goto_77

    .line 1533
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_6e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_77

    .line 1536
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1542
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1544
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_78

    .line 1545
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 1551
    .local v5, _arg2:Landroid/os/ParcelUuid;
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1553
    .local v6, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1555
    .restart local v7       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg5:I
    move-object/from16 v2, p0

    .line 1556
    invoke-virtual/range {v2 .. v8}, Landroid/bluetooth/IBluetooth$Stub;->readByTypeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;ILandroid/os/ParcelUuid;[BII)Z

    move-result v16

    .line 1557
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    if-eqz v16, :cond_79

    const/4 v2, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1539
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :cond_77
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_78

    .line 1548
    .restart local v4       #_arg1:I
    :cond_78
    const/4 v5, 0x0

    .restart local v5       #_arg2:Landroid/os/ParcelUuid;
    goto :goto_79

    .line 1558
    .restart local v6       #_arg3:[B
    .restart local v7       #_arg4:I
    .restart local v8       #_arg5:I
    .restart local v16       #_result:Z
    :cond_79
    const/4 v2, 0x0

    goto :goto_7a

    .line 1563
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Landroid/os/ParcelUuid;
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:I
    .end local v8           #_arg5:I
    .end local v16           #_result:Z
    :sswitch_6f
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7a

    .line 1566
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1572
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    .line 1573
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1579
    .local v4, _arg1:Landroid/os/ParcelUuid;
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1581
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1583
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg4:I
    move-object/from16 v2, p0

    .line 1584
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetooth$Stub;->readResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;[BII)Z

    move-result v16

    .line 1585
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    if-eqz v16, :cond_7c

    const/4 v2, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1569
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :cond_7a
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7b

    .line 1576
    :cond_7b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_7c

    .line 1586
    .restart local v5       #_arg2:[B
    .restart local v6       #_arg3:I
    .restart local v7       #_arg4:I
    .restart local v16       #_result:Z
    :cond_7c
    const/4 v2, 0x0

    goto :goto_7d

    .line 1591
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v7           #_arg4:I
    .end local v16           #_result:Z
    :sswitch_70
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7d

    .line 1594
    sget-object v2, Landroid/bluetooth/BluetoothGattAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattAppConfiguration;

    .line 1600
    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 1601
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 1607
    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1609
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1610
    .restart local v6       #_arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/bluetooth/IBluetooth$Stub;->writeResponse(Landroid/bluetooth/BluetoothGattAppConfiguration;Landroid/os/ParcelUuid;II)Z

    move-result v16

    .line 1611
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    if-eqz v16, :cond_7f

    const/4 v2, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :cond_7d
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    goto :goto_7e

    .line 1604
    :cond_7e
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_7f

    .line 1612
    .restart local v5       #_arg2:I
    .restart local v6       #_arg3:I
    .restart local v16       #_result:Z
    :cond_7f
    const/4 v2, 0x0

    goto :goto_80

    .line 1617
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothGattAppConfiguration;
    .end local v4           #_arg1:Landroid/os/ParcelUuid;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v16           #_result:Z
    :sswitch_71
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectSap()V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1624
    :sswitch_72
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_80

    .line 1627
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1633
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1634
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->isHostPatchRequired(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v16

    .line 1635
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    if-eqz v16, :cond_81

    const/4 v2, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1630
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :cond_80
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_81

    .line 1636
    .restart local v4       #_arg1:I
    .restart local v16       #_result:Z
    :cond_81
    const/4 v2, 0x0

    goto :goto_82

    .line 1641
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:I
    .end local v16           #_result:Z
    :sswitch_73
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disconnectDUN()V

    .line 1643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1648
    :sswitch_74
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->disableDUN()Z

    move-result v16

    .line 1650
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    if-eqz v16, :cond_82

    const/4 v2, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1651
    :cond_82
    const/4 v2, 0x0

    goto :goto_83

    .line 1656
    .end local v16           #_result:Z
    :sswitch_75
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enableDUN()Z

    move-result v16

    .line 1658
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    if-eqz v16, :cond_83

    const/4 v2, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1659
    :cond_83
    const/4 v2, 0x0

    goto :goto_84

    .line 1664
    .end local v16           #_result:Z
    :sswitch_76
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v4

    .line 1669
    .local v4, _arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->addToPreferredDeviceList(Ljava/lang/String;Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;)Z

    move-result v16

    .line 1670
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    if-eqz v16, :cond_84

    const/4 v2, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1671
    :cond_84
    const/4 v2, 0x0

    goto :goto_85

    .line 1676
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v16           #_result:Z
    :sswitch_77
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1680
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v4

    .line 1681
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->removeFromPreferredDeviceList(Ljava/lang/String;Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;)Z

    move-result v16

    .line 1682
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    if-eqz v16, :cond_85

    const/4 v2, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1683
    :cond_85
    const/4 v2, 0x0

    goto :goto_86

    .line 1688
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v16           #_result:Z
    :sswitch_78
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v3

    .line 1691
    .local v3, _arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->clearPreferredDeviceList(Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;)Z

    move-result v16

    .line 1692
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    if-eqz v16, :cond_86

    const/4 v2, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1693
    :cond_86
    const/4 v2, 0x0

    goto :goto_87

    .line 1698
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v16           #_result:Z
    :sswitch_79
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v3

    .line 1701
    .restart local v3       #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->gattConnectToPreferredDeviceList(Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;)Z

    move-result v16

    .line 1702
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    if-eqz v16, :cond_87

    const/4 v2, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1703
    :cond_87
    const/4 v2, 0x0

    goto :goto_88

    .line 1708
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v16           #_result:Z
    :sswitch_7a
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v3

    .line 1711
    .restart local v3       #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetooth$Stub;->gattCancelConnectToPreferredDeviceList(Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;)Z

    move-result v16

    .line 1712
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    if-eqz v16, :cond_88

    const/4 v2, 0x1

    :goto_89
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1713
    :cond_88
    const/4 v2, 0x0

    goto :goto_89

    .line 1718
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v16           #_result:Z
    :sswitch_7b
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_89

    .line 1721
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1727
    .local v3, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v4

    .line 1729
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1730
    .local v5, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->addToPreferredDeviceListWrapper(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;Ljava/lang/String;)Z

    move-result v16

    .line 1731
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    if-eqz v16, :cond_8a

    const/4 v2, 0x1

    :goto_8b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :cond_89
    const/4 v3, 0x0

    .restart local v3       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_8a

    .line 1732
    .restart local v4       #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .restart local v5       #_arg2:Ljava/lang/String;
    .restart local v16       #_result:Z
    :cond_8a
    const/4 v2, 0x0

    goto :goto_8b

    .line 1737
    .end local v3           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #_arg1:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_7c
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothPreferredDeviceListCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;

    move-result-object v3

    .line 1741
    .local v3, _arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8b

    .line 1742
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1748
    .local v4, _arg1:Landroid/bluetooth/BluetoothDevice;
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1749
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetooth$Stub;->gattCancelConnectToPreferredDeviceListWrapper(Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v16

    .line 1750
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    if-eqz v16, :cond_8c

    const/4 v2, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1745
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :cond_8b
    const/4 v4, 0x0

    .restart local v4       #_arg1:Landroid/bluetooth/BluetoothDevice;
    goto :goto_8c

    .line 1751
    .restart local v5       #_arg2:Ljava/lang/String;
    .restart local v16       #_result:Z
    :cond_8c
    const/4 v2, 0x0

    goto :goto_8d

    .line 1756
    .end local v3           #_arg0:Landroid/bluetooth/IBluetoothPreferredDeviceListCallback;
    .end local v4           #_arg1:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v16           #_result:Z
    :sswitch_7d
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->enterTestMode()I

    move-result v16

    .line 1758
    .local v16, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1764
    .end local v16           #_result:I
    :sswitch_7e
    const-string v2, "android.bluetooth.IBluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->quitTestMode()I

    move-result v16

    .line 1766
    .restart local v16       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
