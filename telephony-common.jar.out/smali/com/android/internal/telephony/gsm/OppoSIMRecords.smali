.class public Lcom/android/internal/telephony/gsm/OppoSIMRecords;
.super Ljava/lang/Object;
.source "OppoSIMRecords.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "add for SIMInfo db, only for QCOM platform"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OppoInternalFunction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastSetDefaultNameDone()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public static clearSlotId(Landroid/content/Context;)V
    .locals 7
    .parameter "mContext"

    .prologue
    const/4 v6, 0x0

    .line 45
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    .line 46
    .local v0, oldSimInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 48
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "slot"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    .end local v1           #value:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v2, "OppoInternalFunction"

    const-string v3, "getIccIdsDone No sim in slot0 for last time "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIccIdsDone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "mContext"
    .parameter "iccid"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, oldIccIdInSlot:Ljava/lang/String;
    const-string v6, "OppoInternalFunction"

    const-string v7, "getIccIdsDone  "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p0, v10}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v3

    .line 60
    .local v3, oldSimInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v3, :cond_2

    .line 61
    iget-object v2, v3, Landroid/provider/oppo/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 62
    const-string v6, "OppoInternalFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIccIdsDone old IccId In Slot0 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 64
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "slot"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v3, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    .end local v5           #value:Landroid/content/ContentValues;
    :goto_0
    const/4 v1, 0x0

    .line 73
    .local v1, nNewCardCount:I
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    invoke-static {p0, p1, v10}, Landroid/provider/oppo/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 83
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v4

    .line 86
    .local v4, simInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    if-lez v1, :cond_1

    .line 88
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setColorForNewSIM(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, airplaneMode:I
    if-lez v0, :cond_1

    .line 93
    const-string v6, "SIM1"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .end local v0           #airplaneMode:I
    :cond_1
    return-void

    .line 68
    .end local v1           #nNewCardCount:I
    .end local v4           #simInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    :cond_2
    const-string v6, "OppoInternalFunction"

    const-string v7, "getIccIdsDone No sim in slot0 for last time "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setColorForNewSIM(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v7, 0x0

    .line 105
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v1

    .line 106
    .local v1, simInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 107
    .local v0, simColor:I
    if-eqz v1, :cond_2

    .line 108
    iget v0, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mColor:I

    .line 109
    if-ltz v0, :cond_0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 110
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v2, valueColor1:Landroid/content/ContentValues;
    const/4 v0, 0x1

    .line 112
    const-string v3, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/oppo/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    .end local v2           #valueColor1:Landroid/content/ContentValues;
    :cond_1
    const-string v3, "OppoInternalFunction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColorForNewSIM SimInfo simColor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    return-void
.end method

.method public static setDefaultNameForNewSIM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "strName"

    .prologue
    .line 121
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v1

    .line 122
    .local v1, simInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v1, :cond_0

    .line 123
    iget-object v0, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 124
    .local v0, simDisplayName:Ljava/lang/String;
    const-string v2, "OppoInternalFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameForNewSIM SimInfo simDisplayName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-nez v0, :cond_0

    .line 126
    iget-wide v2, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {p0, v2, v3, p1}, Landroid/provider/oppo/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 127
    const-string v2, "OppoInternalFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultNameForNewSIM SimInfo simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/gsm/OppoSIMRecords;->broadCastSetDefaultNameDone()V

    .line 131
    .end local v0           #simDisplayName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setNumberForNewSIM(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "mContext"
    .parameter "msisdn"

    .prologue
    .line 139
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/provider/oppo/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/oppo/Telephony$SIMInfo;

    move-result-object v0

    .line 140
    .local v0, simInfo:Landroid/provider/oppo/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 142
    .local v1, simNumber:Ljava/lang/String;
    const-string v2, "OppoInternalFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNumberForNewSIM SimInfo simNumber is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-wide v2, v0, Landroid/provider/oppo/Telephony$SIMInfo;->mSimId:J

    invoke-static {p0, p1, v2, v3}, Landroid/provider/oppo/Telephony$SIMInfo;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    .line 145
    .end local v1           #simNumber:Ljava/lang/String;
    :cond_0
    return-void
.end method
