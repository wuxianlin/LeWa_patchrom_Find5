.class Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;
.super Ljava/lang/Object;
.source "OppoShortCutIndicators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoShortCutIndicators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mId:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oppo/widget/OppoShortCutIndicators;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoShortCutIndicators;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "layout"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->this$0:Lcom/oppo/widget/OppoShortCutIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput p2, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mId:I

    .line 408
    iput-object p3, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 409
    iput-object p4, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 410
    iput-object p5, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setIndicatorIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setIndicatorTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3e99999a

    .line 417
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 421
    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 426
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setIndicatorIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    :cond_0
    return-void
.end method

.method private setIndicatorTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    return-void
.end method

.method private setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    return-void
.end method
