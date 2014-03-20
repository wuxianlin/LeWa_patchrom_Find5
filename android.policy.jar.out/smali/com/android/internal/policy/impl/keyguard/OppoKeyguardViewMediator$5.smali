.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;
.super Landroid/content/BroadcastReceiver;
.source "OppoKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 1328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1330
    const-string v6, "seq"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1333
    .local v5, sequence:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v7

    .line 1334
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 1336
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1902(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1337
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    .line 1339
    :cond_0
    monitor-exit v7

    .line 1397
    .end local v5           #sequence:I
    :cond_1
    :goto_0
    return-void

    .line 1339
    .restart local v5       #sequence:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1340
    .end local v5           #sequence:I
    :cond_2
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1341
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v7

    .line 1344
    :try_start_1
    sget-object v6, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1355
    :cond_3
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1359
    :cond_4
    const-string v6, "com.android.policy.keyguard_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1360
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1361
    .local v4, mResolver:Landroid/content/ContentResolver;
    const-string v6, "oppo_unlock_change_pkg"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    .local v2, currentUnlockService:Ljava/lang/String;
    const-string v6, "oppo_unlock_change_process"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, currentUnlockProcess:Ljava/lang/String;
    const-string v6, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.oppo.OppoPatternUnlock.OppoPatternUnlockService"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1368
    const-string v6, "OppoKeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put as backup: currentUnlockService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const-string v6, "oppo_unlock_pkg_back"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    const-string v6, "oppo_unlock_process_back"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1375
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.oppo.ACTION_STOP_UNLOCK_SERVICE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v3, mCurrentService:Landroid/content/Intent;
    const-string v6, "SERVICE_NAME"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1378
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1380
    const-string v6, "OppoKeyguardViewMediator"

    const-string v7, "put as current: currentUnlockService = com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const-string v6, "oppo_unlock_change_pkg"

    const-string v7, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1383
    const-string v6, "oppo_unlock_change_process"

    const-string v7, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1385
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1386
    .end local v1           #currentUnlockProcess:Ljava/lang/String;
    .end local v2           #currentUnlockService:Ljava/lang/String;
    .end local v3           #mCurrentService:Landroid/content/Intent;
    .end local v4           #mResolver:Landroid/content/ContentResolver;
    :cond_6
    const-string v6, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1388
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2202(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1390
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1391
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->bindToLockscreenManager(Z)Z
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    .line 1393
    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0
.end method
