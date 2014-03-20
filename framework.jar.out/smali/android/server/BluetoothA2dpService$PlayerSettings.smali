.class Landroid/server/BluetoothA2dpService$PlayerSettings;
.super Ljava/lang/Object;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerSettings"
.end annotation


# instance fields
.field public attr:B

.field public attrIds:[B

.field public path:Ljava/lang/String;

.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$PlayerSettings;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService$PlayerSettings;-><init>(Landroid/server/BluetoothA2dpService;)V

    return-void
.end method
