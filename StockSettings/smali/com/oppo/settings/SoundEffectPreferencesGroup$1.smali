.class Lcom/oppo/settings/SoundEffectPreferencesGroup$1;
.super Ljava/lang/Object;
.source "SoundEffectPreferencesGroup.java"

# interfaces
.implements Lcom/oppo/sound/SoundChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/settings/SoundEffectPreferencesGroup;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/settings/SoundEffectPreferencesGroup;


# direct methods
.method constructor <init>(Lcom/oppo/settings/SoundEffectPreferencesGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup$1;->this$0:Lcom/oppo/settings/SoundEffectPreferencesGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundChange(Lcom/oppo/sound/EffectBean;)V
    .locals 1
    .parameter "effectBean"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/settings/SoundEffectPreferencesGroup$1;->this$0:Lcom/oppo/settings/SoundEffectPreferencesGroup;

    #calls: Lcom/oppo/settings/SoundEffectPreferencesGroup;->changeState(Lcom/oppo/sound/EffectBean;)V
    invoke-static {v0, p1}, Lcom/oppo/settings/SoundEffectPreferencesGroup;->access$000(Lcom/oppo/settings/SoundEffectPreferencesGroup;Lcom/oppo/sound/EffectBean;)V

    .line 80
    return-void
.end method
