.class public Landroid/content/pm/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field public static final ACCEPT:I = 0x0

.field private static final AUTHORITY:Ljava/lang/String; = "com.oppo.providers.permissions"

.field public static final FIRST_MASK:I = 0x1

.field public static final INVALID_RES:I = 0x3

.field public static final PERMISSIONS_PROVIDER_URI:Landroid/net/Uri; = null

.field public static final PROMPT:I = 0x2

.field public static final REJECT:I = 0x1

.field public static final sAlwaysInterceptingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sInterceptingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPermissionsDefaultChoices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const-string v0, "content://com.oppo.providers.permissions/securitylist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PermissionManager;->PERMISSIONS_PROVIDER_URI:Landroid/net/Uri;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.BLUETOOTH"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.NFC"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PermissionManager;->sInterceptingPermissions:Ljava/util/List;

    .line 60
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/PermissionManager;->sPermissionsDefaultChoices:[I

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PermissionManager;->sAlwaysInterceptingPermissions:Ljava/util/List;

    .line 66
    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
