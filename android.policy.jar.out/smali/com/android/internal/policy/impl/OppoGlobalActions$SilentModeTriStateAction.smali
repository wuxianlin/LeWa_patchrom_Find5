.class Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 738
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 739
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 740
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 741
    return-void

    .line 730
    :array_0
    .array-data 0x4
        0xb0t 0x2t 0x2t 0x1t
        0xb1t 0x2t 0x2t 0x1t
        0xb2t 0x2t 0x2t 0x1t
        0x63t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 750
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 745
    return p1
.end method

.method private updateIcon(ILandroid/view/View;Landroid/content/Context;)V
    .locals 9
    .parameter "index"
    .parameter "itemView"
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 792
    if-nez p1, :cond_4

    .line 793
    const/4 v1, 0x1

    .line 794
    .local v1, on:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 795
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 798
    :cond_0
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1202(Z)Z

    .line 804
    :goto_0
    const v4, 0x1020266

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 806
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 807
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 808
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 809
    const v4, 0x104064c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 876
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #on:Z
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-void

    .line 800
    .restart local v1       #on:Z
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1200()Z

    move-result v1

    goto :goto_0

    .line 811
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 812
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 813
    const v4, 0x104064d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 815
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #on:Z
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_4
    if-ne p1, v4, :cond_8

    .line 816
    const/4 v1, 0x1

    .line 817
    .restart local v1       #on:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 818
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_5

    move v1, v4

    .line 819
    :goto_2
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1302(Z)Z

    .line 824
    :goto_3
    const v4, 0x1020267

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 825
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v1, :cond_7

    .line 826
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 827
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_5
    move v1, v5

    .line 818
    goto :goto_2

    .line 821
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1300()Z

    move-result v1

    goto :goto_3

    .line 829
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 830
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 832
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #on:Z
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_8
    if-ne p1, v6, :cond_d

    .line 833
    const/4 v1, 0x0

    .line 834
    .restart local v1       #on:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 835
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1402(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 836
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 837
    .local v3, wifiState:I
    if-eq v3, v6, :cond_9

    if-ne v3, v7, :cond_a

    .line 838
    :cond_9
    const/4 v1, 0x1

    .line 840
    :cond_a
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1502(Z)Z

    .line 844
    .end local v3           #wifiState:I
    :goto_4
    const v4, 0x1020268

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 845
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v1, :cond_c

    .line 846
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 847
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 842
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1500()Z

    move-result v1

    goto :goto_4

    .line 849
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_c
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 850
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 852
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #on:Z
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_d
    if-ne p1, v7, :cond_1

    .line 853
    const/4 v1, 0x0

    .line 854
    .restart local v1       #on:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 855
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v4

    if-nez v4, :cond_e

    .line 856
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1602(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 858
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 859
    const/4 v1, 0x1

    .line 861
    :cond_f
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1702(Z)Z

    .line 865
    :goto_5
    const v4, 0x1020269

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 866
    .restart local v2       #tv:Landroid/widget/TextView;
    if-eqz v1, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 867
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 868
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 863
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_10
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1700()Z

    move-result v1

    goto :goto_5

    .line 871
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_11
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 872
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 755
    const v4, 0x1090045

    invoke-virtual {p4, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 757
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 762
    .local v2, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    .line 764
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 765
    .local v1, itemView:Landroid/view/View;
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 766
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 767
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 768
    invoke-virtual {v1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 776
    :cond_0
    :goto_1
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->updateIcon(ILandroid/view/View;Landroid/content/Context;)V

    .line 778
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 779
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 771
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 784
    .end local v1           #itemView:Landroid/view/View;
    :cond_2
    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1102(Z)Z

    .line 786
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    .line 958
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 908
    .local v0, index:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x10202b0

    if-ne v6, v9, :cond_5

    .line 909
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v10, v6, :cond_4

    .line 910
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "vibrate_in_silent"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v7, v6, :cond_2

    move v3, v7

    .line 911
    .local v3, vibeInSilent:Z
    :goto_1
    if-eqz v3, :cond_3

    .line 912
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 957
    .end local v3           #vibeInSilent:Z
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x12c

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v3, v8

    .line 910
    goto :goto_1

    .line 914
    .restart local v3       #vibeInSilent:Z
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 917
    .end local v3           #vibeInSilent:Z
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 919
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x10202b1

    if-ne v6, v9, :cond_8

    .line 920
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_6

    move v2, v7

    .line 921
    .local v2, on:Z
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    if-eqz v2, :cond_7

    :goto_4
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 922
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v1, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    const-string v6, "state"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #on:Z
    :cond_6
    move v2, v8

    .line 920
    goto :goto_3

    .restart local v2       #on:Z
    :cond_7
    move v7, v8

    .line 921
    goto :goto_4

    .line 927
    .end local v2           #on:Z
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x10202b2

    if-ne v6, v9, :cond_d

    .line 929
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1402(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 930
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 931
    .local v5, wifiState:I
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    .line 932
    .local v4, wifiApState:I
    if-eq v5, v10, :cond_9

    const/4 v6, 0x3

    if-ne v5, v6, :cond_a

    .line 933
    :cond_9
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 935
    :cond_a
    const/16 v6, 0xc

    if-eq v4, v6, :cond_b

    const/16 v6, 0xd

    if-ne v4, v6, :cond_c

    .line 936
    :cond_b
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 938
    :cond_c
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1400()Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_2

    .line 941
    .end local v4           #wifiApState:I
    .end local v5           #wifiState:I
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v9, 0x1020263

    if-ne v6, v9, :cond_1

    .line 942
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v6

    if-nez v6, :cond_e

    .line 943
    iget-object v6, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-static {v6}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1602(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 945
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 946
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2

    .line 948
    :cond_f
    invoke-static {}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1600()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 881
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method
