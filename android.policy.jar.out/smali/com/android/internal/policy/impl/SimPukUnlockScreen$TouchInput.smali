.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mEight:Landroid/view/View;

.field private mFive:Landroid/view/View;

.field private mFour:Landroid/view/View;

.field private mNine:Landroid/view/View;

.field private mOne:Landroid/view/View;

.field private mOppoDeleteBtn:Landroid/view/View;

.field private mOppoEmergencyBtn:Landroid/view/View;

.field private mSeven:Landroid/view/View;

.field private mSix:Landroid/view/View;

.field private mThree:Landroid/view/View;

.field private mTwo:Landroid/view/View;

.field private mZero:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    const v0, 0x10203e4

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    .line 588
    const v0, 0x10203da

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    .line 589
    const v0, 0x10203db

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    .line 590
    const v0, 0x10203dc

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    .line 591
    const v0, 0x10203dd

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    .line 592
    const v0, 0x10203de

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    .line 593
    const v0, 0x10203df

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    .line 594
    const v0, 0x10203e0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    .line 595
    const v0, 0x10203e1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    .line 596
    const v0, 0x10203e2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    .line 597
    const v0, 0x10203e3

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    .line 598
    const v0, 0x102031b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 664
    const/4 v0, -0x1

    .line 665
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 666
    const/4 v0, 0x0

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 667
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 668
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 670
    const/4 v0, 0x2

    goto :goto_0

    .line 671
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 672
    const/4 v0, 0x3

    goto :goto_0

    .line 673
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 674
    const/4 v0, 0x4

    goto :goto_0

    .line 675
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 676
    const/4 v0, 0x5

    goto :goto_0

    .line 677
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    if-ne p1, v1, :cond_7

    .line 678
    const/4 v0, 0x6

    goto :goto_0

    .line 679
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    if-ne p1, v1, :cond_8

    .line 680
    const/4 v0, 0x7

    goto :goto_0

    .line 681
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    if-ne p1, v1, :cond_9

    .line 682
    const/16 v0, 0x8

    goto :goto_0

    .line 683
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 684
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 637
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoEmergencyBtn:Landroid/view/View;

    if-ne p1, v3, :cond_0

    .line 639
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 642
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->mOppoDeleteBtn:Landroid/view/View;

    if-ne p1, v3, :cond_3

    .line 644
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 645
    .local v1, digits:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 646
    .local v2, len:I
    if-lez v2, :cond_1

    .line 647
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 661
    .end local v1           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_2
    :goto_0
    return-void

    .line 656
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 657
    .local v0, digit:I
    if-ltz v0, :cond_2

    .line 658
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 659
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V

    goto :goto_0
.end method
