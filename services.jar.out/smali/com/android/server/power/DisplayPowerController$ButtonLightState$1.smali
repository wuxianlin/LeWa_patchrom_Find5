.class Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;
.super Landroid/util/IntProperty;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController$ButtonLightState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Lcom/android/server/power/DisplayPowerController$ButtonLightState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerController$ButtonLightState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController$ButtonLightState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;->this$1:Lcom/android/server/power/DisplayPowerController$ButtonLightState;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/power/DisplayPowerController$ButtonLightState;)Ljava/lang/Integer;
    .locals 1
    .parameter "object"

    .prologue
    .line 1422
    invoke-virtual {p1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->getButtonBrightness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1412
    check-cast p1, Lcom/android/server/power/DisplayPowerController$ButtonLightState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;->get(Lcom/android/server/power/DisplayPowerController$ButtonLightState;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/server/power/DisplayPowerController$ButtonLightState;I)V
    .locals 2
    .parameter "object"
    .parameter "value"

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;->this$1:Lcom/android/server/power/DisplayPowerController$ButtonLightState;

    monitor-enter v1

    .line 1416
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/power/DisplayPowerController$ButtonLightState;->setButtonBrightnessLocked(I)V

    .line 1417
    monitor-exit v1

    .line 1418
    return-void

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1412
    check-cast p1, Lcom/android/server/power/DisplayPowerController$ButtonLightState;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController$ButtonLightState$1;->setValue(Lcom/android/server/power/DisplayPowerController$ButtonLightState;I)V

    return-void
.end method
