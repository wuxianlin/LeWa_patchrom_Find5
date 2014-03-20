.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field emailefid:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field emaillen:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field emails:[Ljava/lang/String;

.field extRecord:I

.field iapefid:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field number:Ljava/lang/String;

.field number2:Ljava/lang/String;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field number2efid:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 213
    if-nez p3, :cond_0

    .line 214
    const-string p3, ""

    .line 216
    :cond_0
    if-nez p4, :cond_1

    .line 217
    const-string p4, ""

    .line 220
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 221
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 222
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 229
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 230
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 231
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 232
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 234
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 184
    if-nez p3, :cond_0

    .line 185
    const-string p3, ""

    .line 187
    :cond_0
    if-nez p4, :cond_1

    .line 188
    const-string p4, ""

    .line 191
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 193
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 195
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 198
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 199
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 200
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 201
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 202
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 204
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"
    .parameter "emailefid"
    .parameter "iapefid"
    .parameter "number2efid"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 486
    if-nez p3, :cond_0

    .line 487
    const-string p3, ""

    .line 489
    :cond_0
    if-nez p4, :cond_1

    .line 490
    const-string p4, ""

    .line 492
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 493
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 494
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 495
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 496
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 497
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 498
    iput p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 499
    iput p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 500
    iput p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 501
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "number2"
    .parameter "emailefid"
    .parameter "iapefid"
    .parameter "number2efid"
    .parameter "emaillen"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 246
    if-nez p3, :cond_0

    .line 247
    const-string p3, ""

    .line 249
    :cond_0
    if-nez p4, :cond_1

    .line 250
    const-string p4, ""

    .line 252
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 253
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 254
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 256
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 257
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 258
    iput p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 259
    iput p8, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 260
    iput p9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 261
    iput p10, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 262
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 66
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 71
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 158
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 159
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 160
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 164
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 165
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 166
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 167
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 168
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 177
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 152
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 440
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 443
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 445
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 447
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 449
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 474
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 460
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 464
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 466
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 469
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 471
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 472
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 304
    if-ne p0, p1, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 307
    :cond_0
    if-nez p0, :cond_1

    .line 308
    const-string p0, ""

    .line 310
    :cond_1
    if-nez p1, :cond_2

    .line 311
    const-string p1, ""

    .line 313
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 408
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 417
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 360
    add-int/lit8 v3, p1, -0xe

    .line 363
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 364
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 365
    aput-byte v8, v0, v4

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 369
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 371
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 373
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 375
    goto :goto_1

    .line 376
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 377
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 379
    goto :goto_1

    .line 381
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 383
    .local v1, bcdNumber:[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 388
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 390
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 393
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 395
    .local v2, byteTag:[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailLen()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 630
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber2()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public oppoGetRecordNumber()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 507
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    return v0
.end method

.method public oppoSetRecordNumber(I)V
    .locals 0
    .parameter "recordIdx"

    .prologue
    .line 511
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 512
    return-void
.end method

.method public oppobuildAdnString(I)[B
    .locals 10
    .parameter "recordSize"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, adnString:[B
    add-int/lit8 v3, p1, -0xe

    .line 564
    .local v3, footerOffset:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 565
    :cond_0
    new-array v0, p1, [B

    .line 566
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 567
    aput-byte v9, v0, v4

    .line 566
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 570
    :cond_1
    const/4 v2, 0x0

    .line 571
    .local v2, byteTag:[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 572
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 573
    if-eqz v2, :cond_3

    array-length v6, v2

    if-le v6, v3, :cond_3

    .line 614
    .end local v2           #byteTag:[B
    .end local v4           #i:I
    :cond_2
    :goto_1
    return-object v5

    .line 577
    .restart local v2       #byteTag:[B
    .restart local v4       #i:I
    :cond_3
    if-eqz v2, :cond_4

    .line 578
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v2           #byteTag:[B
    .end local v4           #i:I
    :cond_4
    :goto_2
    move-object v5, v0

    .line 614
    goto :goto_1

    .line 581
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 583
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v3, :cond_4

    .line 585
    :cond_6
    const/4 v2, 0x0

    .line 586
    .restart local v2       #byteTag:[B
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 587
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/OppoGsmAlphabet;->stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B

    move-result-object v2

    .line 588
    if-eqz v2, :cond_7

    array-length v6, v2

    if-gt v6, v3, :cond_2

    .line 593
    :cond_7
    new-array v0, p1, [B

    .line 594
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, p1, :cond_8

    .line 595
    aput-byte v9, v0, v4

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 598
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 600
    .local v1, bcdNumber:[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 605
    add-int/lit8 v5, v3, 0xc

    aput-byte v9, v0, v5

    .line 607
    add-int/lit8 v5, v3, 0xd

    aput-byte v9, v0, v5

    .line 610
    if-eqz v2, :cond_4

    .line 611
    array-length v5, v2

    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public setEmailEfid(I)V
    .locals 0
    .parameter "efid"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 536
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    .line 537
    return-void
.end method

.method public setEmailLen(I)V
    .locals 0
    .parameter "len"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 622
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    .line 623
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setIAPEfid(I)V
    .locals 0
    .parameter "efid"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 544
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    .line 545
    return-void
.end method

.method public setNumber2(Ljava/lang/String;)V
    .locals 0
    .parameter "num"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 519
    if-eqz p1, :cond_0

    .line 520
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    .line 521
    :cond_0
    return-void
.end method

.method public setNumber2Efid(I)V
    .locals 0
    .parameter "efid"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 552
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    .line 553
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add email and anr number for cmcc and phonebook"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emailefid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iapefid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number2efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emaillen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return-void
.end method
