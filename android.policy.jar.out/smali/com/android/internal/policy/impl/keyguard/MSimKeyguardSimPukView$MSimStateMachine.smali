.class public Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, msg:I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-nez v1, :cond_3

    .line 42
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 44
    const v0, 0x1040536

    .line 66
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 70
    :cond_1
    return-void

    .line 46
    :cond_2
    const v0, 0x104053b

    goto :goto_0

    .line 48
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 51
    const v0, 0x1040537

    goto :goto_0

    .line 53
    :cond_4
    const v0, 0x104053a

    goto :goto_0

    .line 55
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 58
    const v0, 0x104030e

    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_0

    .line 62
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 63
    const v0, 0x104053d

    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->state:I

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const v2, 0x1040535

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 79
    return-void
.end method
