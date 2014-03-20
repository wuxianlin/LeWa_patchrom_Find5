.class Lcom/android/internal/policy/impl/OppoGlobalActions$6;
.super Landroid/telephony/PhoneStateListener;
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
    .line 1102
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1106
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1107
    .local v0, inAirplaneMode:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    :goto_2
    #setter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$402(Lcom/android/internal/policy/impl/OppoGlobalActions;Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    .line 1108
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$2000(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$400(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;)V

    .line 1109
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1106
    .end local v0           #inAirplaneMode:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1107
    .restart local v0       #inAirplaneMode:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/OppoGlobalActions$ToggleAction$State;

    goto :goto_2
.end method
