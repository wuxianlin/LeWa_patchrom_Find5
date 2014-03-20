.class Lcom/android/internal/policy/impl/OppoFlashlightActions$2;
.super Landroid/content/BroadcastReceiver;
.source "OppoFlashlightActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoFlashlightActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoFlashlightActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoFlashlightActions;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;->this$0:Lcom/android/internal/policy/impl/OppoFlashlightActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;->this$0:Lcom/android/internal/policy/impl/OppoFlashlightActions;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->access$002(Lcom/android/internal/policy/impl/OppoFlashlightActions;Z)Z

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;->this$0:Lcom/android/internal/policy/impl/OppoFlashlightActions;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->closeFlashLight()V

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;->this$0:Lcom/android/internal/policy/impl/OppoFlashlightActions;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->closeCameraService()V

    .line 252
    :cond_0
    return-void
.end method
