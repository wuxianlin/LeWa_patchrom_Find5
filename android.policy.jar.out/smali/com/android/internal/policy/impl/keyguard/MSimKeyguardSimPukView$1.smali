.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;
.super Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimCheckSimPuk;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$1;Z)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
