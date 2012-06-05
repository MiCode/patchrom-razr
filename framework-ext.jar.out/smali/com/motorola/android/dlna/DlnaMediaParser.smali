.class public Lcom/motorola/android/dlna/DlnaMediaParser;
.super Ljava/lang/Object;
.source "DlnaMediaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;,
        Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;
    }
.end annotation


# static fields
.field private static final DLNA_CODEC_AAC_ADIF:I = 0x2001

.field private static final DLNA_CODEC_AAC_ADTS:I = 0x2011

.field private static final DLNA_CODEC_AAC_PLUS_V1_ADIF:I = 0x2002

.field private static final DLNA_CODEC_AAC_PLUS_V1_ADTS:I = 0x2012

.field private static final DLNA_CODEC_AAC_PLUS_V2_ADIF:I = 0x2003

.field private static final DLNA_CODEC_AAC_PLUS_V2_ADTS:I = 0x2013

.field private static final DLNA_CODEC_AMR_NB:I = 0x1010

.field private static final DLNA_CODEC_AMR_WB:I = 0x1020

.field private static final DLNA_CODEC_ASFVIDEO_VC1:I = 0x5004

.field private static final DLNA_CODEC_ASFVIDEO_WMV1:I = 0x5001

.field private static final DLNA_CODEC_ASFVIDEO_WMV2:I = 0x5002

.field private static final DLNA_CODEC_ASFVIDEO_WMV3:I = 0x5003

.field private static final DLNA_CODEC_MP3_LAYER1:I = 0x1001

.field private static final DLNA_CODEC_MP3_LAYER2:I = 0x1002

.field private static final DLNA_CODEC_MP3_LAYER3:I = 0x1003

.field private static final DLNA_CODEC_MP4AUDIO_MP4A:I = 0x4002

.field private static final DLNA_CODEC_MP4AUDIO_MP4A_AAC:I = 0x4008

.field private static final DLNA_CODEC_MP4AUDIO_MP4A_AAC_PLUS_V1:I = 0x4009

.field private static final DLNA_CODEC_MP4AUDIO_MP4A_AAC_PLUS_V2:I = 0x400a

.field private static final DLNA_CODEC_MP4AUDIO_SAMR:I = 0x4005

.field private static final DLNA_CODEC_MP4AUDIO_SAWB:I = 0x4006

.field private static final DLNA_CODEC_MP4AUDIO_SAWP:I = 0x4007

.field private static final DLNA_CODEC_MP4VIDEO_MP4V:I = 0x4001

.field private static final DLNA_CODEC_MP4VIDEO_S263:I = 0x4003

.field private static final DLNA_CODEC_MP4VIDEO_S264:I = 0x4004

.field private static final DLNA_CODEC_NODEFINE:I = 0xffff

.field private static final DLNA_CODEC_RMAUDIO_ATRC:I = 0x3003

.field private static final DLNA_CODEC_RMAUDIO_COOK:I = 0x3002

.field private static final DLNA_CODEC_RMAUDIO_RAAC:I = 0x3004

.field private static final DLNA_CODEC_RMAUDIO_SIPR:I = 0x3001

.field private static final DLNA_CODEC_RMVIDEO_RV10:I = 0x3010

.field private static final DLNA_CODEC_RMVIDEO_RV20:I = 0x3020

.field private static final DLNA_CODEC_RMVIDEO_RV30:I = 0x3030

.field private static final DLNA_CODEC_RMVIDEO_RV40:I = 0x3040

.field private static final DLNA_CODEC_WAVE_ADPCM:I = 0x1031

.field private static final DLNA_CODEC_WAVE_ALAW:I = 0x1032

.field private static final DLNA_CODEC_WAVE_MULAW:I = 0x1033

.field private static final DLNA_CODEC_WAVE_PCM:I = 0x1030

.field private static final DLNA_CODEC_WMAUDIO2:I = 0x6001

.field private static final DLNA_CODEC_WMAUDIO3:I = 0x6002

.field private static final DLNA_CODEC_WMAUDIO_PROFILE_BASELINE:I = 0x6010

.field private static final DLNA_CODEC_WMAUDIO_PROFILE_FULL:I = 0x6011

.field private static final DLNA_CODEC_WMV9_LEVEL_HIGH:I = 0x5022

.field private static final DLNA_CODEC_WMV9_LEVEL_L0:I = 0x5023

.field private static final DLNA_CODEC_WMV9_LEVEL_L1:I = 0x5024

.field private static final DLNA_CODEC_WMV9_LEVEL_L2:I = 0x5025

.field private static final DLNA_CODEC_WMV9_LEVEL_L3:I = 0x5026

.field private static final DLNA_CODEC_WMV9_LEVEL_L4:I = 0x5027

.field private static final DLNA_CODEC_WMV9_LEVEL_LOW:I = 0x5020

.field private static final DLNA_CODEC_WMV9_LEVEL_MEDIUM:I = 0x5021

.field private static final DLNA_CODEC_WMV9_PEOFILE_ADVANCED:I = 0x5012

.field private static final DLNA_CODEC_WMV9_PEOFILE_MAIN:I = 0x5011

.field private static final DLNA_CODEC_WMV9_PEOFILE_SIMPLE:I = 0x5010

.field private static final DLNA_JPEG_LRG_HEIGHT:I = 0x1000

.field private static final DLNA_JPEG_LRG_ICO_HEIGHT:I = 0x78

.field private static final DLNA_JPEG_LRG_ICO_WIDTH:I = 0x78

.field private static final DLNA_JPEG_LRG_WIDTH:I = 0x1000

.field private static final DLNA_JPEG_MED_HEIGHT:I = 0x300

.field private static final DLNA_JPEG_MED_WIDTH:I = 0x400

.field private static final DLNA_JPEG_SM_HEIGHT:I = 0x1e0

.field private static final DLNA_JPEG_SM_ICO_HEIGHT:I = 0x30

.field private static final DLNA_JPEG_SM_ICO_WIDTH:I = 0x30

.field private static final DLNA_JPEG_SM_WIDTH:I = 0x280

.field private static final DLNA_JPEG_TN_HEIGHT:I = 0xa0

.field private static final DLNA_JPEG_TN_WIDTH:I = 0xa0

.field private static final DLNA_MEDIA_AAC:I = 0x6

.field private static final DLNA_MEDIA_AMR:I = 0x8

.field private static final DLNA_MEDIA_AMR_WB:I = 0x9

.field private static final DLNA_MEDIA_ASF:I = 0x4

.field private static final DLNA_MEDIA_AU:I = 0xb

.field private static final DLNA_MEDIA_IME:I = 0xa

.field private static final DLNA_MEDIA_MIDI:I = 0x5

.field private static final DLNA_MEDIA_MP3:I = 0x1

.field private static final DLNA_MEDIA_MP4_3GP:I = 0x3

.field private static final DLNA_MEDIA_NODEFINE:I = 0xff

.field private static final DLNA_MEDIA_RM:I = 0x2

.field private static final DLNA_MEDIA_WAVE:I = 0x7

.field private static final DLNA_PNG_LRG_HEIGHT:I = 0x1000

.field private static final DLNA_PNG_LRG_ICO_HEIGHT:I = 0x78

.field private static final DLNA_PNG_LRG_ICO_WIDTH:I = 0x78

.field private static final DLNA_PNG_LRG_WIDTH:I = 0x1000

.field private static final DLNA_PNG_SM_ICO_HEIGHT:I = 0x30

.field private static final DLNA_PNG_SM_ICO_WIDTH:I = 0x30

.field private static final DLNA_PNG_TN_HEIGHT:I = 0xa0

.field private static final DLNA_PNG_TN_WIDTH:I = 0xa0

.field private static final DLNA_PROFILE_AAC_LC:I = 0x2102

.field private static final DLNA_PROFILE_AAC_MAIN:I = 0x2101

.field private static final DLNA_PROFILE_AAC_SSR:I = 0x2103

.field private static SUFFIX_3GPP:Ljava/lang/String; = null

.field private static SUFFIX_M4A:Ljava/lang/String; = null

.field private static SUFFIX_MP4:Ljava/lang/String; = null

.field private static SUFFIX_WMA:Ljava/lang/String; = null

.field private static SUFFIX_WMV:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DlnaMediaParser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "mp4"

    sput-object v0, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_MP4:Ljava/lang/String;

    .line 12
    const-string v0, "m4a"

    sput-object v0, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_M4A:Ljava/lang/String;

    .line 13
    const-string v0, "3gp"

    sput-object v0, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_3GPP:Ljava/lang/String;

    .line 14
    const-string v0, "wma"

    sput-object v0, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_WMA:Ljava/lang/String;

    .line 15
    const-string v0, "wmv"

    sput-object v0, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_WMV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static getAudioMediaType(Ljava/lang/String;)I
    .locals 4
    .parameter "szFileType"

    .prologue
    const/16 v0, 0xff

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 542
    const-string v1, "DlnaMediaParser"

    const-string v2, "getAudioMediaType: szFileType is NULL!\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    const-string v1, "DlnaMediaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioMediaType: szFileType is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v1, "mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    :cond_2
    const-string v1, "rm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ra"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ram"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "rv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 558
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 561
    :cond_4
    const-string v1, "m4a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3ga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3gp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 563
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 566
    :cond_6
    const-string v1, "wma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "asf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 568
    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    .line 571
    :cond_8
    const-string v1, "mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 573
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 576
    :cond_9
    const-string v1, "aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 578
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 581
    :cond_a
    const-string v1, "wav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 583
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 586
    :cond_b
    const-string v1, "amr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 588
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 591
    :cond_c
    const-string v1, "awb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    const/16 v0, 0x9

    goto/16 :goto_0
.end method

.method public static getImageProfile(Ljava/lang/String;II)I
    .locals 3
    .parameter "p_xtension"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 379
    const-string v0, "DlnaMediaParser"

    const-string v1, "getImageProfile: suffix is NULL!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v0, 0x110

    .line 404
    :goto_0
    return v0

    .line 383
    :cond_0
    const-string v1, "jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    :cond_1
    invoke-static {p1, p2}, Lcom/motorola/android/dlna/DlnaMediaParser;->getJPEGProfileName(II)I

    move-result v0

    goto :goto_0

    .line 387
    :cond_2
    const-string v1, "png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-static {p1, p2}, Lcom/motorola/android/dlna/DlnaMediaParser;->getPNGProfileName(II)I

    move-result v0

    goto :goto_0

    .line 391
    :cond_3
    const-string v1, "gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    const-string v0, "DlnaMediaParser"

    const-string v1, "getImageProfile: DLNA_GIF_LRG "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v0, 0xc

    goto :goto_0

    .line 396
    :cond_4
    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    const-string v1, "DlnaMediaParser"

    const-string v2, "getImageProfile: bmp "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_5
    const-string v1, "DlnaMediaParser"

    const-string v2, "getImageProfile: UPNP_IMAGE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getJPEGProfileName(II)I
    .locals 4
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/16 v3, 0x1000

    const/16 v2, 0x78

    const/16 v1, 0x30

    .line 436
    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    .line 438
    const/4 v0, 0x6

    .line 461
    .local v0, profile_name:I
    :goto_0
    const-string v1, "DlnaMediaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJPEGProfileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v0

    .line 440
    .end local v0           #profile_name:I
    :cond_0
    if-ne p0, v2, :cond_1

    if-ne p1, v2, :cond_1

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 442
    const/4 v0, 0x7

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 444
    .end local v0           #profile_name:I
    :cond_1
    const/16 v1, 0x280

    if-gt p0, v1, :cond_2

    const/16 v1, 0x1e0

    if-gt p1, v1, :cond_2

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    .line 446
    const/4 v0, 0x2

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 448
    .end local v0           #profile_name:I
    :cond_2
    const/16 v1, 0x400

    if-gt p0, v1, :cond_3

    const/16 v1, 0x300

    if-gt p1, v1, :cond_3

    if-lez p0, :cond_3

    if-lez p1, :cond_3

    .line 450
    const/4 v0, 0x3

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 452
    .end local v0           #profile_name:I
    :cond_3
    if-gt p0, v3, :cond_4

    if-gt p1, v3, :cond_4

    if-lez p0, :cond_4

    if-lez p1, :cond_4

    .line 454
    const/4 v0, 0x4

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 458
    .end local v0           #profile_name:I
    :cond_4
    const/16 v0, 0x110

    .restart local v0       #profile_name:I
    goto :goto_0
.end method

.method public static getPNGProfileName(II)I
    .locals 4
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    const/16 v3, 0x1000

    const/16 v2, 0x78

    const/16 v1, 0x30

    .line 493
    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    .line 495
    const/16 v0, 0x9

    .line 510
    .local v0, profile_name:I
    :goto_0
    const-string v1, "DlnaMediaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPNGProfileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return v0

    .line 497
    .end local v0           #profile_name:I
    :cond_0
    if-ne p0, v2, :cond_1

    if-ne p1, v2, :cond_1

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 499
    const/16 v0, 0xa

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 501
    .end local v0           #profile_name:I
    :cond_1
    if-gt p0, v3, :cond_2

    if-gt p1, v3, :cond_2

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    .line 503
    const/16 v0, 0xb

    .restart local v0       #profile_name:I
    goto :goto_0

    .line 507
    .end local v0           #profile_name:I
    :cond_2
    const/16 v0, 0x110

    .restart local v0       #profile_name:I
    goto :goto_0
.end method

.method public static getVideoMediaType(Ljava/lang/String;)I
    .locals 4
    .parameter "szFileType"

    .prologue
    const/16 v0, 0xff

    .line 628
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 630
    const-string v1, "DlnaMediaParser"

    const-string v2, "getVideoMediaType: szFileType is NULL!\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_0
    :goto_0
    return v0

    .line 635
    :cond_1
    const-string v1, "DlnaMediaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoMediaType: szFileType is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v1, "rm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ra"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ram"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rmvb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 641
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 644
    :cond_3
    const-string v1, "m4a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3ga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3gp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 646
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 649
    :cond_5
    const-string v1, "wmv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "asf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    :cond_6
    const-string v0, "DlnaMediaParser"

    const-string v1, "getVideoMediaType: return DLNA_MEDIA_ASF!\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static parseAudioItem(Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;Ljava/lang/Integer;)I
    .locals 9
    .parameter "codectype"
    .parameter "clipinfo"
    .parameter "p_dlna_profile_type"

    .prologue
    const/16 v8, 0x2102

    const/16 v7, 0x2001

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 191
    iget-object v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->szFileType:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/dlna/DlnaMediaParser;->getAudioMediaType(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, mediaType:I
    iget-object v1, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->szFileType:Ljava/lang/String;

    .line 194
    .local v1, suffix:Ljava/lang/String;
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 196
    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    const/16 v3, 0x4008

    if-ne v2, v3, :cond_2

    :cond_0
    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecLevel:I

    if-ne v2, v8, :cond_2

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const/high16 v3, 0x5

    if-gt v2, v3, :cond_2

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nMaxChannels:I

    if-gt v2, v4, :cond_2

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nMaxSampleRate:I

    const v3, 0xbb80

    if-gt v2, v3, :cond_2

    sget-object v2, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_MP4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 199
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAudioItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    :goto_0
    return v5

    .line 203
    :cond_2
    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    const/16 v3, 0x4008

    if-ne v2, v3, :cond_4

    :cond_3
    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecLevel:I

    if-ne v2, v8, :cond_4

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const/high16 v3, 0x5

    if-gt v2, v3, :cond_4

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nMaxChannels:I

    if-gt v2, v4, :cond_4

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nMaxSampleRate:I

    const v3, 0xbb80

    if-gt v2, v3, :cond_4

    sget-object v2, Lcom/motorola/android/dlna/DlnaMediaParser;->SUFFIX_3GPP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 206
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAudioItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_5

    .line 213
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 214
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAudioItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_5
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAudioItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-ne v0, v6, :cond_6

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x2f1e7

    if-ge v2, v3, :cond_6

    const/16 v2, 0x6010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_6

    .line 224
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0

    .line 226
    :cond_6
    if-ne v0, v6, :cond_1

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x60400

    if-ge v2, v3, :cond_1

    const/16 v2, 0x6011

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_1

    .line 229
    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_0
.end method

.method public static parseVideoItem(Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;Ljava/lang/Integer;)I
    .locals 10
    .parameter "codectype"
    .parameter "clipinfo"
    .parameter "p_dlna_profile_type"

    .prologue
    const/16 v9, 0x5021

    const/16 v8, 0x5011

    const/16 v7, 0x5003

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 267
    iget-object v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->szFileType:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/dlna/DlnaMediaParser;->getVideoMediaType(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, mediaType:I
    iget-object v1, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->szFileType:Ljava/lang/String;

    .line 270
    .local v1, suffix:Ljava/lang/String;
    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 272
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: mediaType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: clipinfo.nAudioBitrate is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: codectype.audioCodecProfile is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: codectype.videoCodecType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: codectype.videoCodecLevel is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: codectype.videoCodecProfile is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nVideoBitrate:I

    const/high16 v3, 0x6

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nFrameWidth:I

    const/16 v3, 0x160

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nFrameHeight:I

    const/16 v3, 0x120

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecType:I

    const/16 v3, 0x4008

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    const/16 v3, 0x4004

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecLevel:I

    const/16 v3, 0x2102

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const/high16 v3, 0x2

    if-gt v2, v3, :cond_0

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nFileBitrate:I

    const v3, 0x82000

    if-gt v2, v3, :cond_0

    .line 281
    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 282
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return v5

    .line 287
    :cond_0
    if-ne v0, v6, :cond_1

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x2f1e7

    if-ge v2, v3, :cond_1

    const/16 v2, 0x6010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    if-ne v7, v2, :cond_1

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    if-ne v9, v2, :cond_1

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    if-ne v8, v2, :cond_1

    .line 294
    const/16 v2, 0x105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 295
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_1
    if-ne v0, v6, :cond_2

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x60400

    if-ge v2, v3, :cond_2

    const/16 v2, 0x6011

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    if-ne v7, v2, :cond_2

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    if-ne v9, v2, :cond_2

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    if-ne v8, v2, :cond_2

    .line 305
    const/16 v2, 0x106

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 306
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_2
    if-ne v0, v6, :cond_3

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x2f1e7

    if-ge v2, v3, :cond_3

    const/16 v2, 0x6010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    if-ne v7, v2, :cond_3

    const/16 v2, 0x5020

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    if-ne v2, v3, :cond_3

    const/16 v2, 0x5010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    if-ne v2, v3, :cond_3

    .line 316
    const/16 v2, 0x10b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 317
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    :cond_3
    if-ne v0, v6, :cond_4

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x2f1e7

    if-ge v2, v3, :cond_4

    const/16 v2, 0x6010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    if-ne v7, v2, :cond_4

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    if-ne v9, v2, :cond_4

    const/16 v2, 0x5010

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    if-ne v2, v3, :cond_4

    .line 327
    const/16 v2, 0x10c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 328
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_4
    if-ne v0, v6, :cond_5

    iget v2, p1, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->nAudioBitrate:I

    const v3, 0x60400

    if-ge v2, v3, :cond_5

    const/16 v2, 0x6011

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->audioCodecProfile:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecType:I

    if-ne v7, v2, :cond_5

    const/16 v2, 0x5022

    iget v3, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecLevel:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->videoCodecProfile:I

    if-ne v8, v2, :cond_5

    .line 338
    const/16 v2, 0x108

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 339
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    :cond_5
    const-string v2, "DlnaMediaParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseVideoItem: dlna_profile_type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
