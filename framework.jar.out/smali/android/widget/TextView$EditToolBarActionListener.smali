.class public interface abstract Landroid/widget/TextView$EditToolBarActionListener;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianhua.Lin@Plf.SDK,2013.10.07"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditToolBarActionListener"
.end annotation


# virtual methods
.method public abstract onCopyButtonDown()V
.end method

.method public abstract onPasteButtonDown()Z
.end method
