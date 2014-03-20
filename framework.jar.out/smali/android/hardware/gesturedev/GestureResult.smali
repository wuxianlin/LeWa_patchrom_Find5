.class public Landroid/hardware/gesturedev/GestureResult;
.super Ljava/lang/Object;
.source "GestureResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gesturedev/GestureResult$GSVector;
    }
.end annotation


# static fields
.field public static final GESTURE_EVENT_RESULT_SUBTYPE_DOWN:I = 0x1f8

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_LEFT:I = 0x1f5

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_LEFT_FIST:I = 0x12f

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_LEFT_OPEN_PALM:I = 0x12d

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_MOUSE_CLICK:I = 0x25b

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_MOUSE_DOWN:I = 0x25a

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_MOUSE_UP:I = 0x259

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_NORMALIZED:I = 0x191

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_RIGHT:I = 0x1f6

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_RIGHT_FIST:I = 0x130

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_RIGHT_OPEN_PALM:I = 0x12e

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_SCREEN:I = 0x192

.field public static final GESTURE_EVENT_RESULT_SUBTYPE_UP:I = 0x1f7

.field public static final GESTURE_EVENT_RESULT_TYPE_DETECTION:I = 0xc9

.field public static final GESTURE_EVENT_RESULT_TYPE_ENGAGEMENT:I = 0xca

.field public static final GESTURE_EVENT_RESULT_TYPE_MOUSE:I = 0xcd

.field public static final GESTURE_EVENT_RESULT_TYPE_NONE:I = 0x0

.field public static final GESTURE_EVENT_RESULT_TYPE_SWIPE:I = 0xcc

.field public static final GESTURE_EVENT_RESULT_TYPE_TRACKING:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "GestureResult"


# instance fields
.field public confidence:F

.field public extension:[B

.field public id:I

.field public location:[Landroid/hardware/gesturedev/GestureResult$GSVector;

.field public subtype:I

.field public timestamp:J

.field public type:I

.field public velocity:F

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult;->version:I

    .line 85
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult;->type:I

    .line 104
    iput v0, p0, Landroid/hardware/gesturedev/GestureResult;->subtype:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gesturedev/GestureResult;->timestamp:J

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gesturedev/GestureResult;->id:I

    .line 119
    iput v2, p0, Landroid/hardware/gesturedev/GestureResult;->confidence:F

    .line 124
    iput-object v3, p0, Landroid/hardware/gesturedev/GestureResult;->location:[Landroid/hardware/gesturedev/GestureResult$GSVector;

    .line 129
    iput v2, p0, Landroid/hardware/gesturedev/GestureResult;->velocity:F

    .line 136
    iput-object v3, p0, Landroid/hardware/gesturedev/GestureResult;->extension:[B

    .line 29
    return-void
.end method
