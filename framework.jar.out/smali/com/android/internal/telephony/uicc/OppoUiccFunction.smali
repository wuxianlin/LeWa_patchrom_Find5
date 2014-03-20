.class public Lcom/android/internal/telephony/uicc/OppoUiccFunction;
.super Ljava/lang/Object;
.source "OppoUiccFunction.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "add for SIMInfo db, only for QCOM platform"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oppoBuildEmailString(Ljava/lang/String;II)[B
    .locals 6
    .parameter "email"
    .parameter "bufferlen"
    .parameter "recordNumber"

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, emailString:[B
    const/4 v0, 0x0

    .line 63
    .local v0, byteTag:[B
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 65
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Email String"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .line 99
    :goto_0
    return-object v3

    .line 68
    :cond_1
    new-array v1, p1, [B

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, i:I
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p1, -0x2

    if-ge v2, v3, :cond_2

    .line 73
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 78
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 81
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_3
    add-int/lit8 v3, p2, -0x1

    div-int/lit16 v3, v3, 0xfa

    if-nez v3, :cond_4

    .line 87
    add-int/lit8 v3, p1, -0x2

    const/4 v4, 0x1

    aput-byte v4, v1, v3

    .line 93
    :goto_2
    add-int/lit8 v3, p1, -0x1

    rem-int/lit16 v4, p2, 0xfa

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 95
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oppoBuildEmailString x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v3, v1

    .line 99
    goto :goto_0

    .line 91
    :cond_4
    add-int/lit8 v3, p1, -0x2

    const/4 v4, 0x2

    aput-byte v4, v1, v3

    goto :goto_2

    .line 98
    :cond_5
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete email"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static oppoBuildNumber2String(Ljava/lang/String;)[B
    .locals 7
    .parameter "num"

    .prologue
    const/16 v5, 0xf

    const/4 v6, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, num2String:[B
    const/4 v0, 0x0

    .line 106
    .local v0, bcdNumber:[B
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    .line 108
    :cond_0
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "error build Number2 String"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v3, 0x0

    .line 129
    :goto_0
    return-object v3

    .line 111
    :cond_1
    new-array v2, v5, [B

    .line 112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 114
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 118
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    if-eqz v0, :cond_3

    .line 121
    const-string v3, "RIL_AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteTag length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    aput-byte v6, v2, v6

    .line 123
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 124
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    move-object v3, v2

    .line 129
    goto :goto_0

    .line 128
    :cond_4
    const-string v3, "RIL_AdnRecordLoader"

    const-string v4, "delete Number2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static oppoGetSimType()Z
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, vRet:Z
    const-string v2, "gsm.sim.card.type"

    const-string v3, "SIM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, vStr:Ljava/lang/String;
    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0
.end method

.method public static oppoWriteSim()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static oppoWriteUsim()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "gsm.sim.card.type"

    const-string v1, "SIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "gsm.sim.card.type"

    const-string v1, "USIM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method
