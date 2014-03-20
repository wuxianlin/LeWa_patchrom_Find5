.class public Landroid/dolby/DsLog;
.super Ljava/lang/Object;
.source "DsLog.java"


# static fields
.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field public static final LOG_LEVEL_0:I = 0x0

.field public static final LOG_LEVEL_1:I = 0x1

.field public static final LOG_LEVEL_2:I = 0x2

.field public static final LOG_LEVEL_3:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static log2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 55
    return-void
.end method

.method public static log3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "content"

    .prologue
    .line 66
    return-void
.end method
