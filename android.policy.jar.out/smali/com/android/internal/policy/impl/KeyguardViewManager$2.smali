.class Lcom/android/internal/policy/impl/KeyguardViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 304
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->REFRESH_KEYGUARD_WALL_PAPER:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method
