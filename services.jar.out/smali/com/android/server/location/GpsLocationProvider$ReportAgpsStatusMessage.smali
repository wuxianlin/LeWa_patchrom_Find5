.class Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAgpsStatusMessage"
.end annotation


# instance fields
.field ipAddr:[B

.field password:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field status:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;II[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "status"
    .parameter "ipAddr"
    .parameter "ssid"
    .parameter "password"

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2409
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->type:I

    .line 2410
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->status:I

    .line 2411
    iput-object p4, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ipAddr:[B

    .line 2412
    iput-object p5, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->ssid:Ljava/lang/String;

    .line 2413
    iput-object p6, p0, Lcom/android/server/location/GpsLocationProvider$ReportAgpsStatusMessage;->password:Ljava/lang/String;

    .line 2414
    return-void
.end method
