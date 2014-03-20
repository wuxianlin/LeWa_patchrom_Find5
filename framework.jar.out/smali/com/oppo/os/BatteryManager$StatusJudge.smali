.class public Lcom/oppo/os/BatteryManager$StatusJudge;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/os/BatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusJudge"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryTempStatus(I)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 33
    .local v0, mTemperatureStatus:I
    const/16 v1, -0x64

    if-ge p0, v1, :cond_0

    const/16 v1, -0x15e

    if-eq p0, v1, :cond_0

    .line 35
    const/16 v0, 0xe

    .line 42
    :goto_0
    return v0

    .line 36
    :cond_0
    const/16 v1, 0x226

    if-le p0, v1, :cond_1

    .line 37
    const/16 v0, 0xf

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getBatteryVolStatus(I)I
    .locals 2
    .parameter "batteryVol"

    .prologue
    .line 46
    const/4 v0, -0x1

    .line 48
    .local v0, mBatteryVolStatus:I
    const/16 v1, 0x1194

    if-gt v1, p0, :cond_0

    .line 49
    const/16 v0, 0xd

    .line 57
    :goto_0
    return v0

    .line 50
    :cond_0
    const/16 v1, 0xce4

    if-le v1, p0, :cond_1

    .line 51
    const/16 v0, 0xc

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getChargeVolStatus(I)I
    .locals 2
    .parameter "chargeVol"

    .prologue
    .line 61
    const/4 v0, -0x1

    .line 63
    .local v0, mChargeVolStatus:I
    const/16 v1, 0x16a8

    if-gt v1, p0, :cond_0

    .line 64
    const/16 v0, 0xa

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    const/16 v1, 0xdac

    if-gt v1, p0, :cond_1

    const/16 v1, 0x1130

    if-gt p0, v1, :cond_1

    .line 66
    const/16 v0, 0x9

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
