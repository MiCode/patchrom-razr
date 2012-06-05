.class final Lcom/motorola/motepm/MotDeviceAdminInfo$1;
.super Ljava/lang/Object;
.source "MotDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/motepm/MotDeviceAdminInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 591
    new-instance v0, Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-direct {v0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/motepm/MotDeviceAdminInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 595
    new-array v0, p1, [Lcom/motorola/motepm/MotDeviceAdminInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo$1;->newArray(I)[Lcom/motorola/motepm/MotDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method
