.class public Lcom/oppo/settings/SoundEffectPreferencesGroup;
.super Landroid/preference/PreferenceCategory;
.source "SoundEffectPreferencesGroup.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_DIRAC:Ljava/lang/String; = "key_dirac"

.field private static final KEY_DOLBY:Ljava/lang/String; = "key_dolby"


# instance fields
.field private mDirac:Lcom/oppo/settings/OppoSwitchPreference;

.field private mDolby:Landroid/preference/Preference;

.field private mSoundChangeObserver:Lcom/oppo/sound/SoundChangeObserver;

.field private mSoundEffect:Lcom/oppo/sound/SoundEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/settings/SoundEffectPreferencesGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/settings/SoundEffectPreferencesGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/settings/SoundEffectPreferencesGroup;Lcom/oppo/sound/EffectBean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->changeState(Lcom/oppo/sound/EffectBean;)V

    return-void
.end method

.method private changeState(Lcom/oppo/sound/EffectBean;)V
    .locals 2
    .parameter "effectBean"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDolby:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/oppo/sound/EffectBean;->getDolbyChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    invoke-virtual {p1}, Lcom/oppo/sound/EffectBean;->getDiracChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/settings/OppoSwitchPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    invoke-virtual {p1}, Lcom/oppo/sound/EffectBean;->getDiracEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/settings/OppoSwitchPreference;->setEnabled(Z)V

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v1, "key_dolby"

    invoke-virtual {p0, v1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDolby:Landroid/preference/Preference;

    .line 55
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDolby:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    invoke-static {p1}, Lcom/oppo/settings/OppoSettingsUtils;->isDolbySupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDolby:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 59
    iput-object v2, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDolby:Landroid/preference/Preference;

    .line 62
    :cond_0
    const-string v1, "key_dirac"

    invoke-virtual {p0, v1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oppo/settings/OppoSwitchPreference;

    iput-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    .line 63
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oppo/settings/OppoSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    invoke-static {p1}, Lcom/oppo/settings/OppoSettingsUtils;->isDiracSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    iput-object v2, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mDirac:Lcom/oppo/settings/OppoSwitchPreference;

    .line 69
    :cond_1
    new-instance v1, Lcom/oppo/sound/SoundEffect;

    invoke-direct {v1, p1}, Lcom/oppo/sound/SoundEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundEffect:Lcom/oppo/sound/SoundEffect;

    .line 71
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundEffect:Lcom/oppo/sound/SoundEffect;

    invoke-virtual {v1}, Lcom/oppo/sound/SoundEffect;->getEffectBean()Lcom/oppo/sound/EffectBean;

    move-result-object v0

    .line 73
    .local v0, effectBean:Lcom/oppo/sound/EffectBean;
    invoke-direct {p0, v0}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->changeState(Lcom/oppo/sound/EffectBean;)V

    .line 75
    new-instance v1, Lcom/oppo/sound/SoundChangeObserver;

    invoke-direct {v1, p1}, Lcom/oppo/sound/SoundChangeObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundChangeObserver:Lcom/oppo/sound/SoundChangeObserver;

    .line 76
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundChangeObserver:Lcom/oppo/sound/SoundChangeObserver;

    new-instance v2, Lcom/oppo/settings/SoundEffectPreferencesGroup$1;

    invoke-direct {v2, p0}, Lcom/oppo/settings/SoundEffectPreferencesGroup$1;-><init>(Lcom/oppo/settings/SoundEffectPreferencesGroup;)V

    invoke-virtual {v1, v2}, Lcom/oppo/sound/SoundChangeObserver;->setSoundChangeListener(Lcom/oppo/sound/SoundChangeListener;)V

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 117
    const-string v1, "key_dirac"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundEffect:Lcom/oppo/sound/SoundEffect;

    invoke-virtual {v1, v0}, Lcom/oppo/sound/SoundEffect;->setDiracState(Z)V

    .line 121
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 109
    const-string v0, "key_dolby"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundEffect:Lcom/oppo/sound/SoundEffect;

    invoke-virtual {v0}, Lcom/oppo/sound/SoundEffect;->startActivity()V

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public register()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundChangeObserver:Lcom/oppo/sound/SoundChangeObserver;

    invoke-virtual {v0}, Lcom/oppo/sound/SoundChangeObserver;->register()V

    .line 101
    return-void
.end method

.method public unRegister()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup;->mSoundChangeObserver:Lcom/oppo/sound/SoundChangeObserver;

    invoke-virtual {v0}, Lcom/oppo/sound/SoundChangeObserver;->unRegister()V

    .line 105
    return-void
.end method
