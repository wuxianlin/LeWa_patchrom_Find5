.class Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;
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
    accessFlags = 0x2
    name = "PowerOffFrame"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->ITEM_IDS:[I

    .line 973
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->mAudioManager:Landroid/media/AudioManager;

    .line 974
    iput-object p4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->mHandler:Landroid/os/Handler;

    .line 975
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->mContext:Landroid/content/Context;

    .line 976
    return-void

    .line 966
    :array_0
    .array-data 0x4
        0x65t 0x2t 0x2t 0x1t
        0x64t 0x2t 0x2t 0x1t
    .end array-data
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 980
    const v3, 0x1090044

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 981
    .local v2, v:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 982
    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->ITEM_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 983
    .local v1, itemView:Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 984
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .end local v1           #itemView:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1015
    .local v2, index:I
    if-nez v2, :cond_2

    .line 1016
    const-string v4, "OppoGlobalActions"

    const-string v5, "OppoGlobalActions----shutdown(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1028
    :cond_1
    :goto_1
    :try_start_0
    const-string v4, "android.os.OppoManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1030
    .local v0, clz:Ljava/lang/Class;
    const-string v4, "dumpShutdownMsg"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1031
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    .end local v0           #clz:Ljava/lang/Class;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1018
    :cond_2
    if-ne v2, v6, :cond_1

    .line 1019
    const-string v4, "OppoGlobalActions"

    const-string v5, "OppoGlobalActions----rebootSafeMode(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v4, "ro.SHUT_DOWN_DEVICE"

    const-string v5, "1"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    iget-object v4, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$PowerOffFrame;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$1800(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    goto :goto_1

    .line 1033
    :catch_0
    move-exception v1

    .line 1035
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 990
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method
