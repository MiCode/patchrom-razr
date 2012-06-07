.class Lcom/motorola/Camera/MotoCamcorderProfile;
.super Ljava/lang/Object;
.source "Camcorder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamcorderProfile"


# instance fields
.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4950
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 5041
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5042
    const-string v0, "mp4"

    .line 5044
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gp"

    goto :goto_0
.end method

.method private getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x7

    const/16 v2, 0x3ef

    .line 4955
    const/4 v0, 0x0

    .line 4956
    .local v0, cameraId:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 4957
    iget-object v1, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4958
    const/4 v0, 0x0

    .line 4963
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/MotoCamcorderProfile;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v1

    if-eqz v1, :cond_9

    .line 4964
    const-string v1, "QVGA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4965
    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 4999
    :goto_1
    return-object v1

    .line 4960
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4966
    :cond_1
    const-string v1, "VGA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4967
    const/16 v1, 0x3f0

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4968
    :cond_2
    const-string v1, "CIF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4969
    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4970
    :cond_3
    const-string v1, "NTSC_D1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4971
    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4972
    :cond_4
    const-string v1, "720p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4973
    const/16 v1, 0x3ed

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4974
    :cond_5
    const-string v1, "1080p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4975
    const/16 v1, 0x3ee

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4976
    :cond_6
    const-string v1, "MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4977
    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4978
    :cond_7
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4979
    invoke-static {v0, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4981
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No such resoulution supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4984
    :cond_9
    const-string v1, "QVGA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4985
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_1

    .line 4986
    :cond_a
    const-string v1, "VGA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4987
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4988
    :cond_b
    const-string v1, "CIF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4989
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4990
    :cond_c
    const-string v1, "NTSC_D1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4991
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4992
    :cond_d
    const-string v1, "720p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4993
    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4994
    :cond_e
    const-string v1, "1080p"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4995
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4996
    :cond_f
    const-string v1, "MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4997
    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 4998
    :cond_10
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4999
    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto/16 :goto_1

    .line 5001
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No such resoulution supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5027
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioChannels(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5030
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioEncoder(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5018
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5033
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrameHeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5052
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFrameWidth(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5048
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 5007
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/motorola/Camera/MotoCamcorderProfile;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormatInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5011
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 1
    .parameter "s"

    .prologue
    .line 5037
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method public getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5024
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoEncoder(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5015
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "s"

    .prologue
    .line 5021
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getprofile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
