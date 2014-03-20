.class Lcom/android/server/power/PowerManagerService$OppoHelper;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jun.Zhang@Plf.Framework, add for inject oppo code"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoHelper"
.end annotation


# static fields
.field static mButtonLight:Lcom/android/server/LightsService$Light;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setButtonLight(Lcom/android/server/LightsService;)V
    .locals 1
    .parameter "lightsService"

    .prologue
    .line 431
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 432
    return-void
.end method

.method static turnOffButtonLight()V
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 451
    return-void
.end method

.method static updateButtonBrightness(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 7
    .parameter "service"
    .parameter "condition"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getUserActivitySumm()I

    move-result v3

    .line 435
    .local v3, tmp:I
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v1, v4

    .line 436
    .local v1, b1:Z
    :goto_0
    if-nez v3, :cond_2

    move v2, v4

    .line 437
    .local v2, b2:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getWakefulness()I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 439
    .local v0, b:Z
    :goto_2
    if-eqz p1, :cond_4

    .line 440
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 441
    sget-object v4, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getScreenBrightDefault()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 447
    :cond_0
    :goto_3
    return-void

    .end local v0           #b:Z
    .end local v1           #b1:Z
    .end local v2           #b2:Z
    :cond_1
    move v1, v5

    .line 435
    goto :goto_0

    .restart local v1       #b1:Z
    :cond_2
    move v2, v5

    .line 436
    goto :goto_1

    .restart local v2       #b2:Z
    :cond_3
    move v0, v5

    .line 437
    goto :goto_2

    .line 444
    .restart local v0       #b:Z
    :cond_4
    sget-object v4, Lcom/android/server/power/PowerManagerService$OppoHelper;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getScreenBrightDefault()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_3
.end method
