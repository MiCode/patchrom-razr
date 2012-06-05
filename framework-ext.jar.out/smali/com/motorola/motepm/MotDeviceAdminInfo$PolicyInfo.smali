.class public Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
.super Ljava/lang/Object;
.source "MotDeviceAdminInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# instance fields
.field public final description:I

.field public final ident:I

.field public final label:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter "identIn"
    .parameter "tagIn"
    .parameter "labelIn"
    .parameter "descriptionIn"

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->ident:I

    .line 195
    iput-object p2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 196
    iput p3, p0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->label:I

    .line 197
    iput p4, p0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->description:I

    .line 198
    return-void
.end method

.method public static copyFrom(Landroid/app/admin/DeviceAdminInfo$PolicyInfo;)Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    .locals 5
    .parameter "info"

    .prologue
    .line 201
    new-instance v0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    iget v1, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v3, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    iget v4, p0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method
