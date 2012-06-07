.class Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;
.super Ljava/lang/Object;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/SaveImageService$StoreImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageContainer"
.end annotation


# instance fields
.field private mDate:J

.field private mJpeg:[B

.field mLocation:Landroid/location/Location;

.field mOrientation:I

.field private mPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;I)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "jpeg"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->this$1:Lcom/motorola/Camera/SaveImageService$StoreImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mPath:Ljava/lang/String;

    .line 438
    iput-object p3, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mJpeg:[B

    .line 439
    iput-wide p4, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mDate:J

    .line 440
    if-eqz p6, :cond_0

    .line 442
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mLocation:Landroid/location/Location;

    .line 444
    :cond_0
    iput p7, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mOrientation:I

    .line 445
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;ILcom/motorola/Camera/SaveImageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 424
    invoke-direct/range {p0 .. p7}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;-><init>(Lcom/motorola/Camera/SaveImageService$StoreImage;Ljava/lang/String;[BJLandroid/location/Location;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getImage()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->getOrientation()I

    move-result v0

    return v0
.end method

.method private getDate()J
    .locals 2

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mDate:J

    return-wide v0
.end method

.method private getImage()[B
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mJpeg:[B

    return-object v0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mOrientation:I

    return v0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$StoreImage$ImageContainer;->mPath:Ljava/lang/String;

    return-object v0
.end method
