.class public Landroid/dolby/DsCommon;
.super Ljava/lang/Object;
.source "DsCommon.java"


# static fields
.field public static final CMDINIT:Ljava/lang/String; = "init"

.field public static final CMDNAME:Ljava/lang/String; = "cmd"

.field public static final CMDONOFF:Ljava/lang/String; = "on off"

.field public static final CMDSELECTGAME:I = 0x2

.field public static final CMDSELECTMOVIE:I = 0x0

.field public static final CMDSELECTMUSIC:I = 0x1

.field public static final CMDSELECTPRESET1:I = 0x4

.field public static final CMDSELECTPRESET2:I = 0x5

.field public static final CMDSELECTVOICE:I = 0x3

.field public static final CODE_DS_OFF:I = 0x10

.field public static final CODE_DS_ON:I = 0x11

.field public static final CODE_LAUNCH_APP:I = 0x30

.field public static final CODE_SET_PROFILE_0:I = 0x20

.field public static final CODE_SET_PROFILE_1:I = 0x21

.field public static final CODE_SET_PROFILE_2:I = 0x22

.field public static final CODE_SET_PROFILE_3:I = 0x23

.field public static final CODE_SET_PROFILE_4:I = 0x24

.field public static final CODE_SET_PROFILE_5:I = 0x25

.field public static final DS_INVALID_ARGUMENT:I = -0x1

.field public static final DS_INVALID_STATE:I = -0x3

.field public static final DS_NOT_RUNNING:I = -0x2

.field public static final DS_NO_ERROR:I = 0x0

.field public static final DS_OPERATION_NOT_PERMITTED:I = -0x4

.field public static final DS_PARAM_CHANGED_MSG:I = 0x8

.field public static final DS_PROFILE_NAME_AND_SETTINGS_MODIFIED:I = 0x3

.field public static final DS_PROFILE_NAME_MODIFIED:I = 0x2

.field public static final DS_PROFILE_NOT_MODIFIED:I = 0x0

.field public static final DS_PROFILE_SETTINGS_MODIFIED:I = 0x1

.field public static final DS_STATUS_CHANGED_MSG:I = 0x1

.field public static final DS_UNKNOWN_ERROR:I = -0x5

.field public static final EQ_SETTINGS_CHANGED_MSG:I = 0x7

.field public static final GEQ_NAMES_XML:[[Ljava/lang/String; = null

.field public static final IEQ_PRESET_NAMES:[Ljava/lang/String; = null

.field public static final IEQ_PRESET_NAMES_XML:[Ljava/lang/String; = null

.field public static final INIT_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.init"

.field public static final LAUNCH_DOLBY_APP_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.launchapp"

.field public static final ONOFF_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.toggleonoff"

.field public static final PROFILE_NAMES:[Ljava/lang/String; = null

.field public static final PROFILE_NAMES_XML:[Ljava/lang/String; = null

.field public static final PROFILE_NAME_CHANGED_MSG:I = 0x4

.field public static final PROFILE_SELECTED_MSG:I = 0x2

.field public static final PROFILE_SETTINGS_CHANGED_MSG:I = 0x3

.field public static final SELECTPROFILE_ACTION:Ljava/lang/String; = "com.dolby.ds.srvcmd.select"

.field public static final VISUALIZER_SUSPENDED_MSG:I = 0x6

.field public static final VISUALIZER_UPDATED_MSG:I = 0x5

.field public static final WIDGET_CLASS:Ljava/lang/String; = "widget class"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Movie"

    aput-object v1, v0, v4

    const-string v1, "Music"

    aput-object v1, v0, v5

    const-string v1, "Game"

    aput-object v1, v0, v6

    const-string v1, "Voice"

    aput-object v1, v0, v7

    const-string v1, "Custom 1"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Custom 2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/dolby/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    aput-object v1, v0, v4

    const-string v1, "Open"

    aput-object v1, v0, v5

    const-string v1, "Rich"

    aput-object v1, v0, v6

    const-string v1, "Focused"

    aput-object v1, v0, v7

    const-string v1, "Bright"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Balanced"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Warm"

    aput-object v2, v0, v1

    sput-object v0, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "movie"

    aput-object v1, v0, v4

    const-string v1, "music"

    aput-object v1, v0, v5

    const-string v1, "game"

    aput-object v1, v0, v6

    const-string v1, "voice"

    aput-object v1, v0, v7

    const-string v1, "user1"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "user2"

    aput-object v2, v0, v1

    sput-object v0, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ieq_off"

    aput-object v1, v0, v4

    const-string v1, "ieq_open"

    aput-object v1, v0, v5

    const-string v1, "ieq_rich"

    aput-object v1, v0, v6

    const-string v1, "ieq_focused"

    aput-object v1, v0, v7

    const-string v1, "ieq_bright"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "ieq_balanced"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ieq_warm"

    aput-object v2, v0, v1

    sput-object v0, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "geq_movie_off"

    aput-object v2, v1, v4

    const-string v2, "geq_movie_open"

    aput-object v2, v1, v5

    const-string v2, "geq_movie_rich"

    aput-object v2, v1, v6

    const-string v2, "geq_movie_focused"

    aput-object v2, v1, v7

    const-string v2, "geq_movie_bright"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "geq_movie_balanced"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "geq_movie_warm"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "geq_music_off"

    aput-object v2, v1, v4

    const-string v2, "geq_music_open"

    aput-object v2, v1, v5

    const-string v2, "geq_music_rich"

    aput-object v2, v1, v6

    const-string v2, "geq_music_focused"

    aput-object v2, v1, v7

    const-string v2, "geq_music_bright"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "geq_music_balanced"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "geq_music_warm"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "geq_game_off"

    aput-object v2, v1, v4

    const-string v2, "geq_game_open"

    aput-object v2, v1, v5

    const-string v2, "geq_game_rich"

    aput-object v2, v1, v6

    const-string v2, "geq_game_focused"

    aput-object v2, v1, v7

    const-string v2, "geq_game_bright"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "geq_game_balanced"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "geq_game_warm"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "geq_voice_off"

    aput-object v2, v1, v4

    const-string v2, "geq_voice_open"

    aput-object v2, v1, v5

    const-string v2, "geq_voice_rich"

    aput-object v2, v1, v6

    const-string v2, "geq_voice_focused"

    aput-object v2, v1, v7

    const-string v2, "geq_voice_bright"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "geq_voice_balanced"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "geq_voice_warm"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "geq_user1_off"

    aput-object v2, v1, v4

    const-string v2, "geq_user1_open"

    aput-object v2, v1, v5

    const-string v2, "geq_user1_rich"

    aput-object v2, v1, v6

    const-string v2, "geq_user1_focused"

    aput-object v2, v1, v7

    const-string v2, "geq_user1_bright"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "geq_user1_balanced"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "geq_user1_warm"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "geq_user2_off"

    aput-object v3, v2, v4

    const-string v3, "geq_user2_open"

    aput-object v3, v2, v5

    const-string v3, "geq_user2_rich"

    aput-object v3, v2, v6

    const-string v3, "geq_user2_focused"

    aput-object v3, v2, v7

    const-string v3, "geq_user2_bright"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "geq_user2_balanced"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "geq_user2_warm"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
