.class public Landroid/app/NotificationDialog;
.super Ljava/lang/Object;
.source "NotificationDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NotificationDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SHOW_IF_NEEDED:I = 0x1


# instance fields
.field private mFilterActs:[Ljava/lang/String;

.field private mFilterPkgs:[Ljava/lang/String;

.field private mFlag:I

.field private mIntent:Landroid/app/PendingIntent;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Landroid/app/NotificationDialog$1;

    invoke-direct {v0}, Landroid/app/NotificationDialog$1;-><init>()V

    sput-object v0, Landroid/app/NotificationDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationDialog;->mFilterPkgs:[Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/NotificationDialog;->mFilterActs:[Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/NotificationDialog;->mFlag:I

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "title"
    .parameter "msg"
    .parameter "pkgs"
    .parameter "acts"
    .parameter "targetIntent"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Landroid/app/NotificationDialog;->mFilterPkgs:[Ljava/lang/String;

    .line 29
    iput-object p4, p0, Landroid/app/NotificationDialog;->mFilterActs:[Ljava/lang/String;

    .line 31
    iput-object p5, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    .line 32
    return-void
.end method

.method public static final filter(Ljava/lang/String;Ljava/lang/String;Landroid/app/NotificationDialog;)Z
    .locals 7
    .parameter "pkg"
    .parameter "act"
    .parameter "notificationDialog"

    .prologue
    const/4 v5, 0x1

    .line 157
    invoke-virtual {p2}, Landroid/app/NotificationDialog;->getFilterPkgs()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, filters:[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 159
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 160
    .local v1, filter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    return v5

    .line 159
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #filter:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {p2}, Landroid/app/NotificationDialog;->getFilterActs()[Ljava/lang/String;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    move-object v0, v2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 167
    .restart local v1       #filter:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final generate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/NotificationDialog;
    .locals 1
    .parameter "title"
    .parameter "msg"
    .parameter "pkgs"
    .parameter "acts"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/NotificationDialog;->generate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/NotificationDialog;

    move-result-object v0

    return-object v0
.end method

.method public static final generate(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/NotificationDialog;
    .locals 6
    .parameter "title"
    .parameter "msg"
    .parameter "pkgs"
    .parameter "acts"
    .parameter "targetIntent"

    .prologue
    .line 41
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Landroid/app/NotificationDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationDialog;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/app/NotificationDialog;
    .locals 6

    .prologue
    .line 77
    new-instance v0, Landroid/app/NotificationDialog;

    iget-object v1, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/NotificationDialog;->mFilterPkgs:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Landroid/app/NotificationDialog;->mFilterActs:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object v5, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v0 .. v5}, Landroid/app/NotificationDialog;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 79
    .local v0, another:Landroid/app/NotificationDialog;
    iget v1, p0, Landroid/app/NotificationDialog;->mFlag:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationDialog;->setFlag(I)V

    .line 80
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/app/NotificationDialog;->clone()Landroid/app/NotificationDialog;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method getFilterActs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/NotificationDialog;->mFilterActs:[Ljava/lang/String;

    return-object v0
.end method

.method getFilterPkgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/NotificationDialog;->mFilterPkgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/app/NotificationDialog;->mFlag:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 48
    iput p1, p0, Landroid/app/NotificationDialog;->mFlag:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationDialog title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";hasIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/NotificationDialog;->mFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Landroid/app/NotificationDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/app/NotificationDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/app/NotificationDialog;->mFilterPkgs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/app/NotificationDialog;->mFilterActs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/app/NotificationDialog;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_0
    iget v0, p0, Landroid/app/NotificationDialog;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
