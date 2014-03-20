.class public Landroid/dolby/ds/DsAkSettings$ParameterDefn;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/ds/DsAkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDefn"
.end annotation


# instance fields
.field public len:I

.field public lowerBound:S

.field public paramName:Ljava/lang/String;

.field public upperBound:S


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .parameter "name"
    .parameter "len"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 43
    int-to-short v0, p3

    iput-short v0, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    .line 44
    int-to-short v0, p4

    iput-short v0, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v0, p1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    if-nez v0, :cond_0

    .line 55
    .end local p1
    :goto_0
    return v1

    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    iget-object v0, v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    iget-object v2, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    iget v0, v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    iget v2, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    iget-short v0, v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    iget-short v2, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-ne v0, v2, :cond_1

    check-cast p1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    .end local p1
    iget-short v0, p1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    iget-short v2, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
