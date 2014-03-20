.class public Lcom/wuxianlin/stocksettings/DeviceSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceSettings.java"


# static fields
.field public static final KEY_CAMERA_SWITCH:Ljava/lang/String; = "camera"

.field public static final KEY_DOUBLETAB_SWITCH:Ljava/lang/String; = "double_tap"

.field public static final KEY_MUSIC_SWITCH:Ljava/lang/String; = "music"

.field public static final KEY_TORCH_SWITCH:Ljava/lang/String; = "torch"


# instance fields
.field private mCameraSwitch:Landroid/preference/TwoStatePreference;

.field private mDoubleTapSwitch:Landroid/preference/TwoStatePreference;

.field private mMusicSwitch:Landroid/preference/TwoStatePreference;

.field private mTorchSwitch:Landroid/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/DeviceSettings;->addPreferencesFromResource(I)V

    .line 50
    const-string v0, "double_tap"

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mDoubleTapSwitch:Landroid/preference/TwoStatePreference;

    .line 51
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mDoubleTapSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/wuxianlin/stocksettings/DoubleTapSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mDoubleTapSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {p0}, Lcom/wuxianlin/stocksettings/DoubleTapSwitch;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 53
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mDoubleTapSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/wuxianlin/stocksettings/DoubleTapSwitch;

    invoke-direct {v1}, Lcom/wuxianlin/stocksettings/DoubleTapSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mCameraSwitch:Landroid/preference/TwoStatePreference;

    .line 56
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mCameraSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/wuxianlin/stocksettings/CameraGestureSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mCameraSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {p0}, Lcom/wuxianlin/stocksettings/CameraGestureSwitch;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mCameraSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/wuxianlin/stocksettings/CameraGestureSwitch;

    invoke-direct {v1}, Lcom/wuxianlin/stocksettings/CameraGestureSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    const-string v0, "music"

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mMusicSwitch:Landroid/preference/TwoStatePreference;

    .line 61
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mMusicSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mMusicSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {p0}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mMusicSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;

    invoke-direct {v1}, Lcom/wuxianlin/stocksettings/MusicGestureSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "torch"

    invoke-virtual {p0, v0}, Lcom/wuxianlin/stocksettings/DeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mTorchSwitch:Landroid/preference/TwoStatePreference;

    .line 66
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mTorchSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/wuxianlin/stocksettings/TorchGestureSwitch;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mTorchSwitch:Landroid/preference/TwoStatePreference;

    invoke-static {p0}, Lcom/wuxianlin/stocksettings/TorchGestureSwitch;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/wuxianlin/stocksettings/DeviceSettings;->mTorchSwitch:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/wuxianlin/stocksettings/TorchGestureSwitch;

    invoke-direct {v1}, Lcom/wuxianlin/stocksettings/TorchGestureSwitch;-><init>()V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 89
    return-void
.end method
