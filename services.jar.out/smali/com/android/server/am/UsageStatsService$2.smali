.class Lcom/android/server/am/UsageStatsService$2;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/android/server/pm/OppoPackageManagerHelper;->sendDataClearBroadcast()V

    .line 263
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    #getter for: Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->access$100(Lcom/android/server/am/UsageStatsService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$2;->this$0:Lcom/android/server/am/UsageStatsService;

    #getter for: Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->access$100(Lcom/android/server/am/UsageStatsService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
