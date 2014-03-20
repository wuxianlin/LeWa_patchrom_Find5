.class public Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;
.super Ljava/lang/Object;
.source "OppoGsmServiceStateTracker.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "constant define from QCOM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static curCountry:Ljava/lang/String;

.field private static curLanguage:Ljava/lang/String;

.field private static curPlmnNumic:Ljava/lang/String;

.field private static plmn_mcc_mnc:[Ljava/lang/String;

.field private static plmn_oppo_name:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curPlmnNumic:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curLanguage:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 171
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 175
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public static oppoGetAustraliaPlmn(Landroid/telephony/ServiceState;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ss"
    .parameter "plmn"

    .prologue
    .line 156
    const-string v3, "ro.oppo.version"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, region:Ljava/lang/String;
    move-object v2, p1

    .line 159
    .local v2, vRet:Ljava/lang/String;
    const-string v3, "US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, simNumeric:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "23211"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23201"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string p1, "bob"

    .line 167
    .end local v1           #simNumeric:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static oppoGetPlmnOverride(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 9
    .parameter "operatorNumic"
    .parameter "ss"

    .prologue
    .line 88
    if-eqz p0, :cond_6

    .line 89
    const/4 v5, 0x0

    .line 90
    .local v5, language:Ljava/lang/String;
    const-string v7, "persist.sys.country"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, country:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 94
    .local v2, am:Landroid/app/IActivityManager;
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 95
    .local v6, mconfig:Landroid/content/res/Configuration;
    iget-object v7, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 100
    .end local v2           #am:Landroid/app/IActivityManager;
    .end local v6           #mconfig:Landroid/content/res/Configuration;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curPlmnNumic is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curPlmnNumic:Ljava/lang/String;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curPlmnNumic:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", curLanguage is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curLanguage:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curLanguage:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", curCountry is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curCountry:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curCountry:Ljava/lang/String;

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", language is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_3

    move-object v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", country is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_4

    move-object v7, v3

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 107
    sput-object p0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curPlmnNumic:Ljava/lang/String;

    .line 108
    sput-object v5, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curLanguage:Ljava/lang/String;

    .line 109
    sput-object v3, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curCountry:Ljava/lang/String;

    .line 111
    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_mcc_mnc:[Ljava/lang/String;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_oppo_name:Landroid/content/res/TypedArray;

    if-eqz v7, :cond_7

    .line 113
    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_mcc_mnc:[Ljava/lang/String;

    array-length v0, v7

    .line 115
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v0, :cond_7

    .line 116
    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_mcc_mnc:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 117
    sget-object v7, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_oppo_name:Landroid/content/res/TypedArray;

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 133
    .end local v0           #N:I
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #language:Ljava/lang/String;
    :goto_7
    return-object v7

    .line 100
    .restart local v3       #country:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    :cond_0
    const-string v7, ""

    goto :goto_1

    :cond_1
    const-string v7, ""

    goto :goto_2

    :cond_2
    const-string v7, ""

    goto :goto_3

    :cond_3
    const-string v7, ""

    goto :goto_4

    :cond_4
    const-string v7, ""

    goto :goto_5

    .line 115
    .restart local v0       #N:I
    .restart local v4       #i:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 122
    .end local v0           #N:I
    .end local v3           #country:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #language:Ljava/lang/String;
    :cond_6
    sput-object p0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curPlmnNumic:Ljava/lang/String;

    .line 128
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, OperatorName:Ljava/lang/String;
    if-eqz v1, :cond_8

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 131
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 133
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 96
    .end local v1           #OperatorName:Ljava/lang/String;
    .restart local v3       #country:Ljava/lang/String;
    .restart local v5       #language:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public static oppoGsmServiceInit(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 51
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curLanguage:Ljava/lang/String;

    .line 52
    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->curCountry:Ljava/lang/String;

    .line 53
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_mcc_mnc:[Ljava/lang/String;

    .line 54
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->plmn_oppo_name:Landroid/content/res/TypedArray;

    .line 55
    return-void
.end method

.method public static oppoNvCheckAndRestore(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "state.nvRestore.onBootup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const-string v5, "nv restore state reached."

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 64
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 67
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    .local v4, r:Landroid/content/res/Resources;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040670

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x104066f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1040671

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x108061d

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 75
    .local v1, mNotificationBuilder:Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 76
    .local v2, n:Landroid/app/Notification;
    const/16 v5, 0x22b8

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 79
    .end local v1           #mNotificationBuilder:Landroid/app/Notification$Builder;
    .end local v2           #n:Landroid/app/Notification;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "keylog.nvCheck.produce"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    const-string v5, "key log reached"

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/OppoGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 82
    const-string v0, "nvCheckComplete on production line"

    .line 83
    .local v0, content:Ljava/lang/String;
    const/16 v5, 0x138a

    invoke-static {v5, v0}, Landroid/os/OppoManager;->writeRawPartition(ILjava/lang/String;)I

    .line 85
    .end local v0           #content:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static oppoSetDataNetmgrdMTU(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "ss"

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    const-string v0, "persist.data_netmgrd_mtu"

    const-string v1, "1400"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 147
    :cond_2
    const-string v0, "persist.data_netmgrd_mtu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "persist.data_netmgrd_mtu"

    const-string v1, "1500"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
