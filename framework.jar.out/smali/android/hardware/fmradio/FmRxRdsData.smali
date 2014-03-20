.class public Landroid/hardware/fmradio/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FmRxRdsData"

.field private static final MAX_NUM_TAG:I = 0x2

.field private static final MAX_TAG_CODES:I = 0x40

.field private static final RDS_AF_AUTO:I = 0x40

.field private static final RDS_AF_JUMP:I = 0x1

.field private static final RDS_GROUP_AF:I = 0x4

.field private static final RDS_GROUP_PS:I = 0x2

.field private static final RDS_GROUP_RT:I = 0x1

.field private static final RDS_PS_ALL:I = 0x10

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_AF_JUMP:I = 0x800001b

.field private static final V4L2_CID_PRIVATE_TAVARUA_PSALL:I = 0x8000014

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSD_BUF:I = 0x8000013

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f


# instance fields
.field private formatting_dir:Z

.field private mERadioText:Ljava/lang/String;

.field private mFd:I

.field private mPrgmId:I

.field private mPrgmServices:Ljava/lang/String;

.field private mPrgmType:I

.field private mRadioText:Ljava/lang/String;

.field private mTag:[Ljava/lang/String;

.field private mTagCode:[B

.field private rt_ert_flag:Z

.field private tag_nums:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "fd"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mERadioText:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->formatting_dir:Z

    .line 45
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTagCode:[B

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTag:[Ljava/lang/String;

    .line 47
    iput v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->tag_nums:I

    .line 77
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    .line 78
    return-void
.end method


# virtual methods
.method public enableAFjump(Z)I
    .locals 7
    .parameter "AFenable"

    .prologue
    const v6, 0x800001b

    const v5, 0x8000010

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, rds_group_mask:I
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In enableAFjump: AFenable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v2, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 174
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currently set rds_group_mask : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x1

    invoke-static {v2, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 181
    .local v1, re:I
    :goto_0
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v2, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 183
    if-eqz p1, :cond_1

    .line 184
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After enabling the rds_group_mask is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1
    return v1

    .line 179
    .end local v1           #re:I
    :cond_0
    iget v2, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v3, 0x0

    invoke-static {v2, v6, v3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .restart local v1       #re:I
    goto :goto_0

    .line 186
    :cond_1
    const-string v2, "FmRxRdsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After disabling the rds_group_mask is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getERadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mERadioText:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatDir()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->formatting_dir:Z

    return v0
.end method

.method public getPrgmId()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return v0
.end method

.method public getPrgmServices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgmType()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public getTagCode(I)B
    .locals 2
    .parameter "tag_num"

    .prologue
    .line 250
    if-lez p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTagCode:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTagNums()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->tag_nums:I

    return v0
.end method

.method public getTagValue(I)Ljava/lang/String;
    .locals 2
    .parameter "tag_num"

    .prologue
    .line 244
    if-lez p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTag:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public rdsGrpOptions(IIZ)I
    .locals 6
    .parameter "grpMask"
    .parameter "buffSize"
    .parameter "rdsFilter"

    .prologue
    const v5, 0x8000010

    .line 108
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v1, v4

    .line 110
    .local v1, rds_group_mask:B
    and-int/lit16 v4, v1, 0xfe

    int-to-byte v1, v4

    .line 113
    if-eqz p3, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 118
    .local v0, rdsFilt:I
    :goto_0
    or-int v4, v1, v0

    int-to-byte v1, v4

    .line 120
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 122
    .local v2, re:I
    if-eqz v2, :cond_1

    move v3, v2

    .line 133
    .end local v2           #re:I
    .local v3, re:I
    :goto_1
    return v3

    .line 116
    .end local v0           #rdsFilt:I
    .end local v3           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #rdsFilt:I
    goto :goto_0

    .line 125
    .restart local v2       #re:I
    :cond_1
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000013

    invoke-static {v4, v5, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 127
    if-eqz v2, :cond_2

    move v3, v2

    .line 128
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1

    .line 131
    .end local v3           #re:I
    .restart local v2       #re:I
    :cond_2
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000006

    invoke-static {v4, v5, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    move v3, v2

    .line 133
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1
.end method

.method public rdsOn(Z)I
    .locals 5
    .parameter "on"

    .prologue
    const v4, 0x800000f

    .line 86
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In rdsOn: RDS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 96
    .local v0, ret:I
    :goto_0
    return v0

    .line 92
    .end local v0           #ret:I
    :cond_0
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public rdsOptions(I)I
    .locals 8
    .parameter "rdsMask"

    .prologue
    const v7, 0x8000010

    .line 142
    const/4 v3, 0x0

    .line 144
    .local v3, re:I
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v2, v4

    .line 145
    .local v2, rds_group_mask:B
    const/4 v1, 0x0

    .line 146
    .local v1, rdsFilt:B
    and-int/lit8 v0, p1, 0x10

    .line 148
    .local v0, psAllVal:I
    const-string v4, "FmRxRdsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In rdsOptions: rdsMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    and-int/lit16 v4, v2, 0xc7

    int-to-byte v2, v4

    .line 154
    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v2

    int-to-byte v2, v4

    .line 157
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 159
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000014

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v4, v5, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 161
    return v3
.end method

.method public setERadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 225
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mERadioText:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setFormatDir(Z)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 231
    iput-boolean p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->formatting_dir:Z

    .line 232
    return-void
.end method

.method public setPrgmId(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 212
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    .line 213
    return-void
.end method

.method public setPrgmServices(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 205
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPrgmType(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 219
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    .line 220
    return-void
.end method

.method public setRadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 198
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setTagCode(BI)V
    .locals 2
    .parameter "tag_code"
    .parameter "tag_num"

    .prologue
    .line 240
    if-lez p2, :cond_0

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTagCode:[B

    add-int/lit8 v1, p2, -0x1

    aput-byte p1, v0, v1

    .line 242
    :cond_0
    return-void
.end method

.method public setTagNums(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 259
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 260
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->tag_nums:I

    .line 261
    :cond_0
    return-void
.end method

.method public setTagValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "x"
    .parameter "tag_num"

    .prologue
    .line 234
    if-lez p2, :cond_0

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mTag:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aput-object p1, v0, v1

    .line 236
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->tag_nums:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->tag_nums:I

    .line 238
    :cond_0
    return-void
.end method
