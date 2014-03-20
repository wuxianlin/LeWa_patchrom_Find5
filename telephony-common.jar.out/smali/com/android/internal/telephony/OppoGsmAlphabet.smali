.class public Lcom/android/internal/telephony/OppoGsmAlphabet;
.super Ljava/lang/Object;
.source "OppoGsmAlphabet.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "constant define from QCOM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static is0X80coding:Z

.field private static is0X81coding:Z

.field private static is0X82coding:Z

.field private static max:I

.field private static min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 49
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 50
    sput-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containChinese(Ljava/lang/String;)Z
    .locals 6
    .parameter "strName"

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 296
    .local v1, ch:[C
    array-length v3, v1

    .line 298
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 300
    aget-char v0, v1, v2

    .line 301
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    const/4 v4, 0x1

    goto :goto_0

    .line 298
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .parameter "rfu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 258
    .local v2, sz:I
    const/4 v1, 0x0

    .line 260
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 262
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return v1
.end method

.method public static enableEncodeTo0x81(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 393
    .local v0, ret:Z
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->containChinese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    const/4 v0, 0x0

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isThai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isRussian(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enableToEncode0X80()Z
    .locals 1

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    return v0
.end method

.method public static enableToEncode0X81()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    return v0
.end method

.method public static enableToEncode0X82()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    return v0
.end method

.method public static encodeTo0x81(Ljava/lang/String;)[B
    .locals 12
    .parameter "src"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, b0x81:[B
    const/4 v2, 0x0

    .line 413
    .local v2, bytes:[B
    const/4 v1, 0x0

    .line 414
    .local v1, base:B
    const/4 v3, 0x0

    .line 415
    .local v3, data:B
    const/4 v6, 0x0

    .line 416
    .local v6, len:I
    const/4 v7, 0x0

    .line 418
    .local v7, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 419
    add-int/lit8 v9, v6, 0x3

    new-array v0, v9, [B

    .line 422
    const/16 v9, -0x7f

    aput-byte v9, v0, v11

    .line 425
    int-to-byte v9, v6

    aput-byte v9, v0, v10

    .line 427
    const/4 v7, 0x3

    .line 428
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 431
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    const-string v9, "utf-16be"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 444
    invoke-static {v8}, Lcom/android/internal/telephony/OppoGsmAlphabet;->isEnglish(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 450
    if-nez v1, :cond_0

    .line 452
    aget-byte v9, v2, v11

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v1, v9

    .line 453
    const/4 v9, 0x2

    aput-byte v1, v0, v9

    .line 457
    :cond_0
    aget-byte v3, v2, v10

    .line 458
    and-int/lit16 v9, v3, 0x80

    if-nez v9, :cond_1

    .line 460
    or-int/lit16 v9, v3, 0x80

    int-to-byte v3, v9

    .line 470
    :cond_1
    :goto_1
    add-int v9, v7, v5

    aput-byte v3, v0, v9

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v4

    .line 440
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encodeTo0x81() : unsurport encoding of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    const/4 v0, 0x0

    .line 473
    .end local v0           #b0x81:[B
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .end local v8           #temp:Ljava/lang/String;
    :cond_2
    return-object v0

    .line 467
    .restart local v0       #b0x81:[B
    .restart local v8       #temp:Ljava/lang/String;
    :cond_3
    aget-byte v3, v2, v10

    goto :goto_1
.end method

.method public static isChinese(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, ret:Z
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 274
    .local v1, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v1, v2, :cond_1

    .line 281
    :cond_0
    const/4 v0, 0x1

    .line 284
    :cond_1
    return v0
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 314
    .local v3, sz:I
    const/4 v2, 0x1

    .line 315
    .local v2, ret:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 318
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    .local v0, c:C
    const/16 v4, 0x21

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const/4 v2, 0x0

    .line 330
    .end local v0           #c:C
    :cond_1
    return v2
.end method

.method public static isRussian(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 365
    .local v4, sz:I
    const/4 v3, 0x1

    .line 366
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 367
    .local v1, hasRussian:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 370
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 371
    .local v0, c:C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 367
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_0
    const/16 v5, 0x400

    if-lt v0, v5, :cond_1

    const/16 v5, 0x4ff

    if-gt v0, v5, :cond_1

    .line 377
    const/4 v1, 0x1

    goto :goto_1

    .line 381
    :cond_1
    const/4 v3, 0x0

    .line 386
    .end local v0           #c:C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static isThai(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 337
    .local v4, sz:I
    const/4 v3, 0x1

    .line 338
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 339
    .local v1, hasThai:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 342
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    .local v0, c:C
    const/16 v5, 0x21

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_0

    .line 339
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    const/16 v5, 0xe01

    if-lt v0, v5, :cond_1

    const/16 v5, 0xe59

    if-gt v0, v5, :cond_1

    .line 349
    const/4 v1, 0x1

    goto :goto_1

    .line 353
    :cond_1
    const/4 v3, 0x0

    .line 358
    .end local v0           #c:C
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static judge([BII)V
    .locals 6
    .parameter "src"
    .parameter "srcOff"
    .parameter "srcLen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    const/16 v2, 0x7fff

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 109
    sput v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 110
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 116
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-eqz v2, :cond_3

    .line 118
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 121
    .local v1, temp:I
    if-gez v1, :cond_1

    .line 123
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    add-int/lit16 v2, v2, 0x82

    sput v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 138
    .end local v0           #i:I
    .end local v1           #temp:I
    :cond_0
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int/2addr v2, v3

    const/16 v3, 0x81

    if-ge v2, v3, :cond_5

    .line 142
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v2, v3, :cond_4

    .line 144
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 145
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 146
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 168
    :goto_1
    return-void

    .line 126
    .restart local v0       #i:I
    .restart local v1       #temp:I
    :cond_1
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    if-le v2, v1, :cond_2

    .line 128
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 130
    :cond_2
    sget v2, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    if-ge v2, v1, :cond_3

    .line 132
    sput v1, Lcom/android/internal/telephony/OppoGsmAlphabet;->max:I

    .line 113
    .end local v1           #temp:I
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 156
    .end local v0           #i:I
    :cond_4
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 157
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    .line 158
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    goto :goto_1

    .line 164
    :cond_5
    sput-boolean v5, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    .line 165
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    .line 166
    sput-boolean v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    goto :goto_1
.end method

.method public static stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 9
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_0

    move-object v2, v5

    .line 99
    :goto_0
    return-object v2

    .line 69
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 71
    .local v3, septets:I
    new-array v2, v3, [B

    .line 73
    .local v2, ret:[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {p0, v2, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2           #ret:[B
    .end local v3           #septets:I
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v6, "utf-16be"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 88
    .local v4, temp:[B
    array-length v6, v4

    div-int/lit8 v6, v6, 0x2

    new-array v2, v6, [B

    .line 89
    .restart local v2       #ret:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/OppoGsmAlphabet;->judge([BII)V

    .line 90
    const/4 v6, 0x0

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v2}, Lcom/android/internal/telephony/OppoGsmAlphabet;->ucs2ToAlphaField([BIII[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v2           #ret:[B
    .end local v4           #temp:[B
    :catch_1
    move-exception v1

    .line 95
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "unsurport encoding."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 96
    goto :goto_0
.end method

.method public static ucs2ToAlphaField([BIII[B)[B
    .locals 5
    .parameter "src"
    .parameter "srcOff"
    .parameter "srcLen"
    .parameter "destOff"
    .parameter "dest"

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, outOff:I
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X80coding:Z

    if-nez v3, :cond_3

    .line 178
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X81coding:Z

    if-eqz v3, :cond_1

    .line 180
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x3

    new-array p4, v3, [B

    .line 181
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 183
    const/16 v3, -0x7f

    aput-byte v3, p4, p3

    .line 185
    sget v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v3, v3, 0x7f80

    sput v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    .line 186
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 187
    add-int/lit8 v1, p3, 0x3

    .line 200
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_4

    .line 204
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    if-nez v3, :cond_2

    .line 206
    add-int v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    .line 216
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 200
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 189
    .end local v0           #i:I
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/OppoGsmAlphabet;->is0X82coding:Z

    if-eqz v3, :cond_0

    .line 191
    div-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array p4, v3, [B

    .line 192
    add-int/lit8 v3, p3, 0x1

    div-int/lit8 v4, p2, 0x2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 194
    const/16 v3, -0x7e

    aput-byte v3, p4, p3

    .line 196
    add-int/lit8 v3, p3, 0x2

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 197
    add-int/lit8 v3, p3, 0x3

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 198
    add-int/lit8 v1, p3, 0x4

    goto :goto_0

    .line 212
    .restart local v0       #i:I
    :cond_2
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    sget v4, Lcom/android/internal/telephony/OppoGsmAlphabet;->min:I

    sub-int v2, v3, v4

    .line 214
    .local v2, temp:I
    or-int/lit16 v3, v2, 0x80

    int-to-byte v3, v3

    aput-byte v3, p4, v1

    goto :goto_2

    .line 222
    .end local v0           #i:I
    .end local v2           #temp:I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    new-array p4, v3, [B

    .line 223
    const/16 v3, -0x80

    aput-byte v3, p4, p3

    .line 224
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_4
    return-object p4
.end method
