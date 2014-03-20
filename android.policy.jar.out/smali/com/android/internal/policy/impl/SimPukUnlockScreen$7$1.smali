.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    .line 425
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->val$success:Z

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 452
    :goto_0
    return-void

    .line 432
    :cond_1
    const/4 v0, 0x0

    .line 433
    .local v0, attemptsRemaining:I
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 436
    if-ltz v0, :cond_2

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402e6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

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

    .line 441
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x10402e6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v2

    .line 447
    .local v2, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x10402e8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
