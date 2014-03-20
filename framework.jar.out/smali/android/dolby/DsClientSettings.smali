.class public Landroid/dolby/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dolby/DsClientSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsClientSettings"

.field public static final basicProfileParams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDialogEnhancerOn:Z

.field private isGeqOn:Z

.field private isHeadphoneVirtualizerOn:Z

.field private isSpeakerVirtualizerOn:Z

.field private isVolumeLevellerOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    .line 77
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "geon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "deon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "dvle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "vdhe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "vspe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string v1, "ieon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Landroid/dolby/DsClientSettings$1;

    invoke-direct {v0}, Landroid/dolby/DsClientSettings$1;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 121
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 122
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 123
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 124
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 136
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogEnhancerOn()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    return v0
.end method

.method public getGeqOn()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    return v0
.end method

.method public getHeadphoneVirtualizerOn()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    return v0
.end method

.method public getSpeakerVirtualizerOn()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return v0
.end method

.method public getVolumeLevellerOn()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 166
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 168
    .local v0, settings:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 170
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 171
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 172
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 173
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 174
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 175
    return-void
.end method

.method public setDialogEnhancerOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 204
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 205
    return-void
.end method

.method public setGeqOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 184
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 185
    return-void
.end method

.method public setHeadphoneVirtualizerOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 245
    return-void
.end method

.method public setSpeakerVirtualizerOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 264
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 265
    return-void
.end method

.method public setVolumeLevellerOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 147
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 149
    .local v0, settings:[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    aput-boolean v2, v0, v1

    .line 150
    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    aput-boolean v2, v0, v1

    .line 151
    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    aput-boolean v2, v0, v1

    .line 152
    const/4 v1, 0x3

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    aput-boolean v2, v0, v1

    .line 153
    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    aput-boolean v2, v0, v1

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 156
    return-void
.end method
