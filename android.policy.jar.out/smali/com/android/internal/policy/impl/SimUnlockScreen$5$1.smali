.class Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$5;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$5;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 418
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 421
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->val$success:Z

    if-eqz v3, :cond_1

    .line 424
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 425
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 444
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 445
    return-void

    .line 429
    :cond_1
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 431
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_2

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402ea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0           #attemptsRemaining:I
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$402(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_0

    .line 436
    .restart local v0       #attemptsRemaining:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x10402e5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 438
    .end local v0           #attemptsRemaining:I
    :catch_0
    move-exception v2

    .line 439
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x10402e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
