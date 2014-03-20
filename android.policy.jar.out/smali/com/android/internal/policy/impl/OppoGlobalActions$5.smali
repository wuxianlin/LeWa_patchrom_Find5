.class Lcom/android/internal/policy/impl/OppoGlobalActions$5;
.super Landroid/database/ContentObserver;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1092
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$200(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1602(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 1095
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1702(Z)Z

    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1097
    return-void
.end method
