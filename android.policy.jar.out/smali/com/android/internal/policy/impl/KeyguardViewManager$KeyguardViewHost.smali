.class Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardViewHost"
.end annotation


# instance fields
.field private mAction:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mLastPost:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mAction:I

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mLastPost:J

    .line 141
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDoneDrawing()V

    .line 148
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, action:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 158
    .local v1, now:J
    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mAction:I

    if-ne v0, v3, :cond_0

    iget-wide v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mLastPost:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 160
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mAction:I

    .line 161
    iput-wide v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mLastPost:J

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 166
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method
