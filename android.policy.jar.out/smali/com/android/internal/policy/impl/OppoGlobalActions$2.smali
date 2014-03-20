.class Lcom/android/internal/policy/impl/OppoGlobalActions$2;
.super Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;
.source "OppoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field final synthetic val$user:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;ILjava/lang/CharSequence;Landroid/content/pm/UserInfo;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->val$user:Landroid/content/pm/UserInfo;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/OppoGlobalActions$SinglePressAction;-><init>(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$2;->val$user:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method
