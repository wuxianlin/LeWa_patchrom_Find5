.class public Lcom/wuxianlin/stocksettings/MusicGestureSwitch;
.super Ljava/lang/Object;
.source "MusicGestureSwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FILE:Ljava/lang/String; = "/proc/touchpanel/music_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 35
    const-string v2, "/proc/touchpanel/music_enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/wuxianlin/stocksettings/Utils;->getFileValueAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, enabled:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "music"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 31
    const-string v0, "/proc/touchpanel/music_enable"

    invoke-static {v0}, Lcom/wuxianlin/stocksettings/Utils;->fileWritable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-static {}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 50
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "/proc/touchpanel/music_enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "/proc/touchpanel/music_enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 58
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 59
    .local v0, enabled:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "/proc/touchpanel/music_enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 62
    :cond_0
    const-string v1, "/proc/touchpanel/music_enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
