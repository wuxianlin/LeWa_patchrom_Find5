.class Lcom/android/internal/telephony/DataConnectionTracker$2$1;
.super Ljava/lang/Object;
.source "DataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DataConnectionTracker$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/DataConnectionTracker$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/DataConnectionTracker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/DataConnectionTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/DataConnectionTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/DataConnectionTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 318
    return-void
.end method
