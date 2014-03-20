.class public Landroid/webkit/OppoWebScroller;
.super Ljava/lang/Object;
.source "OppoWebScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/OppoWebScroller$MagneticWebScroller;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

.field private mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "OppoWebScroller"

    sput-object v0, Landroid/webkit/OppoWebScroller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/OppoWebScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const v0, 0x3e23d70a

    .line 67
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/webkit/OppoWebScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Landroid/webkit/OppoWebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-direct {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    .line 85
    new-instance v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-direct {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    .line 86
    invoke-static {p1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->initializeFromContext(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->setBounceCoefficient(F)V

    .line 89
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->setBounceCoefficient(F)V

    .line 90
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->finish()V

    .line 461
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->finish()V

    .line 462
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/webkit/OppoWebScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    const/4 v6, 0x0

    .line 298
    :goto_0
    return v6

    .line 255
    :cond_0
    iget v6, p0, Landroid/webkit/OppoWebScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 298
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 260
    .local v4, time:J
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-wide v6, v6, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 262
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v6, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 263
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 264
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 266
    .local v3, q:F
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 267
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 271
    :goto_2
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6, v3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->updateScroll(F)V

    .line 272
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6, v3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->updateScroll(F)V

    goto :goto_1

    .line 269
    :cond_2
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 274
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/OppoWebScroller;->abortAnimation()V

    goto :goto_1

    .line 279
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v6, v6, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v6, :cond_4

    .line 280
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 281
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 282
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->finish()V

    .line 287
    :cond_4
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v6, v6, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v6, :cond_1

    .line 288
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 289
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 290
    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->finish()V

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 208
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->extendDuration(I)V

    .line 209
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->extendDuration(I)V

    .line 210
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 361
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/webkit/OppoWebScroller;->fling(IIIIIIIIII)V

    .line 362
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 393
    const/4 v0, 0x1

    iput v0, p0, Landroid/webkit/OppoWebScroller;->mMode:I

    .line 394
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->fling(IIIII)V

    .line 395
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->fling(IIIII)V

    .line 396
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-object v1, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iput-boolean p1, v1, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    iput-boolean p1, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 112
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v2, v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .line 140
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    iget-object v2, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v2, v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 141
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    iget-object v1, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v1, v1, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    #getter for: Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I
    invoke-static {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->access$000(Landroid/webkit/OppoWebScroller$MagneticWebScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-boolean v0, v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    #getter for: Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I
    invoke-static {v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->access$000(Landroid/webkit/OppoWebScroller$MagneticWebScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 412
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->notifyEdgeReached(III)V

    .line 413
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->notifyEdgeReached(III)V

    .line 430
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"

    .prologue
    .line 226
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->setFinalPosition(I)V

    .line 227
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"

    .prologue
    .line 243
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->setFinalPosition(I)V

    .line 244
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v2, 0x1

    .line 351
    iput v2, p0, Landroid/webkit/OppoWebScroller;->mMode:I

    .line 354
    iget-object v3, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    move-result v0

    .line 355
    .local v0, spingbackX:Z
    iget-object v3, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    move-result v1

    .line 356
    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 316
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/OppoWebScroller;->startScroll(IIIII)V

    .line 317
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 333
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/OppoWebScroller;->mMode:I

    .line 334
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startScroll(III)V

    .line 335
    iget-object v0, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startScroll(III)V

    .line 336
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 472
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 473
    .local v2, time:J
    iget-object v4, p0, Landroid/webkit/OppoWebScroller;->mScrollerX:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-wide v4, v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    iget-object v6, p0, Landroid/webkit/OppoWebScroller;->mScrollerY:Landroid/webkit/OppoWebScroller$MagneticWebScroller;

    iget-wide v6, v6, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 474
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
