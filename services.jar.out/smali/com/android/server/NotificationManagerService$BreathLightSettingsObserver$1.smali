.class Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver$1;->this$1:Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver$1;->this$1:Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$BreathLightSettingsObserver;->cancel()V

    .line 715
    return-void
.end method
