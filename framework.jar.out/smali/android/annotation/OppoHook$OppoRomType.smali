.class public final enum Landroid/annotation/OppoHook$OppoRomType;
.super Ljava/lang/Enum;
.source "OppoHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/OppoHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OppoRomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/OppoHook$OppoRomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/OppoHook$OppoRomType;

.field public static final enum MTK:Landroid/annotation/OppoHook$OppoRomType;

.field public static final enum OPPO:Landroid/annotation/OppoHook$OppoRomType;

.field public static final enum QCOM:Landroid/annotation/OppoHook$OppoRomType;

.field public static final enum ROM:Landroid/annotation/OppoHook$OppoRomType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/annotation/OppoHook$OppoRomType;

    const-string v1, "ROM"

    invoke-direct {v0, v1, v2}, Landroid/annotation/OppoHook$OppoRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;

    .line 46
    new-instance v0, Landroid/annotation/OppoHook$OppoRomType;

    const-string v1, "OPPO"

    invoke-direct {v0, v1, v3}, Landroid/annotation/OppoHook$OppoRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;

    .line 47
    new-instance v0, Landroid/annotation/OppoHook$OppoRomType;

    const-string v1, "QCOM"

    invoke-direct {v0, v1, v4}, Landroid/annotation/OppoHook$OppoRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoRomType;->QCOM:Landroid/annotation/OppoHook$OppoRomType;

    .line 48
    new-instance v0, Landroid/annotation/OppoHook$OppoRomType;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v5}, Landroid/annotation/OppoHook$OppoRomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/annotation/OppoHook$OppoRomType;

    sget-object v1, Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/OppoHook$OppoRomType;->QCOM:Landroid/annotation/OppoHook$OppoRomType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/OppoHook$OppoRomType;->MTK:Landroid/annotation/OppoHook$OppoRomType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/annotation/OppoHook$OppoRomType;->$VALUES:[Landroid/annotation/OppoHook$OppoRomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/OppoHook$OppoRomType;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Landroid/annotation/OppoHook$OppoRomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/OppoHook$OppoRomType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/OppoHook$OppoRomType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/annotation/OppoHook$OppoRomType;->$VALUES:[Landroid/annotation/OppoHook$OppoRomType;

    invoke-virtual {v0}, [Landroid/annotation/OppoHook$OppoRomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/OppoHook$OppoRomType;

    return-object v0
.end method
