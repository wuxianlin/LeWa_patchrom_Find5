.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;
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


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk$2;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 124
    return-void
.end method
