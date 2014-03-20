.class Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 96
    const-string v3, "/cache/recovery/intent"

    .line 97
    .local v3, otaFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    const-string v6, "BootReceiver"

    const-string v7, "/cache/recovery/intent file is exist!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    #calls: Lcom/android/server/BootReceiver;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/server/BootReceiver;->access$000(Lcom/android/server/BootReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, otaResultStr:Ljava/lang/String;
    const-string v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BootReceiver update result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const-string v6, "BootReceiver"

    const-string v7, "OTA update successed!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, otaIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    const-string v6, "persist.sys.panictime"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v4           #otaIntent:Landroid/content/Intent;
    .end local v5           #otaResultStr:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v7, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->logOppoBootEvents(Landroid/content/Context;)V
    invoke-static {v6, v7}, Lcom/android/server/BootReceiver;->access$100(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    const/4 v2, 0x0

    .line 150
    .local v2, onlyCore:Z
    :try_start_1
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 154
    :goto_2
    if-nez v2, :cond_1

    .line 155
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v7, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V
    invoke-static {v6, v7}, Lcom/android/server/BootReceiver;->access$200(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    :cond_1
    :goto_3
    return-void

    .line 111
    .end local v2           #onlyCore:Z
    .restart local v5       #otaResultStr:Ljava/lang/String;
    :cond_2
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    const-string v6, "BootReceiver"

    const-string v7, "OTA update failed!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_OTA_UPDATE_FAILED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v4       #otaIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    .end local v4           #otaIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    const-string v6, "BootReceiver"

    const-string v7, "Recover update ok!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v4       #otaIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v4           #otaIntent:Landroid/content/Intent;
    :cond_4
    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 124
    const-string v6, "BootReceiver"

    const-string v7, "Recover update failed!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.OPPO_RECOVER_UPDATE_FAILED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v4       #otaIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    .end local v4           #otaIntent:Landroid/content/Intent;
    :cond_5
    const-string v6, "BootReceiver"

    const-string v7, "OTA update file\'s date is invalid!!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v5           #otaResultStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "BootReceiver"

    const-string v7, "Can\'t log boot events"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #onlyCore:Z
    :catch_1
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "BootReceiver"

    const-string v7, "Can\'t remove old update packages"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_2
.end method
