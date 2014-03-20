.class public final Landroid/provider/oppo/Telephony;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "provider\'s class of OPPO"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/oppo/Telephony$WapPush;,
        Landroid/provider/oppo/Telephony$Intents;,
        Landroid/provider/oppo/Telephony$CellBroadcasts;,
        Landroid/provider/oppo/Telephony$GPRSInfo;,
        Landroid/provider/oppo/Telephony$GprsInfo;,
        Landroid/provider/oppo/Telephony$SIMInfo;,
        Landroid/provider/oppo/Telephony$SimInfo;,
        Landroid/provider/oppo/Telephony$Carriers;,
        Landroid/provider/oppo/Telephony$MmsSms;,
        Landroid/provider/oppo/Telephony$Mms;,
        Landroid/provider/oppo/Telephony$Threads;,
        Landroid/provider/oppo/Telephony$ThreadsColumns;,
        Landroid/provider/oppo/Telephony$CanonicalAddressesColumns;,
        Landroid/provider/oppo/Telephony$BaseMmsColumns;,
        Landroid/provider/oppo/Telephony$CbSms;,
        Landroid/provider/oppo/Telephony$TextBasedCbSmsColumns;,
        Landroid/provider/oppo/Telephony$Sms;,
        Landroid/provider/oppo/Telephony$TextBasedSmsColumns;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = false

.field private static final OPPO_LONG_4600:I = 0x0

.field public static final SIMBackgroundRes:[I = null

.field private static final TAG:Ljava/lang/String; = "Telephony"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/provider/oppo/Telephony;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method
