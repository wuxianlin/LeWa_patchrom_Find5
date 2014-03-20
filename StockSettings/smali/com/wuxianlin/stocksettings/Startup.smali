.class public Lcom/wuxianlin/stocksettings/Startup;
.super Landroid/content/BroadcastReceiver;
.source "Startup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "bootintent"

    .prologue
    .line 28
    invoke-static {p1}, Lcom/wuxianlin/stocksettings/DoubleTapSwitch;->restore(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Lcom/wuxianlin/stocksettings/CameraGestureSwitch;->restore(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;->restore(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lcom/wuxianlin/stocksettings/TorchGestureSwitch;->restore(Landroid/content/Context;)V

    .line 36
    return-void
.end method
