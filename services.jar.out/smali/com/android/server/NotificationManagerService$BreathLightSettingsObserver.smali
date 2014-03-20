.class Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "gaoliang add for glitter once when breathlight color changed"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BreathLightSettingsObserver"
.end annotation


# instance fields
.field private mBreathLightGlitterFlag:Z

.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;Lcom/android/server/LightsService;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter "lights"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 663
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mBreathLightGlitterFlag:Z

    .line 712
    new-instance v0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver$1;-><init>(Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mRunnable:Ljava/lang/Runnable;

    .line 664
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mBreathLightGlitterFlag:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mBreathLightGlitterFlag:Z

    .line 723
    :cond_0
    return-void
.end method

.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 668
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "oppo_led_color_for_favorite_contacts"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 670
    const-string v1, "oppo_led_color_for_general_contacts"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 672
    const-string v1, "oppo_led_color_for_general_notificaions"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 674
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, color:Ljava/lang/String;
    const/4 v2, 0x0

    .line 680
    .local v2, key:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 681
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oppo_led_color_for_favorite_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 682
    const-string v2, "oppo_led_color_for_favorite_contacts"

    .line 689
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 690
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    const/4 v3, 0x0

    .line 695
    .local v3, ledARGB:I
    :try_start_0
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BreathLightSettingsObserver color = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 701
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mBreathLightGlitterFlag:Z

    .line 702
    invoke-virtual {p0, v3}, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->setFlashing(I)V

    .line 704
    .end local v3           #ledARGB:I
    :cond_1
    return-void

    .line 683
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oppo_led_color_for_general_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 684
    const-string v2, "oppo_led_color_for_general_contacts"

    goto :goto_0

    .line 685
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oppo_led_color_for_general_notificaions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    const-string v2, "oppo_led_color_for_general_notificaions"

    goto :goto_0

    .line 697
    .restart local v3       #ledARGB:I
    :catch_0
    move-exception v1

    .line 698
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "NotificationService"

    const-string v5, "There is no easy light"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setFlashing(I)V
    .locals 4
    .parameter "ledARGB"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 709
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->mRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    return-void
.end method
