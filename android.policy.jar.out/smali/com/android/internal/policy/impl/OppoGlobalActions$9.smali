.class Lcom/android/internal/policy/impl/OppoGlobalActions$9;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1147
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1176
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1149
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2100(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1154
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2200(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1158
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #calls: Lcom/android/internal/policy/impl/OppoGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2300(Lcom/android/internal/policy/impl/OppoGlobalActions;)V

    goto :goto_0

    .line 1163
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1166
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1169
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1172
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
