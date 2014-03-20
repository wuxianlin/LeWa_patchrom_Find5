.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mCheckInProgress:Z

    .line 155
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mStateMachine:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const v2, 0x104053c

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
