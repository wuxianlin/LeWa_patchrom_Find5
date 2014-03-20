.class public Lcom/oppo/widget/OppoShortCutIndicators;
.super Landroid/widget/RelativeLayout;
.source "OppoShortCutIndicators.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;,
        Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoShortCutIndicators"


# instance fields
.field private final debug:Z

.field private isIconAndText:Z

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurId:I

.field private mCurLength:I

.field private mHideImeAction:Ljava/lang/String;

.field private mHorizontalLength:I

.field private mImeStateReceiverRegistered:Z

.field private mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShow:Z

.field private mListener:Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;

.field private mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

.field private mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

.field private mReceiverEnabled:Z

.field private mShowImeAction:Ljava/lang/String;

.field private mVerticalLength:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->debug:Z

    .line 49
    const-string v0, "com.oppo.android.INPUT_WINDOW_SHOWN"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mShowImeAction:Ljava/lang/String;

    .line 50
    const-string v0, "com.oppo.android.INPUT_WINDOW_HIDDED"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mHideImeAction:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 52
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 53
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mImeStateReceiverRegistered:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    .line 57
    iput v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    .line 58
    iput v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    .line 59
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->isIconAndText:Z

    .line 64
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIsShow:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mReceiverEnabled:Z

    .line 66
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->view:Landroid/view/View;

    .line 111
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mContext:Landroid/content/Context;

    .line 112
    const v0, 0x10805f5

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutIndicators;->setBackgroundResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mHorizontalLength:I

    .line 114
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mVerticalLength:I

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->debug:Z

    .line 49
    const-string v0, "com.oppo.android.INPUT_WINDOW_SHOWN"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mShowImeAction:Ljava/lang/String;

    .line 50
    const-string v0, "com.oppo.android.INPUT_WINDOW_HIDDED"

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mHideImeAction:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 52
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 53
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mImeStateReceiverRegistered:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    .line 57
    iput v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    .line 58
    iput v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    .line 59
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->isIconAndText:Z

    .line 64
    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIsShow:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mReceiverEnabled:Z

    .line 66
    iput-object v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->view:Landroid/view/View;

    .line 122
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mContext:Landroid/content/Context;

    .line 123
    const v0, 0x10805f5

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutIndicators;->setBackgroundResource(I)V

    .line 124
    iput-object p0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->view:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mHorizontalLength:I

    .line 126
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mVerticalLength:I

    .line 129
    return-void
.end method

.method private prepareTabLayoutAnim()V
    .locals 11

    .prologue
    const/high16 v8, 0x3f00

    const-wide/16 v9, 0x32

    const/high16 v6, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 377
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    .line 379
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 380
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 381
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonEnterAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 384
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    .line 385
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 386
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 387
    iget-object v3, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 388
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/4 v5, 0x2

    const/4 v7, 0x2

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 391
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 392
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mOppoButtonExitAniSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 393
    return-void
.end method


# virtual methods
.method public addIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "title"
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 142
    .local v6, context:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 144
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900c9

    invoke-virtual {v7, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 145
    .local v3, indicator:Landroid/widget/RelativeLayout;
    iget v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 146
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v1, 0x10203c9

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 149
    .local v5, tv:Landroid/widget/TextView;
    const v1, 0x10203c8

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 151
    .local v4, iconView:Landroid/widget/ImageView;
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    if-eqz p2, :cond_2

    .line 157
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->isIconAndText:Z

    .line 165
    :cond_3
    new-instance v0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    iget v2, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;-><init>(Lcom/oppo/widget/OppoShortCutIndicators;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 166
    .local v0, viewHolder:Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurId:I

    .line 169
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoShortCutIndicators;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getIndicatorsCount()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mListener:Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mListener:Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;

    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;->onIndicatorClick(Landroid/view/View;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    .local v0, size:I
    if-lez v0, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoShortCutIndicators;->setIndicatorsCount(I)V

    .line 455
    :cond_0
    return-void
.end method

.method public setAllIndicatorEnable(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #calls: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setEnable(Z)V
    invoke-static {v1, p1}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$200(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;Z)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method public setIndicatorEnable(IZ)V
    .locals 1
    .parameter "index"
    .parameter "enabled"

    .prologue
    .line 299
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #calls: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setEnable(Z)V
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$200(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;Z)V

    goto :goto_0
.end method

.method public setIndicatorIcon(II)V
    .locals 1
    .parameter "index"
    .parameter "resId"

    .prologue
    .line 312
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #calls: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setIndicatorIcon(I)V
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$400(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;I)V

    goto :goto_0
.end method

.method public setIndicatorTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "index"
    .parameter "title"

    .prologue
    .line 326
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #calls: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setIndicatorTitle(Ljava/lang/CharSequence;)V
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$500(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIndicatorVisibility(II)V
    .locals 1
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 286
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #calls: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->setVisibility(I)V
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$300(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;I)V

    goto :goto_0
.end method

.method public setIndicatorsCount(I)V
    .locals 13
    .parameter "count"

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 177
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq p1, v6, :cond_0

    .line 179
    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "wrong count"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    .line 188
    invoke-virtual {p0}, Lcom/oppo/widget/OppoShortCutIndicators;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 189
    .local v2, height:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 192
    .local v5, width:I
    div-int/lit8 v6, v5, 0x3

    iput v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    .line 201
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    packed-switch v6, :pswitch_data_0

    .line 254
    :goto_0
    iget-boolean v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->isIconAndText:Z

    if-eqz v6, :cond_1

    .line 255
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCount:I

    if-ge v3, v6, :cond_1

    .line 256
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mTitle:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$100(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    .end local v3           #i:I
    :pswitch_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 208
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 217
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 228
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 231
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_3
    div-int/lit8 v6, v5, 0x4

    iput v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    .line 232
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 238
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 243
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 244
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mCurLength:I

    invoke-direct {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .restart local v4       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    iget-object v6, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mIndicators:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;

    #getter for: Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;->access$000(Lcom/oppo/widget/OppoShortCutIndicators$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 260
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOnIndicatorListener(Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/oppo/widget/OppoShortCutIndicators;->mListener:Lcom/oppo/widget/OppoShortCutIndicators$OnIndicatorClickListener;

    .line 341
    return-void
.end method
