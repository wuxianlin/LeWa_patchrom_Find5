.class public Landroid/telephony/OppoTelephonyFunction;
.super Ljava/lang/Object;
.source "OppoTelephonyFunction.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of OppoTelephonyFunction"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field public static final CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field public static final PORT_ADDRESS_16_REFERENCE_LENGTH:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 89
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    return-object v0
.end method

.method public static divideDataMessage([B)[[B
    .locals 10
    .parameter "data"

    .prologue
    .line 52
    array-length v3, p0

    .line 54
    .local v3, dataLen:I
    const/16 v0, 0x85

    .line 57
    .local v0, bytePreSeg:I
    if-le v3, v0, :cond_0

    .line 58
    add-int/lit8 v0, v0, -0x5

    .line 61
    :cond_0
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    div-int v6, v7, v0

    .line 62
    .local v6, total:I
    move v5, v3

    .line 63
    .local v5, remainLen:I
    const/4 v2, 0x0

    .line 64
    .local v2, count:I
    new-array v4, v6, [[B

    .line 66
    .local v4, dataSegList:[[B
    :goto_0
    if-lez v5, :cond_2

    .line 69
    if-le v5, v0, :cond_1

    .line 70
    move v1, v0

    .line 75
    .local v1, copyLen:I
    :goto_1
    sub-int/2addr v5, v1

    .line 77
    new-array v7, v1, [B

    aput-object v7, v4, v2

    .line 79
    mul-int v7, v2, v0

    aget-object v8, v4, v2

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 72
    .end local v1           #copyLen:I
    :cond_1
    move v1, v5

    .restart local v1       #copyLen:I
    goto :goto_1

    .line 84
    .end local v1           #copyLen:I
    :cond_2
    return-object v4
.end method

.method public static oppoStripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v4, 0x0

    .line 41
    :goto_0
    return-object v4

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 32
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
