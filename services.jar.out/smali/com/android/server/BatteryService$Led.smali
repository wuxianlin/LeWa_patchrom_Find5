.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private mBatteryLowHint:Z

.field private final mBatteryMediumARGB:I

.field private mChargingHint:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

.field private mScreenOn:Z

.field private mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    const/4 v6, 0x1

    .line 863
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/server/BatteryService$SettingsObserver;

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    .line 840
    new-instance v2, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 847
    new-instance v2, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 864
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 866
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 868
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 870
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 872
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 874
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 879
    new-instance v2, Lcom/android/server/LightsService$LightStateDetector;

    const/4 v3, 0x4

    invoke-direct {v2, p3, v3}, Lcom/android/server/LightsService$LightStateDetector;-><init>(Lcom/android/server/LightsService;I)V

    iput-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

    .line 880
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 881
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 885
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 887
    .local v1, handler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/BatteryService$Led$3;

    const-string v5, "oppo_breath_led_low_power"

    invoke-direct {v4, p0, v1, v5, p1}, Lcom/android/server/BatteryService$Led$3;-><init>(Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/BatteryService;)V

    aput-object v4, v2, v3

    .line 896
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mSettingsObservers:[Lcom/android/server/BatteryService$SettingsObserver;

    new-instance v3, Lcom/android/server/BatteryService$Led$4;

    const-string v4, "oppo_breath_led_charge"

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/android/server/BatteryService$Led$4;-><init>(Lcom/android/server/BatteryService$Led;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/BatteryService;)V

    aput-object v3, v2, v6

    .line 906
    iput-boolean v6, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 908
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService$Led;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService$Led;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    return p1
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/16 v3, 0x64

    .line 917
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_1

    .line 918
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLightStateDetector:Lcom/android/server/LightsService$LightStateDetector;

    invoke-virtual {v2}, Lcom/android/server/LightsService$LightStateDetector;->getLightState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 925
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 954
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 955
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_3

    .line 956
    if-lt v0, v3, :cond_2

    .line 958
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 961
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 965
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 967
    :cond_4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    if-lt v0, v3, :cond_5

    .line 974
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mChargingHint:Z

    if-eqz v2, :cond_0

    .line 976
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 980
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowHint:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 982
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 986
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0
.end method
