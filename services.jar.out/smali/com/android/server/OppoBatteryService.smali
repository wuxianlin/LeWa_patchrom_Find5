.class public final Lcom/android/server/OppoBatteryService;
.super Ljava/lang/Object;
.source "OppoBatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryCapacity:I

.field private mAccessoryPresent:Z

.field private mAccessoryStatus:I

.field private mBatteryCurrent:I

.field private mBatteryTempStatus:I

.field private mBatteryTemperature:I

.field private mBatteryVolStatus:I

.field private mBatteryVoltage:I

.field private mChargeSocFall:Z

.field private mChargeTimeout:Z

.field private mChargeVolStatus:I

.field private mChargerVoltage:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighBatteryVoltageWarningLevel:I

.field private final mHighChargerVoltageWarningLevel:I

.field private mLastAccessoryCapacity:I

.field private mLastAccessoryPresent:Z

.field private mLastAccessoryStatus:I

.field private mLastBatteryCurrent:I

.field private mLastBatteryTempStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVolStatus:I

.field private mLastBatteryVoltage:I

.field private mLastChargeSocFall:Z

.field private mLastChargeTimeout:Z

.field private mLastChargeVolStatus:I

.field private mLastChargerVoltage:I

.field private final mLowBatteryVoltageWarningLevel:I

.field private final mLowChargerVoltageWarningLevel:I

.field private mPlugType:I

.field private final mTomorrowLowBatteryWarningLevel:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/server/OppoBatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    .line 83
    iput-object p1, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    .line 88
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    .line 90
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    .line 92
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    .line 94
    iget-object v0, p0, Lcom/android/server/OppoBatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    .line 96
    return-void
.end method

.method private sendAdditionalIntentLocked()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x6000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    const-string v1, "chargervoltage"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "batterycurrent"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v1, "chargervolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "batterytempstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "batteryvolstatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "accessorypresent"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string v1, "accessorystatus"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v1, "accessorycapacity"

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v1, "chargetimeout"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const-string v1, "chargesocfall"

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    sget-object v1, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_ADDITIONAL_BATTERY_CHANGED.  chargervoltage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterycurrent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargervolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batterytempstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,batteryvolstatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorypresent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorystatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,accessorycapacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargetimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,chargesocfall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mPlugType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/server/OppoBatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OppoBatteryService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OppoBatteryService$1;-><init>(Lcom/android/server/OppoBatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public dumpAddition(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    const/4 v2, 0x1

    .line 234
    .local v2, update:Z
    if-eqz p3, :cond_0

    array-length v6, p3

    if-eqz v6, :cond_0

    const-string v6, "-a"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    :cond_0
    const-string v4, "Current OPPO Battery Service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Charger voltage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Battery current : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory present:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Accessory capacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargetimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Chargesocfall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  PlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  UpdatesStopped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighBatteryVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LowChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  HighChargerVoltageWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  TomorrowLowBatteryWarningLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/OppoBatteryService;->mTomorrowLowBatteryWarningLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_0
    return v2

    .line 251
    :cond_2
    array-length v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    const-string v6, "set"

    aget-object v7, p3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 252
    aget-object v1, p3, v4

    .line 253
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v3, p3, v6

    .line 255
    .local v3, value:Ljava/lang/String;
    :try_start_0
    const-string v6, "voltage"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 271
    :goto_1
    if-eqz v2, :cond_1

    .line 272
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string v6, "temperature"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    goto :goto_1

    .line 259
    :cond_4
    const-string v6, "current"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    goto :goto_1

    .line 261
    :cond_5
    const-string v6, "chargervol"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    goto :goto_1

    .line 263
    :cond_6
    const-string v6, "chargetimeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 264
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    .line 265
    :cond_8
    const-string v6, "chargesocfall"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_3

    .line 268
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown set option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 277
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_b
    array-length v6, p3

    if-ne v6, v4, :cond_c

    const-string v4, "reset"

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 278
    iput-boolean v5, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    goto/16 :goto_0

    .line 280
    :cond_c
    const-string v4, "Dump current OPPO battery state, or:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const-string v4, "  set voltage|temperature|current|chargervol|chargetimeout|chargesocfall <value>"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    const-string v4, "  reset"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getChargeSocFall()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    return v0
.end method

.method public getChargerVoltage()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    return v0
.end method

.method public native native_update()V
.end method

.method public processAdditionalValuesLocked(III)V
    .locals 6
    .parameter "batteryVoltage"
    .parameter "batteryTemperature"
    .parameter "plugType"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 99
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 100
    iput p1, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    .line 101
    iput p2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    .line 102
    iput p3, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/OppoBatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing additional values: mChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastChargerVoltage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastBatteryCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeVolStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTemperature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatteryTempStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAccessoryCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mChargeSocFall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTemperature:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iget-boolean v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    if-eq v0, v1, :cond_2

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, -0x64

    if-ge v0, v1, :cond_3

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    .line 142
    :goto_0
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighBatteryVoltageWarningLevel:I

    if-lt v0, v1, :cond_5

    .line 144
    iput v5, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    .line 152
    :goto_1
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mHighChargerVoltageWarningLevel:I

    if-lt v0, v1, :cond_7

    .line 155
    iput v5, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    .line 164
    :goto_2
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    .line 165
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryCurrent:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryCurrent:I

    .line 166
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    .line 167
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeVolStatus:I

    .line 168
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryTempStatus:I

    .line 169
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVolStatus:I

    .line 170
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryPresent:Z

    .line 171
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryStatus:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryStatus:I

    .line 172
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mAccessoryCapacity:I

    iput v0, p0, Lcom/android/server/OppoBatteryService;->mLastAccessoryCapacity:I

    .line 173
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeTimeout:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeTimeout:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mChargeSocFall:Z

    iput-boolean v0, p0, Lcom/android/server/OppoBatteryService;->mLastChargeSocFall:Z

    .line 176
    invoke-direct {p0}, Lcom/android/server/OppoBatteryService;->sendAdditionalIntentLocked()V

    .line 178
    :cond_2
    return-void

    .line 136
    :cond_3
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryTemperature:I

    const/16 v1, 0x226

    if-le v0, v1, :cond_4

    .line 137
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 139
    :cond_4
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryTempStatus:I

    goto :goto_0

    .line 145
    :cond_5
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastBatteryVoltage:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowBatteryVoltageWarningLevel:I

    if-gt v0, v1, :cond_6

    .line 147
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 149
    :cond_6
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mBatteryVolStatus:I

    goto :goto_1

    .line 156
    :cond_7
    iget v0, p0, Lcom/android/server/OppoBatteryService;->mPlugType:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLastChargerVoltage:I

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/OppoBatteryService;->mChargerVoltage:I

    iget v1, p0, Lcom/android/server/OppoBatteryService;->mLowChargerVoltageWarningLevel:I

    if-gt v0, v1, :cond_8

    .line 159
    iput v3, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2

    .line 161
    :cond_8
    iput v4, p0, Lcom/android/server/OppoBatteryService;->mChargeVolStatus:I

    goto :goto_2
.end method
