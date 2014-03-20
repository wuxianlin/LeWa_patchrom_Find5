.class public Landroid/hardware/gesturedev/GestureResult$GSVector;
.super Ljava/lang/Object;
.source "GestureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gesturedev/GestureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSVector"
.end annotation


# instance fields
.field public error:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->x:F

    .line 33
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->y:F

    .line 34
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->z:F

    .line 35
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult$GSVector;->error:F

    .line 38
    return-void
.end method
