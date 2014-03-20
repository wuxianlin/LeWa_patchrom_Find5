.class Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallPaperBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, strAction:Ljava/lang/String;
    const-string v1, "com.oppo.change_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    const-string v2, "pic_path"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$102(Lcom/android/internal/policy/impl/KeyguardViewManager;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    const-string v2, "isSettedBoth"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->setWallPaperIsSettedBoth(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getOldKeyguardWallPaperPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->writeKeyguardWallPaperPath(Ljava/lang/String;)V

    .line 277
    :cond_0
    return-void
.end method
