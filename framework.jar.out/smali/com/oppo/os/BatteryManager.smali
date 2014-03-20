.class public Lcom/oppo/os/BatteryManager;
.super Landroid/os/BatteryManager;
.source "BatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/os/BatteryManager$StatusJudge;
    }
.end annotation


# static fields
.field public static final BATTERY_VOL_HIGH:I = 0xd

.field public static final BATTERY_VOL_LOW:I = 0xc

.field public static final BATTERY_VOL_NORMAL:I = 0x2

.field public static final BATTERY_VOL_UNKNOW:I = 0xb

.field public static final CHARGER_VOL_HIGH:I = 0xa

.field public static final CHARGER_VOL_LOW:I = 0x9

.field public static final CHARGER_VOL_NORMAL:I = 0x2

.field public static final CHARGER_VOL_UNKNOW:I = 0x8

.field public static final TEMPERATURE_STATUS_HIGH:I = 0xf

.field public static final TEMPERATURE_STATUS_LOW:I = 0xe

.field public static final TEMPERATURE_STATUS_NORMAL:I = 0x2

.field public static final TEMPERATURE_THRESHOLD_HIGH:I = 0x226

.field public static final TEMPERATURE_THRESHOLD_LOW:I = -0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/BatteryManager;-><init>()V

    .line 28
    return-void
.end method
