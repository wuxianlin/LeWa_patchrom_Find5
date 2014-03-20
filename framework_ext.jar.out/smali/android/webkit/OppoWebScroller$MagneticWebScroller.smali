.class Landroid/webkit/OppoWebScroller$MagneticWebScroller;
.super Ljava/lang/Object;
.source "OppoWebScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/OppoWebScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticWebScroller"
.end annotation


# static fields
.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field static GRAVITY:F = 0.0f

.field private static final MINIMUM_VELOCITY_FOR_BOUNCE:F = 3.4028235E38f

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x384

.field private static final TIME_COEF:F = 3.4906585f

.field private static final TO_BOUNCE:I = 0x2

.field private static final TO_BOUNDARY:I = 0x1

.field private static final TO_EDGE:I = 0x0

.field private static final VELOCITY_COFF:F = 2000.0f

.field static isOppoManufacture:Z

.field private static mMaximumVelocity:I

.field private static mMinimumVelocity:I


# instance fields
.field isArctan:Z

.field private mBounceCoefficient:F

.field private mChangedOver:I

.field mCurrVelocity:F

.field mCurrentPosition:I

.field mDeceleration:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

.field mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

.field mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

.field mMax:I

.field mMin:I

.field private mOver:I

.field mStart:I

.field mStartTime:J

.field private mState:I

.field mVelocity:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-boolean v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isArctan:Z

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 583
    const v0, 0x3e23d70a

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mBounceCoefficient:F

    .line 590
    iput-boolean v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 592
    new-instance v0, Landroid/view/animation/OppoCommonInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OppoCommonInterpolator;-><init>()V

    iput-object v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    .line 593
    new-instance v0, Landroid/view/animation/OppoBoundaryInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OppoBoundaryInterpolator;-><init>()V

    iput-object v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

    .line 594
    new-instance v0, Landroid/webkit/OppoWebArctanBezierInterpolator;

    invoke-direct {v0}, Landroid/webkit/OppoWebArctanBezierInterpolator;-><init>()V

    iput-object v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    .line 596
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/OppoWebScroller$MagneticWebScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 477
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    return v0
.end method

.method static computeDuration(IIFF)I
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "initialVelocity"
    .parameter "deceleration"

    .prologue
    const/4 v6, 0x0

    .line 613
    sub-int v2, p0, p1

    .line 614
    .local v2, distance:I
    mul-float v3, p2, p2

    const/high16 v4, 0x4000

    mul-float/2addr v4, p3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 616
    .local v1, discriminant:F
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_1

    .line 617
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 618
    .local v0, delta:F
    cmpg-float v3, p3, v6

    if-gez v3, :cond_0

    .line 619
    neg-float v0, v0

    .line 621
    :cond_0
    const/high16 v3, 0x447a

    neg-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    div-float/2addr v3, p3

    float-to-int v3, v3

    .line 625
    .end local v0           #delta:F
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 606
    if-lez p0, :cond_0

    sget v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->GRAVITY:F

    goto :goto_0
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4320

    mul-float v1, v2, v3

    .line 538
    .local v1, ppi:F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    mul-float/2addr v2, v3

    sput v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->GRAVITY:F

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    .line 545
    sget-boolean v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-eqz v2, :cond_0

    .line 546
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 547
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMinimumVelocity:I

    .line 548
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMaximumVelocity:I

    .line 551
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void

    .line 544
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onEdgeReached()V
    .locals 6

    .prologue
    .line 908
    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x405f66f3

    div-float v0, v2, v3

    .line 910
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 912
    const/4 v2, 0x2

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 913
    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 914
    const/16 v2, 0x384

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 922
    :goto_0
    return-void

    .line 917
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 918
    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v2, :cond_1

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    .line 919
    .local v1, over:I
    :goto_1
    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 920
    const-wide v2, 0x408f400000000000L

    int-to-float v4, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x400becde60000000L

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    goto :goto_0

    .line 918
    .end local v1           #over:I
    :cond_1
    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    neg-int v1, v2

    goto :goto_1
.end method

.method private onEdgeReached(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    .line 926
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 927
    .local v2, time:J
    iput-wide v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 928
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    if-ge p2, v4, :cond_0

    .line 929
    iget p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    .line 931
    :cond_0
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    if-le p2, v4, :cond_1

    .line 932
    iget p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    .line 934
    :cond_1
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 935
    const/4 v4, 0x1

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 936
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v4, :cond_2

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    .line 937
    .local v1, over:I
    :goto_0
    const/high16 v4, 0x3f80

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44fa

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 938
    .local v0, coff:F
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    .line 939
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v4, :cond_3

    .line 940
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 944
    :goto_1
    iget-object v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/OppoBoundaryInterpolator;->setVelocityDistance(FI)V

    .line 945
    const/high16 v4, 0x447a

    iget-object v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

    invoke-virtual {v5}, Landroid/view/animation/OppoBoundaryInterpolator;->getDuration()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 946
    return-void

    .line 936
    .end local v0           #coff:F
    .end local v1           #over:I
    :cond_2
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    neg-int v1, v4

    goto :goto_0

    .line 942
    .restart local v0       #coff:F
    .restart local v1       #over:I
    :cond_3
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto :goto_1
.end method

.method private startSpringback(IIZ)V
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "positive"

    .prologue
    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 725
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 727
    sget-boolean v0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v0, :cond_1

    .line 729
    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 730
    const/16 v0, 0x384

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 731
    iget-wide v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    const-wide/16 v2, 0x1c2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 732
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x405f66f3

    mul-float/2addr v0, v1

    float-to-double v2, v0

    if-eqz p3, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 742
    :goto_1
    return-void

    .line 732
    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_0

    .line 735
    :cond_1
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 736
    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 737
    const/16 v0, 0x1c2

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 738
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 739
    iget-object v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/OppoCommonInterpolator;->setBoundDistanceAndTime(FI)V

    goto :goto_1
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 950
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1007
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->update()Z

    move v5, v4

    .line 1008
    :cond_0
    return v5

    .line 954
    :pswitch_0
    sget-boolean v3, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v3, :cond_1

    .line 956
    const/high16 v3, -0x3b86

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v3, v6

    float-to-int v0, v3

    .line 957
    .local v0, duration:I
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    if-ge v3, v0, :cond_0

    .line 959
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 961
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v3, v3

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 962
    iget-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 963
    invoke-direct {p0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached()V

    goto :goto_0

    .line 970
    .end local v0           #duration:I
    :cond_1
    const v3, -0x3b448000

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v3, v6

    float-to-int v0, v3

    .line 971
    .restart local v0       #duration:I
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    if-ge v3, v0, :cond_0

    .line 972
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 973
    .local v1, time:J
    iget-boolean v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isArctan:Z

    if-eqz v3, :cond_2

    .line 974
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 978
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 979
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    invoke-direct {p0, v3, v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached(II)V

    goto :goto_0

    .line 976
    :cond_2
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    goto :goto_1

    .line 988
    .end local v0           #duration:I
    .end local v1           #time:J
    :pswitch_1
    iget-wide v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 990
    sget-boolean v3, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v3, :cond_5

    .line 991
    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v3, :cond_3

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    :goto_2
    sub-int/2addr v7, v3

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v3, :cond_4

    move v3, v4

    :goto_3
    invoke-direct {p0, v6, v7, v3}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startSpringback(IIZ)V

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    neg-int v3, v3

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    .line 993
    :cond_5
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    if-lez v7, :cond_6

    move v5, v4

    :cond_6
    invoke-direct {p0, v3, v6, v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startSpringback(IIZ)V

    goto/16 :goto_0

    .line 999
    :pswitch_2
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v3, v3

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mBounceCoefficient:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 1000
    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x7f7fffff

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_0

    .line 1003
    iget-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    iget v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    goto/16 :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 695
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 696
    .local v1, time:J
    iget-wide v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 697
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 698
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 699
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 687
    return-void
.end method

.method fling(IIII)V
    .locals 3
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v2, 0x0

    .line 643
    iput-boolean v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 645
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 646
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 648
    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 650
    invoke-static {p2}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    .line 653
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    if-ge v0, p3, :cond_1

    .line 654
    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 655
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    if-le v0, p4, :cond_2

    .line 660
    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 661
    iput p4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto :goto_0

    .line 666
    :cond_2
    const/high16 v0, -0x3b86

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 668
    mul-int v0, p2, p2

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 671
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    if-ge v0, p3, :cond_3

    .line 672
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 673
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    invoke-static {v0, p3, v1, v2}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 676
    :cond_3
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    if-le v0, p4, :cond_0

    .line 677
    iput p4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 678
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    invoke-static {v0, p4, v1, v2}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    goto :goto_0
.end method

.method fling(IIIII)V
    .locals 8
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    .line 746
    const/4 v4, 0x0

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    .line 747
    iput p5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    .line 749
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 751
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 752
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 754
    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 756
    invoke-static {p2}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->getDeceleration(I)F

    move-result v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    .line 760
    sget-boolean v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v4, :cond_3

    .line 762
    const/high16 v4, -0x3b86

    int-to-float v5, p2

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 764
    mul-int v4, p2, p2

    int-to-float v4, v4

    const/high16 v5, 0x4000

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, p1, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 784
    :goto_0
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    if-ge v4, p3, :cond_0

    .line 785
    sget-boolean v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v4, :cond_0

    .line 786
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 787
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    invoke-static {v4, p3, v5, v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->computeDuration(IIFF)I

    move-result v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 791
    :cond_0
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    if-le v4, p4, :cond_1

    .line 792
    sget-boolean v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v4, :cond_1

    .line 793
    iput p4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 794
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    invoke-static {v4, p4, v5, v6}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->computeDuration(IIFF)I

    move-result v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 798
    :cond_1
    if-le p1, p4, :cond_8

    .line 799
    add-int v4, p4, p5

    if-lt p1, v4, :cond_5

    .line 800
    add-int v4, p4, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    .line 866
    :cond_2
    :goto_1
    return-void

    .line 767
    :cond_3
    iget-boolean v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isArctan:Z

    if-eqz v4, :cond_4

    .line 768
    iget-object v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/webkit/OppoWebArctanBezierInterpolator;->setVelocity(F)V

    .line 769
    const/high16 v4, 0x447a

    iget-object v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    invoke-virtual {v5}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getDuration()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 770
    iget-object v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    invoke-virtual {v4}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getDistance()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p1

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 777
    :goto_2
    iput p4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    .line 778
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    goto :goto_0

    .line 772
    :cond_4
    const v4, -0x3b448000

    int-to-float v5, p2

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 773
    iget-object v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    int-to-float v5, p2

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/OppoCommonInterpolator;->setVelocityTime(FI)V

    .line 774
    iget-object v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/OppoCommonInterpolator;->getDistance()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p1

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto :goto_2

    .line 802
    :cond_5
    if-gtz p2, :cond_6

    .line 803
    invoke-virtual {p0, p1, p3, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    goto :goto_1

    .line 805
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 806
    .local v2, time:J
    sub-int v4, p1, p4

    int-to-float v4, v4

    const v5, 0x405f66f3

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x400becde60000000L

    div-double v0, v4, v6

    .line 809
    .local v0, durationSinceEdge:D
    sget-boolean v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v4, :cond_7

    .line 810
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 813
    iput p4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 815
    int-to-double v4, p2

    const-wide v6, 0x400becde60000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 817
    invoke-direct {p0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached()V

    goto/16 :goto_1

    .line 820
    :cond_7
    int-to-double v4, p2

    const-wide v6, 0x400becde60000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 821
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached(II)V

    goto/16 :goto_1

    .line 827
    .end local v0           #durationSinceEdge:D
    .end local v2           #time:J
    :cond_8
    if-ge p1, p3, :cond_2

    .line 828
    sub-int v4, p3, p5

    if-gt p1, v4, :cond_9

    .line 829
    sub-int v4, p3, p5

    invoke-virtual {p0, v4, p3, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    goto/16 :goto_1

    .line 831
    :cond_9
    if-ltz p2, :cond_a

    .line 832
    invoke-virtual {p0, p1, p3, p4}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->springback(III)Z

    goto/16 :goto_1

    .line 834
    :cond_a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 835
    .restart local v2       #time:J
    sub-int v4, p1, p3

    int-to-float v4, v4

    const v5, 0x405f66f3

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide v6, 0x400becde60000000L

    div-double v0, v4, v6

    .line 838
    .restart local v0       #durationSinceEdge:D
    sget-boolean v4, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v4, :cond_b

    .line 839
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 842
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 844
    int-to-double v4, p2

    const-wide v6, 0x400becde60000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 846
    invoke-direct {p0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached()V

    goto/16 :goto_1

    .line 849
    :cond_b
    int-to-double v4, p2

    const-wide v6, 0x400becde60000000L

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 850
    iget v4, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached(II)V

    goto/16 :goto_1
.end method

.method notifyEdgeReached(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 869
    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    invoke-static {v5}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->getDeceleration(I)F

    move-result v5

    iput v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    .line 872
    sget-boolean v5, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v5, :cond_0

    .line 875
    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float v3, v5, v6

    .line 876
    .local v3, timeCurrent:F
    sub-int v0, p2, p1

    .line 877
    .local v0, distance:I
    const/high16 v5, 0x4000

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    div-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v4, v5

    .line 880
    .local v4, timeEdge:F
    iget v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 883
    iput p2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 885
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    .line 887
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 888
    .local v1, time:J
    long-to-float v5, v1

    const/high16 v6, 0x447a

    sub-float v7, v3, v4

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 890
    invoke-direct {p0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached()V

    .line 904
    .end local v0           #distance:I
    .end local v3           #timeCurrent:F
    .end local v4           #timeEdge:F
    :goto_0
    return-void

    .line 894
    .end local v1           #time:J
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 895
    .restart local v1       #time:J
    iget-boolean v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isArctan:Z

    if-eqz v5, :cond_1

    .line 896
    iget-object v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    iget-wide v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getVelocity(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 900
    :goto_1
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mOver:I

    .line 901
    invoke-direct {p0, p1, p2}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->onEdgeReached(II)V

    goto :goto_0

    .line 898
    :cond_1
    iget-object v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    iget-wide v6, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    iget v7, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/animation/OppoCommonInterpolator;->getVelocity(F)I

    move-result v5

    iput v5, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    goto :goto_1
.end method

.method setBounceCoefficient(F)V
    .locals 0
    .parameter "coefficient"

    .prologue
    .line 702
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mBounceCoefficient:F

    .line 703
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 690
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 692
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 706
    iput-boolean v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 708
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 709
    iput v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 711
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 712
    iput v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 714
    if-ge p1, p2, :cond_1

    .line 715
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startSpringback(IIZ)V

    .line 720
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 716
    :cond_1
    if-le p1, p3, :cond_0

    .line 717
    invoke-direct {p0, p1, p3, v0}, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->startSpringback(IIZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 720
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 629
    iput-boolean v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinished:Z

    .line 631
    iput p1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    .line 632
    add-int v0, p1, p2

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    .line 634
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    .line 635
    iput p3, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    .line 639
    iput v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    .line 640
    return-void
.end method

.method update()Z
    .locals 15

    .prologue
    const v12, 0x405f66f3

    const/4 v8, 0x1

    .line 1017
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 1018
    .local v6, time:J
    iget-wide v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStartTime:J

    sub-long v3, v6, v9

    .line 1020
    .local v3, duration:J
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-long v9, v9

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    .line 1021
    const/4 v8, 0x0

    .line 1099
    :goto_0
    return v8

    .line 1025
    :cond_0
    const-wide/16 v1, 0x0

    .line 1028
    .local v1, distance:D
    long-to-float v9, v3

    const/high16 v10, 0x447a

    div-float v5, v9, v10

    .line 1030
    .local v5, t:F
    sget-boolean v9, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v9, :cond_3

    .line 1032
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    if-nez v9, :cond_2

    .line 1033
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1034
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDeceleration:F

    mul-float/2addr v10, v5

    mul-float/2addr v10, v5

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v1, v9

    .line 1061
    :cond_1
    :goto_1
    sget-boolean v9, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isOppoManufacture:Z

    if-nez v9, :cond_7

    .line 1062
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    double-to-int v10, v1

    add-int/2addr v9, v10

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    goto :goto_0

    .line 1036
    :cond_2
    mul-float v0, v5, v12

    .line 1037
    .local v0, d:F
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v9, v9

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1038
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mVelocity:I

    int-to-float v9, v9

    div-float/2addr v9, v12

    float-to-double v9, v9

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v1, v9, v11

    .line 1039
    goto :goto_1

    .line 1042
    .end local v0           #d:F
    :cond_3
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    if-nez v9, :cond_5

    .line 1043
    iget-boolean v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->isArctan:Z

    if-eqz v9, :cond_4

    .line 1044
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    long-to-double v10, v3

    iget v12, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getVelocity(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1045
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    invoke-virtual {v9}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getDistance()F

    move-result v9

    iget-object v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorFling:Landroid/webkit/OppoWebArctanBezierInterpolator;

    long-to-double v11, v3

    iget v13, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/webkit/OppoWebArctanBezierInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v1, v9

    goto :goto_1

    .line 1047
    :cond_4
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    long-to-double v10, v3

    iget v12, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/animation/OppoCommonInterpolator;->getVelocity(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1048
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    invoke-virtual {v9}, Landroid/view/animation/OppoCommonInterpolator;->getDistance()F

    move-result v9

    iget-object v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    long-to-double v11, v3

    iget v13, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/OppoCommonInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v1, v9

    goto :goto_1

    .line 1050
    :cond_5
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    if-ne v9, v8, :cond_6

    .line 1051
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

    long-to-double v10, v3

    iget v12, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/animation/OppoBoundaryInterpolator;->getVelocity(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1052
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorBoundary:Landroid/view/animation/OppoBoundaryInterpolator;

    long-to-float v11, v3

    iget v12, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/view/animation/OppoBoundaryInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v1, v9

    goto/16 :goto_1

    .line 1053
    :cond_6
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1054
    iget-object v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    long-to-double v10, v3

    iget v12, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/view/animation/OppoCommonInterpolator;->getVelocity(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrVelocity:F

    .line 1055
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mInterpolatorSpring:Landroid/view/animation/OppoCommonInterpolator;

    long-to-double v11, v3

    iget v13, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    int-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/OppoCommonInterpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v1, v9

    goto/16 :goto_1

    .line 1064
    :cond_7
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    if-nez v9, :cond_a

    .line 1066
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v10, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v10, v10

    if-ge v9, v10, :cond_8

    .line 1067
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 1068
    long-to-int v9, v3

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 1069
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto/16 :goto_0

    .line 1070
    :cond_8
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v10, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v10, v10

    if-le v9, v10, :cond_9

    .line 1071
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 1072
    long-to-int v9, v3

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 1073
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto/16 :goto_0

    .line 1075
    :cond_9
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v9, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    goto/16 :goto_0

    .line 1078
    :cond_a
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mState:I

    if-ne v9, v8, :cond_d

    .line 1081
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    if-lez v9, :cond_b

    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v11, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v10, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v10, v10

    if-gt v9, v10, :cond_b

    .line 1082
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v11, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 1083
    long-to-int v9, v3

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 1084
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMax:I

    iget v11, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto/16 :goto_0

    .line 1085
    :cond_b
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    if-gez v9, :cond_c

    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v11, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v10, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v10, v10

    if-lt v9, v10, :cond_c

    .line 1086
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v11, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 1087
    long-to-int v9, v3

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mDuration:I

    .line 1088
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mMin:I

    iget v10, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mChangedOver:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    goto/16 :goto_0

    .line 1090
    :cond_c
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v9, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    goto/16 :goto_0

    .line 1094
    :cond_d
    iget v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    int-to-long v9, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    goto/16 :goto_0
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 599
    iget v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    iget v1, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mFinal:I

    iget v2, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/OppoWebScroller$MagneticWebScroller;->mCurrentPosition:I

    .line 600
    return-void
.end method
