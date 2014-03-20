.class public Landroid/dolby/ds/DsAkSettings;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsAkSettings$SettingDefn;,
        Landroid/dolby/ds/DsAkSettings$ParameterDefn;
    }
.end annotation


# static fields
.field private static final AKPARAM_AOCC:S = 0x2s

.field public static final AK_DS1_FEATURE_AUTO:S = 0x2s

.field public static final AK_DS1_FEATURE_OFF:S = 0x0s

.field public static final AK_DS1_FEATURE_ON:S = 0x1s

.field private static final LOG_TAG:Ljava/lang/String; = "DsAkSettings"

.field private static akAllParamDefinitions_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static akParam_aonb_:S

.field private static akParam_gebf_:[I

.field private static akParam_genb_:S

.field private static akParam_ienb_:S

.field private static final akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

.field public static akSettableParamDefinitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static constantAkParamsDefined_:Z

.field private static settingsDefaults_:[S

.field private static settingsDefinitions_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/dolby/ds/DsAkSettings$SettingDefn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private values_:[S


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0x28

    const/16 v10, 0x14

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 104
    const/16 v1, 0x40

    new-array v1, v1, [Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v3, "bver"

    const/4 v4, 0x5

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v3, "bndl"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v12, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v3, "ocf"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v8, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v12

    const/4 v2, 0x3

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "preg"

    const/16 v5, -0x1e0

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vdhe"

    invoke-direct {v3, v4, v8, v9, v12}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vspe"

    invoke-direct {v3, v4, v8, v9, v12}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v8, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvli"

    const/16 v5, -0x280

    invoke-direct {v3, v4, v8, v5, v9}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvlo"

    const/16 v5, -0x280

    invoke-direct {v3, v4, v8, v5, v9}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvle"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvmc"

    const/16 v5, -0x140

    const/16 v6, 0x140

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvme"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ienb"

    invoke-direct {v3, v4, v8, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iebf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ieon"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "deon"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ngon"

    invoke-direct {v3, v4, v8, v9, v12}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "geon"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "genb"

    invoke-direct {v3, v4, v8, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "gebf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v3, "aonb"

    invoke-direct {v2, v3, v8, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v10

    const/16 v2, 0x15

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aobf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v11, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aobg"

    const/16 v5, 0x149

    const/16 v6, -0x1e0

    const/16 v7, 0x1e0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aoon"

    invoke-direct {v3, v4, v8, v9, v12}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arnb"

    invoke-direct {v3, v4, v8, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v11, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "plb"

    const/16 v5, 0x120

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "plmd"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ven"

    invoke-direct {v3, v4, v8, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnnb"

    invoke-direct {v3, v4, v8, v8, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbf"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbg"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbe"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcnb"

    invoke-direct {v3, v4, v8, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbg"

    const/16 v5, -0xc0

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbe"

    const/16 v5, -0xc0

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ver"

    const/4 v5, 0x4

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "pstg"

    const/16 v5, -0x820

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dhsb"

    const/16 v5, 0x60

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v3, "dhrg"

    const/16 v4, -0x820

    const/16 v5, 0x60

    invoke-direct {v2, v3, v8, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v11

    const/16 v2, 0x29

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssb"

    const/16 v5, 0x60

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssa"

    const/4 v5, 0x5

    const/16 v6, 0x1e

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvla"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iebt"

    const/16 v5, -0x1e0

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iea"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dea"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ded"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "gebg"

    const/16 v5, -0x240

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aocc"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbi"

    invoke-direct {v3, v4, v11, v9, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbl"

    const/16 v5, -0x820

    invoke-direct {v3, v4, v11, v5, v9}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbh"

    const/16 v5, -0x820

    invoke-direct {v3, v4, v11, v5, v9}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arod"

    const/16 v5, 0xc0

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "artp"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "endp"

    const/4 v5, 0x6

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "mxou"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v8, v8, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vol"

    const/16 v5, -0x800

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vmon"

    invoke-direct {v3, v4, v8, v9, v12}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vmb"

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v8, v9, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcmf"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcvd"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v12, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcsz"

    const/16 v5, 0x7fff

    invoke-direct {v3, v4, v8, v8, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-instance v3, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcpt"

    const/16 v5, 0xa8

    const/16 v6, -0x80

    const/16 v7, 0x7f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    .line 187
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    .line 192
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    .line 197
    sput-boolean v9, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 202
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 203
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    .line 204
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    .line 205
    const/4 v1, 0x0

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    .line 523
    const/4 v0, 0x0

    .local v0, paramIndex:I
    :goto_0
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 525
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    sget-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    .line 566
    return-void
.end method

.method public constructor <init>(Landroid/dolby/ds/DsAkSettings;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    invoke-virtual {p1}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v0

    invoke-virtual {p1}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    .line 576
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/dolby/ds/DsAkSettings;-><init>()V

    .line 587
    invoke-virtual {p0, p1}, Landroid/dolby/ds/DsAkSettings;->set([[I)V

    .line 588
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100()[Landroid/dolby/ds/DsAkSettings$ParameterDefn;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    return-object v0
.end method

.method private static defineSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 479
    const/4 v4, 0x0

    .local v4, paramIndex:I
    const/4 v0, 0x0

    .local v0, elemIndex:I
    const/4 v3, 0x0

    .local v3, nElemPerParam:I
    const/4 v1, 0x0

    .line 484
    .local v1, elemLen:I
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 486
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    add-int/2addr v1, v5

    .line 484
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    :cond_1
    new-array v5, v1, [S

    sput-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    .line 494
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 496
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v3, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 499
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 501
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v6, v4, v8}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    aput-short v8, v5, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 494
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 507
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 509
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v6, v4, v2}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    aput-short v8, v5, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 516
    .end local v2           #i:I
    :cond_4
    return-void
.end method

.method public static getAkParamIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "parameter"

    .prologue
    .line 394
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 396
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAkParamIndex: parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getAkSettingIndex(II)I
    .locals 3
    .parameter "parameter"
    .parameter "offset"

    .prologue
    .line 411
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v2, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v2, p0, p1}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 412
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getGeqBandCount()I
    .locals 1

    .prologue
    .line 290
    sget-short v0, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 291
    .local v0, bandCount:I
    return v0
.end method

.method public static getGeqBandFrequencies()[I
    .locals 1

    .prologue
    .line 301
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    return-object v0
.end method

.method public static getNumElementsPerDevice()I
    .locals 1

    .prologue
    .line 432
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public static getNumOfParams()I
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v0, v0

    return v0
.end method

.method public static getParamArrayLength(Ljava/lang/String;)I
    .locals 2
    .parameter "parameter"

    .prologue
    .line 313
    invoke-static {p0}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .end local v0           #i:I
    :goto_0
    return v0

    .restart local v0       #i:I
    :cond_0
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget v0, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    goto :goto_0
.end method

.method public static getParamsDefinitions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 541
    .local v1, paramNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 543
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    return-object v1
.end method

.method public static getSettingsDefinitions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isAkParamLengthValid(Ljava/lang/String;I)Z
    .locals 5
    .parameter "parameter"
    .parameter "length"

    .prologue
    .line 454
    const/4 v1, 0x1

    .line 455
    .local v1, ret:Z
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-static {p0}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, i:I
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    if-eq p1, v2, :cond_0

    .line 460
    const/4 v1, 0x0

    .line 461
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configuration file, the AK parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NOT compatible to the defined length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0           #i:I
    :cond_0
    return v1
.end method

.method public static isConstantAkParamsDefined()Z
    .locals 1

    .prologue
    .line 442
    sget-boolean v0, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    return v0
.end method

.method private static isParamSettable(Ljava/lang/String;)Z
    .locals 1
    .parameter "parameter"

    .prologue
    .line 338
    const-string v0, "vdhe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vspe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ngon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ieon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dhsb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dhrg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvla"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iebt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gebg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aoon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "plb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "plmd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vmon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vmb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvli"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvlo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvmc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ienb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "genb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aonb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aobf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aobg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arnb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aocc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "artp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParamValueConflicted(IIS)Z
    .locals 5
    .parameter "paramIndex"
    .parameter "offset"
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, ret:Z
    sget-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-eqz v1, :cond_5

    .line 617
    const-string v1, "genb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    if-eq p3, v1, :cond_1

    .line 619
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    const-string v1, "ienb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    if-eq p3, v1, :cond_2

    .line 624
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ienb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x1

    goto :goto_0

    .line 627
    :cond_2
    const-string v1, "aonb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_3

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq p3, v1, :cond_3

    .line 629
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aonb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    :cond_3
    const-string v1, "arnb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_4

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq p3, v1, :cond_4

    .line 634
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arnb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 637
    :cond_4
    const-string v1, "aocc"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eq p3, v4, :cond_0

    .line 639
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aocc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 645
    :cond_5
    const-string v1, "DsAkSettings"

    const-string v2, "Settable settings not defined yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isValidParamValue(IS)Z
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 326
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v0, v0, p0

    iget-short v0, v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-lt p1, v0, :cond_0

    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v0, v0, p0

    iget-short v0, v0, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setConstantAkParam(Ljava/lang/String;[I)V
    .locals 6
    .parameter "parameter"
    .parameter "values"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, i:I
    const-string v1, "genb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of GEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "gebf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 233
    const-string v1, "gebg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 234
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 235
    const-string v1, "vcbf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 236
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 237
    const-string v1, "vcbg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 238
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 239
    const-string v1, "vcbe"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 241
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 276
    :cond_0
    :goto_0
    sget-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-nez v1, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    if-eq v1, v5, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    if-eq v1, v5, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq v1, v5, :cond_1

    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->defineSettings()V

    .line 279
    const/4 v1, 0x1

    sput-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 281
    :cond_1
    return-void

    .line 243
    :cond_2
    const-string v1, "ienb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of IEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "iebf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 248
    const-string v1, "iebt"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 250
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    goto :goto_0

    .line 252
    :cond_3
    const-string v1, "aonb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of Audio Optimizer bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "aobf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 256
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 257
    const-string v1, "aobg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 259
    const-string v1, "arbf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 261
    const-string v1, "arbi"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 263
    const-string v1, "arbl"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 264
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 265
    const-string v1, "arbh"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 267
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    goto/16 :goto_0

    .line 269
    :cond_4
    const-string v1, "gebf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "DsAkSettings"

    const-string v2, "Initializing the graphic equalizer band center frequencies"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sput-object p1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;I)S
    .locals 4
    .parameter "parameter"
    .parameter "offset"

    .prologue
    .line 757
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 758
    .local v1, paramIndex:I
    invoke-static {v1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 759
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 760
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The parameter and offset combination is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    :cond_0
    iget-object v2, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    aget-short v2, v2, v0

    return v2
.end method

.method public get(Ljava/lang/String;)[S
    .locals 7
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v3

    .line 734
    .local v3, paramIndex:I
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 735
    .local v0, i:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 736
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The parameter and offset combination is not allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 738
    :cond_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget v2, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 739
    .local v2, length:I
    new-array v4, v2, [S

    .line 740
    .local v4, values:[S
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 741
    iget-object v5, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    add-int v6, v0, v1

    aget-short v5, v5, v6

    aput-short v5, v4, v1

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    return-object v4
.end method

.method getValues()[S
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    return-object v0
.end method

.method public set(Ljava/lang/String;IS)V
    .locals 5
    .parameter "parameter"
    .parameter "offset"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, paramIndex:I
    invoke-direct {p0, v1, p2, p3}, Landroid/dolby/ds/DsAkSettings;->isParamValueConflicted(IIS)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The parameter value conflicts with the pre-defined value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    :cond_0
    invoke-static {v1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 708
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 709
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The parameter and offset combination is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_1
    invoke-static {v1, p3}, Landroid/dolby/ds/DsAkSettings;->isValidParamValue(IS)Z

    move-result v2

    if-nez v2, :cond_4

    .line 713
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is out of valid range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-ge p3, v2, :cond_2

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short p3, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    .line 715
    :cond_2
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-le p3, v2, :cond_3

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short p3, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    .line 716
    :cond_3
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clamp the value to the upper/lower bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_4
    iget-object v2, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    aput-short p3, v2, v0

    .line 720
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set: (parameter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public set(Ljava/lang/String;[S)V
    .locals 8
    .parameter "parameter"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v3

    .line 678
    .local v3, paramIndex:I
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 679
    .local v0, i:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 680
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The parameter and offset combination is not allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    :cond_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget v4, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 683
    .local v4, paramLen:I
    array-length v5, p2

    if-ge v5, v4, :cond_1

    array-length v2, p2

    .line 684
    .local v2, len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 686
    aget-short v5, p2, v1

    sget-object v6, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v6, v6, v3

    iget-short v6, v6, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-ge v5, v6, :cond_2

    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    :goto_2
    aput-short v5, p2, v1

    .line 687
    aget-short v5, p2, v1

    sget-object v6, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v6, v6, v3

    iget-short v6, v6, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-le v5, v6, :cond_3

    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    :goto_3
    aput-short v5, p2, v1

    .line 688
    iget-object v5, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    add-int v6, v0, v1

    aget-short v7, p2, v1

    aput-short v7, v5, v6

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #j:I
    .end local v2           #len:I
    :cond_1
    move v2, v4

    .line 683
    goto :goto_0

    .line 686
    .restart local v1       #j:I
    .restart local v2       #len:I
    :cond_2
    aget-short v5, p2, v1

    goto :goto_2

    .line 687
    :cond_3
    aget-short v5, p2, v1

    goto :goto_3

    .line 690
    :cond_4
    const-string v5, "DsAkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set: (parameter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public set([[I)V
    .locals 8
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 659
    move-object v0, p1

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 661
    .local v1, fpv:[I
    array-length v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 662
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Each setting must contain an array of 3 ints declared as int[3]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 663
    :cond_0
    const/4 v5, 0x0

    aget v2, v1, v5

    .line 664
    .local v2, i:I
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x2

    aget v7, v1, v7

    int-to-short v7, v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 666
    .end local v1           #fpv:[I
    .end local v2           #i:I
    :cond_1
    return-void
.end method
