.class public Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
.super Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
.source "SmsMessage.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
    note = "send sms, only for QCOM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverPdu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;-><init>()V

    return-void
.end method
