.class public Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "OppoSimplePasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimplePasswordUnlockScreen"


# instance fields
.field private mBtn:[Landroid/widget/ImageButton;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private mCurTextLength:I

.field private mDelete:Landroid/widget/ImageButton;

.field private mEdit1:Lcom/oppo/widget/OppoEditText;

.field private mEdit2:Lcom/oppo/widget/OppoEditText;

.field private mEdit3:Lcom/oppo/widget/OppoEditText;

.field private mEdit4:Lcom/oppo/widget/OppoEditText;

.field private mEditView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mReset:Landroid/widget/ImageButton;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTargetView:Lcom/oppo/widget/OppoEditText;

.field private final mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const v2, 0x10900b2

    const/4 v5, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCurTextLength:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;-><init>(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    .line 67
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 68
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCreationOrientation:I

    .line 69
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 70
    iput-object p5, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 71
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 75
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040639

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setDefaultMessage(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 92
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->initLayout()V

    .line 93
    return-void

    .line 78
    :cond_0
    invoke-virtual {v6, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    return-object v0
.end method

.method private changeTheFocusToNext(Lcom/oppo/widget/OppoEditText;)V
    .locals 4
    .parameter "edit"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    iput-object p1, v0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private changeTheFocusToPre()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCurTextLength:I

    if-lez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-ne v0, v1, :cond_4

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEditView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private clearAllText()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTimeoutTask:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    .line 413
    return-void
.end method

.method private clearText()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 396
    :cond_0
    return-void
.end method

.method private getAllText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    const-string v0, ""

    .line 420
    .local v0, pwd:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_1

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_2

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    if-eqz v1, :cond_3

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_3
    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->setEditTextEnable(Z)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 307
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$1;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$1;->start()Landroid/os/CountDownTimer;

    .line 324
    return-void
.end method

.method private initEditText(Lcom/oppo/widget/OppoEditText;)V
    .locals 2
    .parameter "edit"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setFastDeletable(Z)V

    .line 142
    const v0, 0x1080591

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoEditText;->setBackgroundResource(I)V

    .line 145
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 147
    invoke-virtual {p1, p0}, Lcom/oppo/widget/OppoEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p1, v1}, Lcom/oppo/widget/OppoEditText;->setLongClickable(Z)V

    .line 151
    return-void
.end method

.method private initLayout()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 97
    const v2, 0x10203a0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mReset:Landroid/widget/ImageButton;

    .line 98
    const v2, 0x10203a2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mDelete:Landroid/widget/ImageButton;

    .line 99
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mReset:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    const v2, 0x1020393

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    .line 103
    const v2, 0x1020394

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    .line 104
    const v2, 0x1020395

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    .line 105
    const v2, 0x1020396

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    .line 106
    const v2, 0x1020392

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEditView:Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 111
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->initEditText(Lcom/oppo/widget/OppoEditText;)V

    .line 114
    new-array v2, v4, [Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    .line 115
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 123
    .local v0, btn_id:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    aput-object v2, v3, v1

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mBtn:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void

    .line 115
    :array_0
    .array-data 0x4
        0xa1t 0x3t 0x2t 0x1t
        0x97t 0x3t 0x2t 0x1t
        0x98t 0x3t 0x2t 0x1t
        0x99t 0x3t 0x2t 0x1t
        0x9at 0x3t 0x2t 0x1t
        0x9bt 0x3t 0x2t 0x1t
        0x9ct 0x3t 0x2t 0x1t
        0x9dt 0x3t 0x2t 0x1t
        0x9et 0x3t 0x2t 0x1t
        0x9ft 0x3t 0x2t 0x1t
    .end array-data
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 232
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 233
    .local v0, event:Landroid/view/KeyEvent;
    const/16 v1, 0x1c

    if-ne p1, v1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->clearAllText()V

    goto :goto_0

    .line 235
    :cond_1
    const/16 v1, 0x43

    if-ne p1, v1, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->changeTheFocusToPre()V

    .line 237
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->clearText()V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->clearText()V

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/widget/OppoEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private verifyPasswordAndUnlock()V
    .locals 6

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->getAllText()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, entry:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 301
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 276
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 277
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 281
    const-string v3, "OppoLockscreen"

    const-string v4, "sendBroadcast:oppo.intent.action.UNLOCK_SUCCEEDED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "oppo.intent.action.UNLOCK_SUCCEEDED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->clearAllText()V

    goto :goto_0

    .line 286
    :cond_1
    const-string v3, "OppoLockscreen"

    const-string v4, "sendBroadcast:oppo.intent.action.UNLOCK_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "oppo.intent.action.UNLOCK_FAILED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 292
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    .line 294
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 295
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 297
    .end local v0           #deadline:J
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x10402f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->changeTheFocusToNext(Lcom/oppo/widget/OppoEditText;)V

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->getAllText()Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->verifyPasswordAndUnlock()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 343
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 157
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoEditText;->setSelection(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1020393
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 335
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 336
    check-cast p1, Lcom/oppo/widget/OppoEditText;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoEditText;->setSelection(I)V

    .line 339
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 448
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 452
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mResuming:Z

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 457
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 458
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 461
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mResuming:Z

    .line 462
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 347
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v4

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 177
    .local v0, id:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 217
    const/4 v1, -0x1

    .line 220
    .local v1, keyCode:I
    :goto_1
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 221
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->keyPressed(I)V

    goto :goto_0

    .line 180
    .end local v1           #keyCode:I
    :pswitch_0
    const/4 v1, 0x7

    .line 181
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 183
    .end local v1           #keyCode:I
    :pswitch_1
    const/16 v1, 0x8

    .line 184
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 186
    .end local v1           #keyCode:I
    :pswitch_2
    const/16 v1, 0x9

    .line 187
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 189
    .end local v1           #keyCode:I
    :pswitch_3
    const/16 v1, 0xa

    .line 190
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 192
    .end local v1           #keyCode:I
    :pswitch_4
    const/16 v1, 0xb

    .line 193
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 195
    .end local v1           #keyCode:I
    :pswitch_5
    const/16 v1, 0xc

    .line 196
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 198
    .end local v1           #keyCode:I
    :pswitch_6
    const/16 v1, 0xd

    .line 199
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 201
    .end local v1           #keyCode:I
    :pswitch_7
    const/16 v1, 0xe

    .line 202
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 204
    .end local v1           #keyCode:I
    :pswitch_8
    const/16 v1, 0xf

    .line 205
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 207
    .end local v1           #keyCode:I
    :pswitch_9
    const/16 v1, 0x10

    .line 208
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 210
    .end local v1           #keyCode:I
    :pswitch_a
    const/16 v1, 0x1c

    .line 211
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 213
    .end local v1           #keyCode:I
    :pswitch_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mTargetView:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mCurTextLength:I

    .line 214
    const/16 v1, 0x43

    .line 215
    .restart local v1       #keyCode:I
    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1020397
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public setEditTextEnable(Z)V
    .locals 1
    .parameter "able"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoEditText;->setEnabled(Z)V

    .line 332
    return-void
.end method
