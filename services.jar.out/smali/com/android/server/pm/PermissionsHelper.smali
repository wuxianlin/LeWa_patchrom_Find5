.class public Lcom/android/server/pm/PermissionsHelper;
.super Ljava/lang/Object;
.source "PermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;
    }
.end annotation


# static fields
.field private static sAllowedPackagesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNearMeMarketAllowedPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PermissionsHelper;->sAllowedPackagesList:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PermissionsHelper;->sNearMeMarketAllowedPermissionList:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/android/server/pm/PermissionsHelper;->sNearMeMarketAllowedPermissionList:Ljava/util/List;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/pm/PermissionsHelper;->sAllowedPackagesList:Ljava/util/Map;

    const-string v1, "oppo.uid.nearme"

    sget-object v2, Lcom/android/server/pm/PermissionsHelper;->sNearMeMarketAllowedPermissionList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static allowPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .locals 3
    .parameter "permission"
    .parameter "pkg"

    .prologue
    .line 49
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 50
    .local v1, id:Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/android/server/pm/PermissionsHelper;->sAllowedPackagesList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, allowPermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v2, 0x1

    .line 54
    :goto_1
    return v2

    .line 49
    .end local v0           #allowPermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #id:Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 54
    .restart local v0       #allowPermissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #id:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static needCopyingLibsToDataForSystemApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/server/pm/PermissionsHelper$ApkLibsHelper;->isLibsNeedCopy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
