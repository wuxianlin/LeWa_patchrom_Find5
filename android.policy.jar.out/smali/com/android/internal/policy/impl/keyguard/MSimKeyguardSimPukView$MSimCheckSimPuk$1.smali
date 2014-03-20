.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 118
    return-void
.end method
