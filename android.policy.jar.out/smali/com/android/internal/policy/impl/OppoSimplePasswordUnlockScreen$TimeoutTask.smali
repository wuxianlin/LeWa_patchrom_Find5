.class Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;
.super Ljava/lang/Object;
.source "OppoSimplePasswordUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field edit:Lcom/oppo/widget/OppoEditText;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;-><init>(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit2:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit3:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$400(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->edit:Lcom/oppo/widget/OppoEditText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit4:Lcom/oppo/widget/OppoEditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$500(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen$TimeoutTask;->this$0:Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->mEdit1:Lcom/oppo/widget/OppoEditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/OppoSimplePasswordUnlockScreen;)Lcom/oppo/widget/OppoEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/widget/OppoEditText;->requestFocus()Z

    goto :goto_0
.end method
