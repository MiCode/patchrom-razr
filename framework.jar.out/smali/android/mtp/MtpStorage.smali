.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private final mReserveSpace:J

.field private final mStorageId:I

.field private final mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v1

    iput v1, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    .line 47
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 52
    iget-boolean v1, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, volumeid:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpStorage;->mVolumeId:Ljava/lang/String;

    .line 59
    .end local v0           #volumeid:I
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "ro.serialno"

    const-string v2, "????????"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpStorage;->mVolumeId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStorageId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 79
    add-int/lit8 v0, p0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserveSpace()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public final isRemovable()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method
