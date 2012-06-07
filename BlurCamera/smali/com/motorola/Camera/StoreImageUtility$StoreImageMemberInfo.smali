.class Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;
.super Ljava/lang/Object;
.source "StoreImageUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/StoreImageUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreImageMemberInfo"
.end annotation


# instance fields
.field private isLastPicture:Z

.field private isMainPicture:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsXmpMetaDataStorageEnable:Z

.field private mMediaID:Ljava/lang/Integer;

.field private mMultiBurstGroupIdentifier:Ljava/lang/String;

.field private mMultiBurstSequenceFrequency:I

.field private mMultiShotMaxCount:I

.field private mPictureUri:Landroid/net/Uri;

.field private mSequenceNumber:I

.field private mShootingMode:I

.field private mXmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;",
            ">;"
        }
    .end annotation
.end field

.field private mXmpShootingMode:I

.field final synthetic this$0:Lcom/motorola/Camera/StoreImageUtility;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/StoreImageUtility;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/StoreImageUtility;Lcom/motorola/Camera/StoreImageUtility$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;-><init>(Lcom/motorola/Camera/StoreImageUtility;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpArray:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mSequenceNumber:I

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isMainPicture:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isMainPicture:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mPictureUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMediaID:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isLastPicture:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->isLastPicture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstSequenceFrequency:I

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstSequenceFrequency:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstGroupIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiBurstGroupIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mShootingMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mShootingMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mMultiShotMaxCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mXmpShootingMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mIsXmpMetaDataStorageEnable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mIsXmpMetaDataStorageEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$StoreImageMemberInfo;->mContext:Landroid/content/Context;

    return-object p1
.end method
