.class public final enum Landroid/dolby/ds/DsProfileSettings$Category;
.super Ljava/lang/Enum;
.source "DsProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/ds/DsProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/dolby/ds/DsProfileSettings$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/dolby/ds/DsProfileSettings$Category; = null

.field private static final CATEGORY:[Landroid/dolby/ds/DsProfileSettings$Category; = null

.field public static final COUNT:I = 0x5

.field public static final enum CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

.field public static final enum GAME:Landroid/dolby/ds/DsProfileSettings$Category;

.field public static final enum MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

.field public static final enum MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

.field private static final NAME:[Ljava/lang/String;

.field public static final enum VOICE:Landroid/dolby/ds/DsProfileSettings$Category;


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Landroid/dolby/ds/DsProfileSettings$Category;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v2, v2}, Landroid/dolby/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 47
    new-instance v0, Landroid/dolby/ds/DsProfileSettings$Category;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v3, v3}, Landroid/dolby/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 48
    new-instance v0, Landroid/dolby/ds/DsProfileSettings$Category;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4, v4}, Landroid/dolby/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 49
    new-instance v0, Landroid/dolby/ds/DsProfileSettings$Category;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v5, v5}, Landroid/dolby/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 50
    new-instance v0, Landroid/dolby/ds/DsProfileSettings$Category;

    const-string v1, "CUSTOMIZED"

    invoke-direct {v0, v1, v6, v6}, Landroid/dolby/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/dolby/ds/DsProfileSettings$Category;

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v3

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v4

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v5

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v6

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->$VALUES:[Landroid/dolby/ds/DsProfileSettings$Category;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Music"

    aput-object v1, v0, v2

    const-string v1, "Movie"

    aput-object v1, v0, v3

    const-string v1, "Game"

    aput-object v1, v0, v4

    const-string v1, "Voice"

    aput-object v1, v0, v5

    const-string v1, "Customized"

    aput-object v1, v0, v6

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->NAME:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/dolby/ds/DsProfileSettings$Category;

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v3

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v4

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v5

    sget-object v1, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    aput-object v1, v0, v6

    sput-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->CATEGORY:[Landroid/dolby/ds/DsProfileSettings$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/dolby/ds/DsProfileSettings$Category;->value_:I

    return-void
.end method

.method public static FromInt(I)Landroid/dolby/ds/DsProfileSettings$Category;
    .locals 1
    .parameter "i"

    .prologue
    .line 71
    sget-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->CATEGORY:[Landroid/dolby/ds/DsProfileSettings$Category;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/dolby/ds/DsProfileSettings$Category;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsProfileSettings$Category;

    return-object v0
.end method

.method public static values()[Landroid/dolby/ds/DsProfileSettings$Category;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->$VALUES:[Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-virtual {v0}, [Landroid/dolby/ds/DsProfileSettings$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings$Category;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/dolby/ds/DsProfileSettings$Category;->value_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Landroid/dolby/ds/DsProfileSettings$Category;->NAME:[Ljava/lang/String;

    iget v1, p0, Landroid/dolby/ds/DsProfileSettings$Category;->value_:I

    aget-object v0, v0, v1

    return-object v0
.end method
