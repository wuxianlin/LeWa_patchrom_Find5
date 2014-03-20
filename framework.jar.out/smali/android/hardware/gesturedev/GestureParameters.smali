.class public Landroid/hardware/gesturedev/GestureParameters;
.super Ljava/lang/Object;
.source "GestureParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;
    }
.end annotation


# static fields
.field public static final GESTURE_CLICK_MODE_HOVER:I = 0x1

.field public static final GESTURE_CLICK_MODE_NONE:I = 0x0

.field public static final GESTURE_CLICK_MODE_POSE:I = 0x2

.field public static final GESTURE_COORDINATE_MODE_NORMALIZED:I = 0x0

.field public static final GESTURE_COORDINATE_MODE_SCREEN:I = 0x1

.field public static final GESTURE_CURSOR_TYPE_CROSS:I = 0x1

.field public static final GESTURE_CURSOR_TYPE_OFF:I = 0x0

.field public static final GESTURE_MODE_ENGAGEMENT:I = 0x67

.field public static final GESTURE_MODE_ENGAGEMENT_SWIPE:I = 0x68

.field public static final GESTURE_MODE_HAND_DETECT:I = 0x66

.field public static final GESTURE_MODE_HAND_TRACKING:I = 0x69

.field public static final GESTURE_MODE_NEAR_SWIPE:I = 0x65

.field public static final GESTURE_MODE_OFF:I = 0x0

.field public static final GESTURE_ORIENTATION_0:I = 0x0

.field public static final GESTURE_ORIENTATION_180:I = 0x2

.field public static final GESTURE_ORIENTATION_270:I = 0x3

.field public static final GESTURE_ORIENTATION_90:I = 0x1

.field public static final GESTURE_SUB_MODE_NONE:I = 0x0

.field private static final KEY_GESTURE_CAMERA_INPUT:Ljava/lang/String; = "gs-ctrl-camera-input"

.field private static final KEY_GESTURE_CLICK_MODE:Ljava/lang/String; = "gs-ctrl-click-mode"

.field private static final KEY_GESTURE_COORDINATE_MODE:Ljava/lang/String; = "gs-ctrl-coord-mode"

.field private static final KEY_GESTURE_COORDINATE_RANGE:Ljava/lang/String; = "gs-ctrl-coord-range"

.field private static final KEY_GESTURE_CURSOR_TYPE:Ljava/lang/String; = "gs-ctrl-cursor-type"

.field private static final KEY_GESTURE_ENABLE_TOUCH:Ljava/lang/String; = "gs-ctrl-enable-touch"

.field private static final KEY_GESTURE_EXTENDED_CONFIG:Ljava/lang/String; = "gs-ctrl-extended-config"

.field private static final KEY_GESTURE_MODE:Ljava/lang/String; = "gs-ctrl-mode"

.field private static final KEY_GESTURE_ORIENTATION:Ljava/lang/String; = "gs-ctrl-orientation"

.field private static final KEY_GESTURE_SUB_MODE:Ljava/lang/String; = "gs-ctrl-submode"

.field private static final TAG:Ljava/lang/String; = "GestureParameter"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    .line 83
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 530
    :try_start_0
    iget-object v2, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 531
    .local v1, val:I
    if-nez v1, :cond_0

    .line 532
    const/4 p2, 0x0

    .line 537
    .end local v1           #val:I
    .end local p2
    :goto_0
    return p2

    .line 534
    .restart local v1       #val:I
    .restart local p2
    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    .line 536
    .end local v1           #val:I
    :catch_0
    move-exception v0

    .line 537
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 514
    .end local p2
    :goto_0
    return p2

    .line 513
    .restart local p2
    :catch_0
    move-exception v0

    .line 514
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 523
    .end local p2
    :goto_0
    return p2

    .line 522
    .restart local p2
    :catch_0
    move-exception v0

    .line 523
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    if-nez p1, :cond_1

    .line 456
    const/4 v0, 0x0

    .line 464
    :cond_0
    return-object v0

    .line 459
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitFloat(Ljava/lang/String;[F)V
    .locals 5
    .parameter "str"
    .parameter "output"

    .prologue
    .line 498
    if-nez p1, :cond_1

    .line 507
    :cond_0
    return-void

    .line 501
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 503
    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 504
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, token:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, p2, v0

    move v0, v1

    .line 506
    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 470
    if-nez p1, :cond_1

    move-object v0, v3

    .line 481
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    .end local v1           #token:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 480
    goto :goto_0
.end method

.method private splitInt(Ljava/lang/String;[I)V
    .locals 5
    .parameter "str"
    .parameter "output"

    .prologue
    .line 485
    if-nez p1, :cond_1

    .line 494
    :cond_0
    return-void

    .line 488
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 490
    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, token:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, p2, v0

    move v0, v1

    .line 493
    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0
.end method

.method private splitRange(Ljava/lang/String;)Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;
    .locals 10
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 545
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_2

    .line 547
    :cond_0
    const-string v6, "GestureParameter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid range list string="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 576
    :cond_1
    :goto_0
    return-object v1

    .line 551
    :cond_2
    new-instance v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;

    invoke-direct {v1}, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;-><init>()V

    .line 552
    .local v1, coordRange:Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;
    const/4 v3, 0x1

    .line 553
    .local v3, fromIndex:I
    const/4 v0, 0x0

    .line 555
    .local v0, axisIndex:I
    :cond_3
    const/4 v6, 0x2

    new-array v4, v6, [F

    .line 556
    .local v4, range:[F
    const-string v6, "),("

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 557
    .local v2, endIndex:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 559
    :cond_4
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Landroid/hardware/gesturedev/GestureParameters;->splitFloat(Ljava/lang/String;[F)V

    .line 560
    if-nez v0, :cond_5

    .line 561
    aget v6, v4, v8

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->x_min:F

    .line 562
    aget v6, v4, v9

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->x_max:F

    .line 570
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 571
    add-int/lit8 v3, v2, 0x3

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_3

    .line 574
    const/4 v6, 0x3

    if-ge v0, v6, :cond_1

    move-object v1, v5

    .line 575
    goto :goto_0

    .line 563
    :cond_5
    if-ne v0, v9, :cond_6

    .line 564
    aget v6, v4, v8

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->y_min:F

    .line 565
    aget v6, v4, v9

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->y_max:F

    goto :goto_1

    .line 567
    :cond_6
    aget v6, v4, v8

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->z_min:F

    .line 568
    aget v6, v4, v9

    iput v6, v1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->z_max:F

    goto :goto_1
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 98
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v3, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 107
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCameraInput()I
    .locals 1

    .prologue
    .line 397
    const-string v0, "gs-ctrl-camera-input"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClickMode()I
    .locals 1

    .prologue
    .line 369
    const-string v0, "gs-ctrl-click-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCoordinateMode()I
    .locals 1

    .prologue
    .line 320
    const-string v0, "gs-ctrl-coord-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCoordinateRange()Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;
    .locals 2

    .prologue
    .line 431
    const-string v1, "gs-ctrl-coord-range"

    invoke-virtual {p0, v1}, Landroid/hardware/gesturedev/GestureParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, str:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->splitRange(Ljava/lang/String;)Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;

    move-result-object v1

    return-object v1
.end method

.method public getCursorType()I
    .locals 1

    .prologue
    .line 344
    const-string v0, "gs-ctrl-cursor-type"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtendedConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, "gs-ctrl-extended-config"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGestureMode()I
    .locals 1

    .prologue
    .line 221
    const-string v0, "gs-ctrl-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGestureSubMode()I
    .locals 1

    .prologue
    .line 248
    const-string v0, "gs-ctrl-submode"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 203
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 294
    const-string v0, "gs-ctrl-orientation"

    invoke-virtual {p0, v0}, Landroid/hardware/gesturedev/GestureParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTouchEnabled()Z
    .locals 2

    .prologue
    .line 279
    const-string v0, "gs-ctrl-enable-touch"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/gesturedev/GestureParameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x3b

    const/4 v1, -0x1

    .line 158
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 159
    :cond_0
    const-string v0, "GestureParameter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 164
    :cond_2
    const-string v0, "GestureParameter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCameraInput(I)V
    .locals 1
    .parameter "camId"

    .prologue
    .line 388
    const-string v0, "gs-ctrl-camera-input"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 389
    return-void
.end method

.method public setClickMode(I)V
    .locals 1
    .parameter "clickMode"

    .prologue
    .line 381
    const-string v0, "gs-ctrl-click-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 382
    return-void
.end method

.method public setCoordinateMode(I)V
    .locals 1
    .parameter "coordMode"

    .prologue
    .line 331
    const-string v0, "gs-ctrl-coord-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public setCoordinateRange(Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;)V
    .locals 3
    .parameter "range"

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    const-string v1, "GestureParameter"

    const-string v2, "Invalid input for coordinate range"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 445
    :cond_0
    const-string v0, ""

    .line 446
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->x_min:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->x_max:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->y_min:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->y_max:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->z_min:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/gesturedev/GestureParameters$CoordinateRange;->z_max:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    const-string v1, "gs-ctrl-coord-range"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCursorType(I)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 355
    const-string v0, "gs-ctrl-cursor-type"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 356
    return-void
.end method

.method public setExtendedConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "ext"

    .prologue
    .line 409
    const-string v0, "gs-ctrl-extended-config"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setGestureMode(I)V
    .locals 1
    .parameter "gsMode"

    .prologue
    .line 236
    const-string v0, "gs-ctrl-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 237
    return-void
.end method

.method public setGestureSubMode(I)V
    .locals 1
    .parameter "gsSubmode"

    .prologue
    .line 258
    const-string v0, "gs-ctrl-submode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "gsOrientation"

    .prologue
    .line 307
    const-string v0, "gs-ctrl-orientation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 308
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 268
    .local v0, val:I
    :goto_0
    const-string v1, "gs-ctrl-enable-touch"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/gesturedev/GestureParameters;->set(Ljava/lang/String;I)V

    .line 269
    return-void

    .line 267
    .end local v0           #val:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 6
    .parameter "flattened"

    .prologue
    .line 122
    iget-object v5, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 124
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, kv:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 128
    .local v2, pos:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, k:Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, v:Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/gesturedev/GestureParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    .end local v0           #k:Ljava/lang/String;
    .end local v1           #kv:Ljava/lang/String;
    .end local v2           #pos:I
    .end local v4           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method
