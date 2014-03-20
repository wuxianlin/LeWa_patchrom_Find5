.class Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalStrengthObject"
.end annotation


# instance fields
.field public cursignal:Landroid/telephony/SignalStrength;

.field public curvalue:I

.field public prevalue:I

.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Landroid/telephony/SignalStrength;I)V
    .locals 1
    .parameter
    .parameter "cursignalstrength"
    .parameter "oldsignalvalue"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->cursignal:Landroid/telephony/SignalStrength;

    .line 724
    iput p3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->prevalue:I

    .line 725
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->curvalue:I

    .line 727
    return-void
.end method


# virtual methods
.method public genSignalStrength()Landroid/telephony/SignalStrength;
    .locals 3

    .prologue
    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->cursignal:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 731
    const-string v1, "GsmSignalStrength"

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SignalStrengthObject;->prevalue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    return-object v1
.end method
