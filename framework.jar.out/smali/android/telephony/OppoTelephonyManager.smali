.class public Landroid/telephony/OppoTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "OppoTelephonyManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of TelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OppoTelephonyManager"

.field private static isMtkGeminiSupport:Z

.field private static isMtkSupport:Z

.field private static isOppoSupport:Z

.field private static isRomSupport:Z

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/OppoTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/telephony/OppoTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/OppoTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 50
    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    .line 56
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.device"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isOppoSupport:Z

    .line 57
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.rom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isRomSupport:Z

    .line 58
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    .line 59
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    .line 60
    const-string v1, "OppoTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoTelephonyManager isMtkSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMtkGeminiSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 52
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/OppoTelephonyManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1
    .parameter "simId"

    .prologue
    .line 393
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoChangeIccLockPassword: remote exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoChangeIccLockPassword: null pointer exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoCheckPhbNameLength(Ljava/lang/String;)I
    .locals 7
    .parameter "name"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 171
    sget-boolean v4, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/telephony/OppoTelephonyManager;->oppoCheckPhbNameLengthGenimi(Ljava/lang/String;I)I

    move-result v2

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNameLength()I

    move-result v2

    .line 185
    .local v2, leng:I
    invoke-static {p1, v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 188
    .local v0, encodeInfo:[I
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isEnglish(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    const-string/jumbo v4, "utf-16be"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 190
    .local v3, temp:[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/OppoGsmAlphabet;->judge([BII)V

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/OppoGsmAlphabet;->enableToEncode0X81()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    add-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/OppoGsmAlphabet;->enableToEncode0X82()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    add-int/lit8 v2, v2, -0x4

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/OppoGsmAlphabet;->enableToEncode0X80()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    add-int/lit8 v4, v2, -0x1

    div-int/lit8 v2, v4, 0x2

    goto :goto_0

    .line 197
    :cond_4
    const/4 v4, 0x3

    aget v4, v0, v4

    if-ne v4, v6, :cond_0

    .line 198
    add-int/lit8 v4, v2, -0x1

    div-int/lit8 v2, v4, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v3           #temp:[B
    :catch_0
    move-exception v1

    .line 202
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v4, "OppoTelephonyManager"

    const-string/jumbo v5, "unsurport encoding."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public oppoCheckPhbNameLengthGenimi(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "simId"

    .prologue
    .line 413
    const/4 v0, -0x1

    return v0
.end method

.method public oppoDisableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 228
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoDisableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoDisableDataConnectivityGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 433
    const/4 v0, -0x1

    return v0
.end method

.method public oppoEmtDial(Ljava/lang/String;)V
    .locals 1
    .parameter "telNumber"

    .prologue
    .line 467
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->emtDial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoEmtHungup(Ljava/lang/String;)V
    .locals 1
    .parameter "telNumber"

    .prologue
    .line 476
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->emtHungup(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoEnableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoEnableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoEnableDataConnectivityGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 429
    const/4 v0, -0x1

    return v0
.end method

.method public oppoEnableEngineerTest(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 485
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableEngineerTest(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoGetAudioRecordState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAudioRecordState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetAudioRecordState: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetAudioRecordState: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetIccCardType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    const-string v2, "gsm.sim.card.type"

    const-string v3, "SIM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, vStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string v1, "USIM"

    .line 462
    :cond_0
    :goto_0
    return-object v1

    .line 454
    :cond_1
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const-string v1, "SIM"

    goto :goto_0
.end method

.method public oppoGetIccLockEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->oppoGetIccLockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 300
    :goto_0
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccLockEnabled: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccLockEnabled: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetIccPin1RetryCount()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 370
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->oppoGetIccPin1RetryCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccPin1RetryCount: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoGetIccPin1RetryCount: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoGetPreferredNetworkType()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 102
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 104
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 112
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 111
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetScAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 343
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 347
    :goto_0
    return-object v2

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e1:Landroid/os/RemoteException;
    goto :goto_0

    .line 346
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 347
    .local v1, e2:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 240
    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoGetServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v2

    .line 253
    :cond_0
    :goto_0
    return-object v2

    .line 244
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 245
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 250
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 251
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 252
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetServiceStateGemini(I)Landroid/os/Bundle;
    .locals 1
    .parameter "simId"

    .prologue
    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetSimIndicatorState()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 259
    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimIndicatorStateGemini(I)I

    move-result v2

    .line 272
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 264
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 265
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 269
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 270
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 271
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimIndicatorStateGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 441
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 2

    .prologue
    .line 132
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookAllSpaceGemini(I)I

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 136
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookAllSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetSimPhonebookAllSpaceGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 401
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookEmailLength()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookEmailLengthGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 425
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 156
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookNameLengthGemini(I)I

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 160
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookNameLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 163
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoGetSimPhonebookNameLengthGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 409
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookNumberLength()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x14

    return v0
.end method

.method public oppoGetSimPhonebookNumberLengthGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 417
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 2

    .prologue
    .line 144
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoGetSimPhonebookUsedSpaceGemini(I)I

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 148
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->oppoGetSimPhonebookUsedSpace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoGetSimPhonebookUsedSpaceGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 405
    const/4 v0, -0x1

    return v0
.end method

.method public oppoIsDialing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->oppoIsDialing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoIsDialing: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 331
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "oppoIsDialing: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetEngineerModeNvProcess(I)V
    .locals 1
    .parameter "processcmd"

    .prologue
    .line 494
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setEngineerModeNvProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoSetIccLockEnabled: remote exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 310
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "oppoSetIccLockEnabled: null pointer exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetLine1Number(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 280
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setLine1Number(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1Number: remote exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setLine1Number: null pointer exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public oppoSetPreferredNetworkType(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    const/4 v2, -0x1

    .line 118
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 119
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 127
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 126
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoSetScAddress(Ljava/lang/String;I)Z
    .locals 4
    .parameter "address"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 359
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setScAddressGemini(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    const/4 v2, 0x1

    .line 364
    :goto_0
    return v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e1:Landroid/os/RemoteException;
    goto :goto_0

    .line 363
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 364
    .local v1, e2:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public oppoSimPhonebookIsReady()I
    .locals 2

    .prologue
    .line 89
    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/OppoTelephonyManager;->oppoSimPhonebookIsReadyGemini(I)I

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 93
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->oppoSimPhonebookIsReady()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public oppoSimPhonebookIsReadyGemini(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 397
    const/4 v0, -0x1

    return v0
.end method
