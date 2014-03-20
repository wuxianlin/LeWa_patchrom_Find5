.class public Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "send vcard, only for QCOM"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NationalLanguageShift"
.end annotation


# instance fields
.field public lockingShiftId:I

.field public singleShiftId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput v0, p0, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 321
    iput v0, p0, Lcom/android/internal/telephony/SmsHeader$NationalLanguageShift;->lockingShiftId:I

    return-void
.end method
