.class Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MSimCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlmn:[Ljava/lang/CharSequence;

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 47
    .local v0, numPhones:I
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mPlmn:[Ljava/lang/CharSequence;

    .line 48
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSpn:[Ljava/lang/CharSequence;

    .line 49
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 50
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"
    .parameter "sub"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mPlmn:[Ljava/lang/CharSequence;

    aput-object p1, v0, p3

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSpn:[Ljava/lang/CharSequence;

    aput-object p2, v0, p3

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mPlmn:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSpn:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 4
    .parameter "simState"
    .parameter "sub"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object p1, v0, p2

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mPlmn:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->mSpn:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
