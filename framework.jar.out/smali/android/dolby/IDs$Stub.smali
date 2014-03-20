.class public abstract Landroid/dolby/IDs$Stub;
.super Landroid/os/Binder;
.source "IDs.java"

# interfaces
.implements Landroid/dolby/IDs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/IDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/IDs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.dolby.IDs"

.field static final TRANSACTION_getBandCount:I = 0x6

.field static final TRANSACTION_getBandFrequencies:I = 0x7

.field static final TRANSACTION_getDsApParam:I = 0x17

.field static final TRANSACTION_getDsApParamLength:I = 0x18

.field static final TRANSACTION_getDsApVersion:I = 0xe

.field static final TRANSACTION_getDsOn:I = 0x2

.field static final TRANSACTION_getDsVersion:I = 0x10

.field static final TRANSACTION_getGeq:I = 0x15

.field static final TRANSACTION_getIeqPreset:I = 0x12

.field static final TRANSACTION_getMonoSpeaker:I = 0xf

.field static final TRANSACTION_getProfileCount:I = 0x4

.field static final TRANSACTION_getProfileModified:I = 0x13

.field static final TRANSACTION_getProfileNames:I = 0x5

.field static final TRANSACTION_getProfileSettings:I = 0xb

.field static final TRANSACTION_getSelectedProfile:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1b

.field static final TRANSACTION_registerDsApParamEvents:I = 0x19

.field static final TRANSACTION_registerVisualizerData:I = 0x1e

.field static final TRANSACTION_resetProfile:I = 0xc

.field static final TRANSACTION_setClientHandle:I = 0x1d

.field static final TRANSACTION_setDsApParam:I = 0x16

.field static final TRANSACTION_setDsOn:I = 0x1

.field static final TRANSACTION_setGeq:I = 0x14

.field static final TRANSACTION_setIeqPreset:I = 0x11

.field static final TRANSACTION_setNonPersistentMode:I = 0x3

.field static final TRANSACTION_setProfileName:I = 0xd

.field static final TRANSACTION_setProfileSettings:I = 0xa

.field static final TRANSACTION_setSelectedProfile:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x1c

.field static final TRANSACTION_unregisterDsApParamEvents:I = 0x1a

.field static final TRANSACTION_unregisterVisualizerData:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.dolby.IDs"

    invoke-virtual {p0, p0, v0}, Landroid/dolby/IDs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/dolby/IDs;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.dolby.IDs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/dolby/IDs;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/dolby/IDs;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/dolby/IDs$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/dolby/IDs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 487
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v7

    .line 50
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setDsOn(Z)I

    move-result v6

    .line 51
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :sswitch_2
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, _arg0_length:I
    if-gez v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 66
    .local v0, _arg0:[Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsOn([Z)I

    move-result v6

    .line 67
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:[Z
    .end local v6           #_result:I
    :cond_1
    new-array v0, v1, [Z

    .restart local v0       #_arg0:[Z
    goto :goto_1

    .line 74
    .end local v0           #_arg0:[Z
    .end local v1           #_arg0_length:I
    :sswitch_3
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v0, v7

    .line 77
    .local v0, _arg0:Z
    :cond_2
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setNonPersistentMode(Z)I

    move-result v6

    .line 78
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:Z
    .end local v6           #_result:I
    :sswitch_4
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_3

    .line 88
    const/4 v0, 0x0

    .line 93
    .local v0, _arg0:[I
    :goto_2
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getProfileCount([I)I

    move-result v6

    .line 94
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:[I
    .end local v6           #_result:I
    :cond_3
    new-array v0, v1, [I

    .restart local v0       #_arg0:[I
    goto :goto_2

    .line 101
    .end local v0           #_arg0:[I
    .end local v1           #_arg0_length:I
    :sswitch_5
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_4

    .line 105
    const/4 v0, 0x0

    .line 110
    .local v0, _arg0:[Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getProfileNames([Ljava/lang/String;)I

    move-result v6

    .line 111
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v6           #_result:I
    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0       #_arg0:[Ljava/lang/String;
    goto :goto_3

    .line 118
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg0_length:I
    :sswitch_6
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_5

    .line 122
    const/4 v0, 0x0

    .line 127
    .local v0, _arg0:[I
    :goto_4
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getBandCount([I)I

    move-result v6

    .line 128
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:[I
    .end local v6           #_result:I
    :cond_5
    new-array v0, v1, [I

    .restart local v0       #_arg0:[I
    goto :goto_4

    .line 135
    .end local v0           #_arg0:[I
    .end local v1           #_arg0_length:I
    :sswitch_7
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 144
    .restart local v0       #_arg0:[I
    :goto_5
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getBandFrequencies([I)I

    move-result v6

    .line 145
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:[I
    .end local v6           #_result:I
    :cond_6
    new-array v0, v1, [I

    .restart local v0       #_arg0:[I
    goto :goto_5

    .line 152
    .end local v0           #_arg0:[I
    .end local v1           #_arg0_length:I
    :sswitch_8
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setSelectedProfile(I)I

    move-result v6

    .line 156
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_9
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_7

    .line 166
    const/4 v0, 0x0

    .line 171
    .local v0, _arg0:[I
    :goto_6
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getSelectedProfile([I)I

    move-result v6

    .line 172
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 169
    .end local v0           #_arg0:[I
    .end local v6           #_result:I
    :cond_7
    new-array v0, v1, [I

    .restart local v0       #_arg0:[I
    goto :goto_6

    .line 179
    .end local v0           #_arg0:[I
    .end local v1           #_arg0_length:I
    :sswitch_a
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 184
    sget-object v8, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/DsClientSettings;

    .line 189
    .local v2, _arg1:Landroid/dolby/DsClientSettings;
    :goto_7
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setProfileSettings(ILandroid/dolby/DsClientSettings;)I

    move-result v6

    .line 190
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v2           #_arg1:Landroid/dolby/DsClientSettings;
    .end local v6           #_result:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/dolby/DsClientSettings;
    goto :goto_7

    .line 196
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/dolby/DsClientSettings;
    :sswitch_b
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 201
    .local v3, _arg1_length:I
    if-gez v3, :cond_9

    .line 202
    const/4 v2, 0x0

    .line 207
    .local v2, _arg1:[Landroid/dolby/DsClientSettings;
    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v6

    .line 208
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p3, v2, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 205
    .end local v2           #_arg1:[Landroid/dolby/DsClientSettings;
    .end local v6           #_result:I
    :cond_9
    new-array v2, v3, [Landroid/dolby/DsClientSettings;

    .restart local v2       #_arg1:[Landroid/dolby/DsClientSettings;
    goto :goto_8

    .line 215
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[Landroid/dolby/DsClientSettings;
    .end local v3           #_arg1_length:I
    :sswitch_c
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->resetProfile(I)I

    move-result v6

    .line 219
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v0           #_arg0:I
    .end local v6           #_result:I
    :sswitch_d
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setProfileName(ILjava/lang/String;)I

    move-result v6

    .line 231
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_e
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_a

    .line 241
    const/4 v0, 0x0

    .line 246
    .local v0, _arg0:[Ljava/lang/String;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsApVersion([Ljava/lang/String;)I

    move-result v6

    .line 247
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v6           #_result:I
    :cond_a
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0       #_arg0:[Ljava/lang/String;
    goto :goto_9

    .line 254
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg0_length:I
    :sswitch_f
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_b

    .line 258
    const/4 v0, 0x0

    .line 263
    .local v0, _arg0:[Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getMonoSpeaker([Z)I

    move-result v6

    .line 264
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 261
    .end local v0           #_arg0:[Z
    .end local v6           #_result:I
    :cond_b
    new-array v0, v1, [Z

    .restart local v0       #_arg0:[Z
    goto :goto_a

    .line 271
    .end local v0           #_arg0:[Z
    .end local v1           #_arg0_length:I
    :sswitch_10
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1       #_arg0_length:I
    if-gez v1, :cond_c

    .line 275
    const/4 v0, 0x0

    .line 280
    .local v0, _arg0:[Ljava/lang/String;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->getDsVersion([Ljava/lang/String;)I

    move-result v6

    .line 281
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v6           #_result:I
    :cond_c
    new-array v0, v1, [Ljava/lang/String;

    .restart local v0       #_arg0:[Ljava/lang/String;
    goto :goto_b

    .line 288
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg0_length:I
    :sswitch_11
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setIeqPreset(II)I

    move-result v6

    .line 294
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :sswitch_12
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 305
    .restart local v3       #_arg1_length:I
    if-gez v3, :cond_d

    .line 306
    const/4 v2, 0x0

    .line 311
    .local v2, _arg1:[I
    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getIeqPreset(I[I)I

    move-result v6

    .line 312
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 309
    .end local v2           #_arg1:[I
    .end local v6           #_result:I
    :cond_d
    new-array v2, v3, [I

    .restart local v2       #_arg1:[I
    goto :goto_c

    .line 319
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v3           #_arg1_length:I
    :sswitch_13
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .restart local v3       #_arg1_length:I
    if-gez v3, :cond_e

    .line 325
    const/4 v2, 0x0

    .line 330
    .restart local v2       #_arg1:[I
    :goto_d
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getProfileModified(I[I)I

    move-result v6

    .line 331
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 328
    .end local v2           #_arg1:[I
    .end local v6           #_result:I
    :cond_e
    new-array v2, v3, [I

    .restart local v2       #_arg1:[I
    goto :goto_d

    .line 338
    .end local v0           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v3           #_arg1_length:I
    :sswitch_14
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 345
    .local v4, _arg2:[F
    invoke-virtual {p0, v0, v2, v4}, Landroid/dolby/IDs$Stub;->setGeq(II[F)I

    move-result v6

    .line 346
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v4           #_arg2:[F
    .end local v6           #_result:I
    :sswitch_15
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 359
    .local v5, _arg2_length:I
    if-gez v5, :cond_f

    .line 360
    const/4 v4, 0x0

    .line 365
    .restart local v4       #_arg2:[F
    :goto_e
    invoke-virtual {p0, v0, v2, v4}, Landroid/dolby/IDs$Stub;->getGeq(II[F)I

    move-result v6

    .line 366
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    .line 363
    .end local v4           #_arg2:[F
    .end local v6           #_result:I
    :cond_f
    new-array v4, v5, [F

    .restart local v4       #_arg2:[F
    goto :goto_e

    .line 373
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v4           #_arg2:[F
    .end local v5           #_arg2_length:I
    :sswitch_16
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 378
    .local v2, _arg1:[I
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->setDsApParam(Ljava/lang/String;[I)I

    move-result v6

    .line 379
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[I
    .end local v6           #_result:I
    :sswitch_17
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 390
    .restart local v3       #_arg1_length:I
    if-gez v3, :cond_10

    .line 391
    const/4 v2, 0x0

    .line 396
    .restart local v2       #_arg1:[I
    :goto_f
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getDsApParam(Ljava/lang/String;[I)I

    move-result v6

    .line 397
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 394
    .end local v2           #_arg1:[I
    .end local v6           #_result:I
    :cond_10
    new-array v2, v3, [I

    .restart local v2       #_arg1:[I
    goto :goto_f

    .line 404
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[I
    .end local v3           #_arg1_length:I
    :sswitch_18
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .restart local v3       #_arg1_length:I
    if-gez v3, :cond_11

    .line 410
    const/4 v2, 0x0

    .line 415
    .restart local v2       #_arg1:[I
    :goto_10
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v6

    .line 416
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 413
    .end local v2           #_arg1:[I
    .end local v6           #_result:I
    :cond_11
    new-array v2, v3, [I

    .restart local v2       #_arg1:[I
    goto :goto_10

    .line 423
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[I
    .end local v3           #_arg1_length:I
    :sswitch_19
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->registerDsApParamEvents(I)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 432
    .end local v0           #_arg0:I
    :sswitch_1a
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 435
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterDsApParamEvents(I)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 441
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v0

    .line 445
    .local v0, _arg0:Landroid/dolby/IDsServiceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/dolby/IDs$Stub;->registerCallback(Landroid/dolby/IDsServiceCallbacks;I)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 452
    .end local v0           #_arg0:Landroid/dolby/IDsServiceCallbacks;
    .end local v2           #_arg1:I
    :sswitch_1c
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v0

    .line 455
    .restart local v0       #_arg0:Landroid/dolby/IDsServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 461
    .end local v0           #_arg0:Landroid/dolby/IDsServiceCallbacks;
    :sswitch_1d
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->setClientHandle(I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 470
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->registerVisualizerData(I)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 479
    .end local v0           #_arg0:I
    :sswitch_1f
    const-string v8, "android.dolby.IDs"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 482
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/dolby/IDs$Stub;->unregisterVisualizerData(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
