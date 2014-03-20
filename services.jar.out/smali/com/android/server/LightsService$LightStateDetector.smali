.class final Lcom/android/server/LightsService$LightStateDetector;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LightStateDetector"
.end annotation


# instance fields
.field private mLight:Lcom/android/server/LightsService$Light;


# direct methods
.method public constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 1
    .parameter "lights"
    .parameter "lightId"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1, p2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LightsService$LightStateDetector;->mLight:Lcom/android/server/LightsService$Light;

    .line 154
    return-void
.end method


# virtual methods
.method public getLightState()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/LightsService$LightStateDetector;->mLight:Lcom/android/server/LightsService$Light;

    #getter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v0}, Lcom/android/server/LightsService$Light;->access$300(Lcom/android/server/LightsService$Light;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
