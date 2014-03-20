.class public final Landroid/media/audiofx/OppoDolby$CommandPram;
.super Ljava/lang/Object;
.source "OppoDolby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/OppoDolby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommandPram"
.end annotation


# static fields
.field public static final CLOSE_DOLBY:I = 0x65

.field public static final RESET_DOLBY:I = 0x66

.field public static final SET_DOLBY:I = 0x64

.field public static final SET_GEQ_TYPE:I = 0x69

.field public static final SET_MEDIA_TYPE:I = 0x68

.field public static final SET_PLAY_MODE:I = 0x67


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/OppoDolby;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/OppoDolby;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/media/audiofx/OppoDolby$CommandPram;->this$0:Landroid/media/audiofx/OppoDolby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
