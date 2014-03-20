.class Lcom/android/server/power/PowerManagerService$4$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$4;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$4;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4$1;->this$1:Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2903
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4$1;->this$1:Lcom/android/server/power/PowerManagerService$4;

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Landroid/os/UEventObserver;

    move-result-object v5

    monitor-enter v5

    .line 2904
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4$1;->this$1:Lcom/android/server/power/PowerManagerService$4;

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 2905
    .local v3, power:Landroid/os/PowerManager;
    if-eqz v3, :cond_0

    .line 2906
    const/4 v4, 0x1

    const-string v6, "screen_switch"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 2907
    .local v2, partial:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2908
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$4$1;->this$1:Lcom/android/server/power/PowerManagerService$4;

    iget-object v4, v4, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x4

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/power/PowerManagerService;->goToSleep(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2910
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2914
    :goto_0
    const v4, 0x3000001a

    :try_start_2
    const-string v6, "screen_switch"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 2916
    .local v1, full:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2918
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2920
    .end local v1           #full:Landroid/os/PowerManager$WakeLock;
    .end local v2           #partial:Landroid/os/PowerManager$WakeLock;
    :cond_0
    monitor-exit v5

    .line 2921
    return-void

    .line 2911
    .restart local v2       #partial:Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 2912
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2920
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #partial:Landroid/os/PowerManager$WakeLock;
    .end local v3           #power:Landroid/os/PowerManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
