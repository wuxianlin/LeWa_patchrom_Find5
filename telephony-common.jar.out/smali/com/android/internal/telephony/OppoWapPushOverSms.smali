.class public Lcom/android/internal/telephony/OppoWapPushOverSms;
.super Ljava/lang/Object;
.source "OppoWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private bundle:Landroid/os/Bundle;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for wappush, only for QCOM"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 58
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 129
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/OppoWapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 132
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 25
    .parameter "pdu"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "add for blacklist"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 151
    const/4 v10, 0x0

    .line 152
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v22, p1, v10

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 153
    .local v19, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v22, p1, v11

    move/from16 v0, v22

    and-int/lit16 v15, v0, 0xff

    .line 154
    .local v15, pduType:I
    const/4 v8, 0x0

    .line 156
    .local v8, headerLength:I
    const/16 v22, 0x6

    move/from16 v0, v22

    if-eq v15, v0, :cond_0

    const/16 v22, 0x7

    move/from16 v0, v22

    if-eq v15, v0, :cond_0

    .line 159
    const/16 v22, 0x1

    .line 326
    :goto_0
    return v22

    .line 162
    :cond_0
    new-instance v22, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v22

    if-nez v22, :cond_1

    .line 172
    const/16 v22, 0x2

    goto :goto_0

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v22

    add-int/lit8 v10, v22, 0x2

    .line 177
    move v9, v10

    .line 191
    .local v9, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v22

    if-nez v22, :cond_2

    .line 193
    const/16 v22, 0x2

    goto :goto_0

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v14

    .line 197
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    .line 198
    .local v3, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v22

    add-int v10, v10, v22

    .line 200
    new-array v7, v8, [B

    .line 201
    .local v7, header:[B
    const/16 v22, 0x0

    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v9, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    if-eqz v14, :cond_5

    const-string v22, "application/vnd.wap.coc"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 206
    move-object/from16 v13, p1

    .line 219
    .local v13, intentData:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    add-int v23, v10, v8

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v10, v0

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v20

    .line 223
    .local v20, wapAppId:Ljava/lang/String;
    if-nez v20, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 227
    :cond_3
    if-nez v14, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, contentType:Ljava/lang/String;
    :goto_2
    const/16 v18, 0x1

    .line 233
    .local v18, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mWapConn:Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/OppoWapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 235
    .local v21, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v21, :cond_7

    .line 266
    :cond_4
    :goto_3
    if-nez v18, :cond_9

    .line 267
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 208
    .end local v5           #contentType:Ljava/lang/String;
    .end local v13           #intentData:[B
    .end local v18           #processFurther:Z
    .end local v20           #wapAppId:Ljava/lang/String;
    .end local v21           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_5
    add-int v6, v9, v8

    .line 209
    .local v6, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v6

    move/from16 v0, v22

    new-array v13, v0, [B

    .line 210
    .restart local v13       #intentData:[B
    const/16 v22, 0x0

    array-length v0, v13

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v6, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .end local v6           #dataIndex:I
    .restart local v20       #wapAppId:Ljava/lang/String;
    :cond_6
    move-object v5, v14

    .line 227
    goto :goto_2

    .line 238
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v18       #processFurther:Z
    .restart local v21       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_7
    :try_start_1
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v12, intent:Landroid/content/Intent;
    const-string v22, "transactionId"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v22, "pduType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v22, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 242
    const-string v22, "data"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 243
    const-string v22, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    const-string v22, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 253
    const-string v22, "WAP PUSH"

    const-string v23, "put addr info into intent 1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v22, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "address"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v22, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "service_center"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v5, v12}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    .line 261
    .local v17, procRet:I
    and-int/lit8 v22, v17, 0x1

    if-lez v22, :cond_4

    const v22, 0x8000

    and-int v22, v22, v17

    if-nez v22, :cond_4

    .line 263
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 269
    .end local v12           #intent:Landroid/content/Intent;
    .end local v17           #procRet:I
    .end local v21           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v22

    .line 275
    .end local v5           #contentType:Ljava/lang/String;
    .end local v18           #processFurther:Z
    .end local v20           #wapAppId:Ljava/lang/String;
    :cond_9
    if-nez v14, :cond_a

    .line 277
    const/16 v22, 0x2

    goto/16 :goto_0

    .line 282
    :cond_a
    const-string v22, "application/vnd.wap.mms-message"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 283
    const-string v16, "android.permission.RECEIVE_MMS"

    .line 292
    .local v16, permission:Ljava/lang/String;
    :goto_4
    new-instance v12, Landroid/content/Intent;

    const-string v22, "android.intent.action.NEW_WAPPUSH_TO_BLACKLIST"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v22, "mimeType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v22, "transactionId"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v22, "pduType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v22, "header"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 302
    const-string v22, "data"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 303
    const-string v22, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 304
    const-string v22, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 311
    const-string v22, "WAP PUSH"

    const-string v23, "put addr info into intent 2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v22, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "address"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v22, "service_center"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "service_center"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/OppoWapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchToBlackList(Landroid/content/Intent;Ljava/lang/String;)V

    .line 326
    const/16 v22, -0x1

    goto/16 :goto_0

    .line 285
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #permission:Ljava/lang/String;
    :cond_c
    const-string v16, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v16       #permission:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public dispatchWapPdu([BLandroid/os/Bundle;)I
    .locals 3
    .parameter "pdu"
    .parameter "extra"

    .prologue
    .line 336
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispathchWapPdu!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "service_center"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object p2, p0, Lcom/android/internal/telephony/OppoWapPushOverSms;->bundle:Landroid/os/Bundle;

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OppoWapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
