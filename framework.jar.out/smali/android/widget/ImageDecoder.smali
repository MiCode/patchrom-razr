.class Landroid/widget/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageDecoder$1;,
        Landroid/widget/ImageDecoder$PanDirection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SPEED_DATA_MODE:I = 0x5

.field private static final SPEED_DATA_QUALITY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Image Decoder"

.field private static final sMaxZoom:F = 9.0f

.field private static final sPanRate:I = 0x14

.field private static final sZoomRate:F = 1.05f


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

.field private mInitialHeight:I

.field private mInitialWidth:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOutBuf:Landroid/graphics/Bitmap;

.field private mOutHeight:I

.field private mOutWidth:I

.field private mPanX:F

.field private mPanY:F

.field private mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

.field private mZoom:F

.field private spmoHeight:I

.field private spmoWidth:I


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .parameter "inputFile"
    .parameter "isThumbnail"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v2, 0x140

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    .line 33
    const/16 v2, 0xf0

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    .line 35
    iput-object v5, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    .line 36
    iput-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    .line 38
    iput-object v5, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 39
    iput v4, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    .line 40
    iput v4, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    .line 41
    iput-object v5, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    .line 43
    iput v4, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    .line 44
    iput v4, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    .line 46
    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/ImageDecoder;->mZoom:F

    .line 47
    iput v3, p0, Landroid/widget/ImageDecoder;->mPanX:F

    .line 48
    iput v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    .line 49
    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    .line 50
    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    .line 656
    const/4 v1, 0x0

    .line 659
    .local v1, spmo:[B
    const-string v2, "Image Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating ImageDecoder for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput-object p1, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 663
    if-nez p2, :cond_0

    .line 665
    invoke-direct {p0, p1}, Landroid/widget/ImageDecoder;->getSpeedData(Ljava/lang/String;)[B

    move-result-object v1

    .line 668
    :cond_0
    const-string v2, "Image Decoder"

    const-string v3, "call new ImageProcessorImpl\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :try_start_0
    new-instance v2, Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-direct {v2, p1, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/Error;
    const-string v2, "Image Decoder"

    const-string v3, "new ImageProcessorImpl ERROR!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>([BZ)V
    .locals 6
    .parameter "inputImage"
    .parameter "isThumbnail"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v2, 0x140

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    .line 33
    const/16 v2, 0xf0

    iput v2, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    .line 35
    iput-object v4, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    .line 36
    iput-object v4, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    .line 38
    iput-object v4, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 39
    iput v5, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    .line 40
    iput v5, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    .line 41
    iput-object v4, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    .line 43
    iput v5, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    .line 44
    iput v5, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    .line 46
    const/high16 v2, 0x3f80

    iput v2, p0, Landroid/widget/ImageDecoder;->mZoom:F

    .line 47
    iput v3, p0, Landroid/widget/ImageDecoder;->mPanX:F

    .line 48
    iput v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    .line 49
    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    .line 50
    iput v3, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    .line 620
    const/4 v1, 0x0

    .line 623
    .local v1, spmo:[B
    const-string v2, "Image Decoder"

    const-string v3, "creating ImageDecoder for ByteArray"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iput-object v4, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    .line 627
    if-nez p2, :cond_0

    .line 630
    :try_start_0
    const-string v2, "Image Decoder"

    const-string v3, "call extractSpeedData\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->extractSpeedData([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 641
    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "Image Decoder"

    const-string v3, "call new ImageProcessorImpl\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v2, Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-direct {v2, p1, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;-><init>([B[B)V

    iput-object v2, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 652
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Image Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SpeedData Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v1, 0x0

    goto :goto_0

    .line 644
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Error;
    const-string v2, "Image Decoder"

    const-string v3, "new ImageProcessorImpl ERROR!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private adjustCenter(F)V
    .locals 5
    .parameter "zoom"

    .prologue
    .line 555
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    mul-float v0, p1, v2

    .line 556
    .local v0, newPanX:F
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    mul-float v1, p1, v2

    .line 558
    .local v1, newPanY:F
    const-string v2, "Image Decoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Centering to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    .line 560
    return-void
.end method

.method private calcInitialDimensions()V
    .locals 10

    .prologue
    .line 444
    const/4 v6, 0x0

    .line 445
    .local v6, widthFactor:F
    const/4 v0, 0x0

    .line 446
    .local v0, heightFactor:F
    const/4 v3, 0x0

    .line 447
    .local v3, scaleFactor:F
    invoke-virtual {p0}, Landroid/widget/ImageDecoder;->getImageWidth()I

    move-result v2

    .line 448
    .local v2, iw:I
    invoke-virtual {p0}, Landroid/widget/ImageDecoder;->getImageHeight()I

    move-result v1

    .line 449
    .local v1, ih:I
    iget v5, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    .line 450
    .local v5, vw:I
    iget v4, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    .line 452
    .local v4, vh:I
    const-string v7, "Image Decoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iw "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ih "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vw "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vh "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-gt v2, v5, :cond_0

    if-le v1, v4, :cond_1

    .line 456
    :cond_0
    int-to-float v7, v5

    int-to-float v8, v2

    div-float v6, v7, v8

    .line 457
    int-to-float v7, v4

    int-to-float v8, v1

    div-float v0, v7, v8

    .line 459
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 460
    const-string v7, "Image Decoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scaleFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " widthFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " heightFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    .line 465
    int-to-float v7, v1

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    .line 472
    :goto_0
    iget v7, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mPanX:F

    .line 473
    iget v7, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/ImageDecoder;->mPanY:F

    .line 474
    return-void

    .line 469
    :cond_1
    iput v2, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    .line 470
    iput v1, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    goto :goto_0
.end method

.method private convertPixelToOffset(FFF)F
    .locals 3
    .parameter "pixel"
    .parameter "imageSize"
    .parameter "viewSize"

    .prologue
    .line 566
    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    sub-float v2, p2, p3

    div-float v0, v1, v2

    .line 569
    .local v0, offset:F
    const/high16 v1, -0x4080

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 571
    const/high16 v0, -0x4080

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 575
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 577
    :cond_2
    cmpg-float v1, p2, p3

    if-gtz v1, :cond_0

    .line 579
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpeedData(Ljava/lang/String;)[B
    .locals 13
    .parameter "fileName"

    .prologue
    .line 496
    const/4 v2, 0x0

    .line 498
    .local v2, spmo:[B
    :try_start_0
    const-string v9, "Image Decoder"

    const-string v10, "call extractSpeedData\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->extractSpeedData(Ljava/lang/String;)[B

    move-result-object v2

    .line 500
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpeedData Size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " B"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    if-nez v2, :cond_0

    .line 512
    :try_start_1
    const-string v9, "Image Decoder"

    const-string v10, "Generating missing SpeedData\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 514
    .local v3, spmoStartTime:J
    const/4 v9, 0x5

    const/4 v10, 0x5

    iget v11, p0, Landroid/widget/ImageDecoder;->spmoWidth:I

    iget v12, p0, Landroid/widget/ImageDecoder;->spmoHeight:I

    invoke-static {p1, v9, v10, v11, v12}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->createSpeedData(Ljava/lang/String;IIII)[B

    move-result-object v2

    .line 516
    if-eqz v2, :cond_0

    .line 518
    const-string v9, "Image Decoder"

    const-string v10, "Inserting SpeedData into Image"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v3

    .line 520
    .local v5, spmoTime:J
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpeedData Perf Info: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " B "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, origFile:Ljava/io/File;
    const-string v9, "_tmp"

    invoke-virtual {p1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 524
    .local v8, tempFileName:Ljava/lang/String;
    invoke-static {p1, v2, v8}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->insertSpeedData(Ljava/lang/String;[BLjava/lang/String;)V

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 526
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v7, tempFile:Ljava/io/File;
    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 528
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Original file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Temp file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 548
    .end local v1           #origFile:Ljava/io/File;
    .end local v3           #spmoStartTime:J
    .end local v5           #spmoTime:J
    .end local v7           #tempFile:Ljava/io/File;
    .end local v8           #tempFileName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 502
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No SpeedData Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 533
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 536
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "Image Decoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createSpeedData exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    .line 546
    goto :goto_1

    .line 539
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Error;
    const-string v9, "Image Decoder"

    const-string v10, "createSpeedData ERROR!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private panTo(FFZ)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "shouldRender"

    .prologue
    .line 413
    const-string v6, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PanTo Pixel(x,y): ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v6, :cond_1

    .line 417
    const/4 v4, 0x0

    .line 418
    .local v4, xOffset:F
    const/4 v5, 0x0

    .line 420
    .local v5, yOffset:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, panStartTime:J
    iget v6, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    int-to-float v7, v7

    invoke-direct {p0, p1, v6, v7}, Landroid/widget/ImageDecoder;->convertPixelToOffset(FFF)F

    move-result v6

    iput v6, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    .line 423
    iget v6, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    int-to-float v7, v7

    invoke-direct {p0, p2, v6, v7}, Landroid/widget/ImageDecoder;->convertPixelToOffset(FFF)F

    move-result v6

    iput v6, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    .line 424
    const-string v6, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PanTo Offset(x,y): ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v7, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    iget v8, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    invoke-virtual {v6, v7, v8}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->pan(FF)V

    .line 427
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageDecoder;->storePanPosition(FF)V

    .line 429
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 431
    iget-object v6, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v6}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    .line 436
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 437
    .local v2, panTime:J
    const-string v6, "Image Decoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PERF: Pan "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0           #panStartTime:J
    .end local v2           #panTime:J
    .end local v4           #xOffset:F
    .end local v5           #yOffset:F
    :cond_1
    return-void
.end method

.method private storePanPosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    .line 587
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 589
    iget v0, p0, Landroid/widget/ImageDecoder;->mInitialWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    .line 600
    :goto_0
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 602
    iget v0, p0, Landroid/widget/ImageDecoder;->mInitialHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanY:F

    .line 613
    :goto_1
    const-string v0, "Image Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storePanPosition ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    .line 591
    :cond_0
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 593
    iget v0, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    goto :goto_0

    .line 597
    :cond_1
    iput p1, p0, Landroid/widget/ImageDecoder;->mPanX:F

    goto :goto_0

    .line 604
    :cond_2
    iget v0, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 606
    iget v0, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ImageDecoder;->mPanY:F

    goto :goto_1

    .line 610
    :cond_3
    iput p2, p0, Landroid/widget/ImageDecoder;->mPanY:F

    goto :goto_1
.end method


# virtual methods
.method public canPan(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    const-class v1, Landroid/widget/ImageDecoder$PanDirection;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/ImageDecoder$PanDirection;

    aget-object v0, v1, p1

    .line 344
    .local v0, eDirection:Landroid/widget/ImageDecoder$PanDirection;
    sget-object v1, Landroid/widget/ImageDecoder$1;->$SwitchMap$android$widget$ImageDecoder$PanDirection:[I

    invoke-virtual {v0}, Landroid/widget/ImageDecoder$PanDirection;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 355
    :cond_0
    :goto_0
    return v2

    .line 347
    :pswitch_0
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 349
    :pswitch_1
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 351
    :pswitch_2
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 353
    :pswitch_3
    iget v1, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public crop(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->crop(IIII)V

    .line 319
    return-void
.end method

.method public decode()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "Image Decoder"

    const-string v1, "Enter decode\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v0, :cond_0

    .line 487
    const-string v0, "Image Decoder"

    const-string v1, "Decoder not set correctly.\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->nativeGetSourceAttributeInt(I)I

    move-result v0

    return v0
.end method

.method public getOutputBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/widget/ImageDecoder;->mZoom:F

    return v0
.end method

.method public pan(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    const/high16 v4, 0x41a0

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, handled:Z
    const-class v2, Landroid/widget/ImageDecoder$PanDirection;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/widget/ImageDecoder$PanDirection;

    aget-object v0, v2, p1

    .line 367
    .local v0, eDirection:Landroid/widget/ImageDecoder$PanDirection;
    sget-object v2, Landroid/widget/ImageDecoder$1;->$SwitchMap$android$widget$ImageDecoder$PanDirection:[I

    invoke-virtual {v0}, Landroid/widget/ImageDecoder$PanDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 370
    :pswitch_0
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 372
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    sub-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    .line 373
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    :pswitch_1
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    .line 379
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    .line 380
    const/4 v1, 0x1

    goto :goto_0

    .line 384
    :pswitch_2
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    .line 386
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    sub-float/2addr v2, v4

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    .line 387
    const/4 v1, 0x1

    goto :goto_0

    .line 391
    :pswitch_3
    iget v2, p0, Landroid/widget/ImageDecoder;->mOffsetX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_0

    .line 393
    iget v2, p0, Landroid/widget/ImageDecoder;->mPanX:F

    add-float/2addr v2, v4

    iget v3, p0, Landroid/widget/ImageDecoder;->mPanY:F

    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageDecoder;->panTo(FF)V

    .line 394
    const/4 v1, 0x1

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public panBy(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v0, :cond_0

    .line 332
    iget v0, p0, Landroid/widget/ImageDecoder;->mPanX:F

    add-float/2addr v0, p1

    iget v1, p0, Landroid/widget/ImageDecoder;->mPanY:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageDecoder;->panTo(FF)V

    .line 334
    :cond_0
    return-void
.end method

.method public panTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    .line 409
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->rotate(I)V

    .line 309
    return-void
.end method

.method public setFrameNumber(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v0, p1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->setAGIFFrame(I)I

    move-result v0

    return v0
.end method

.method public setOutputBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v1, "Image Decoder"

    const-string v2, "ImageDecoder::setOutputBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    invoke-virtual {v1}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->release()V

    .line 156
    iput-object v3, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    .line 157
    iput-object v3, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 165
    .local v0, colorFormat:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_1

    .line 167
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 170
    :cond_1
    const-string v1, "Image Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating screen  W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mImageProcessor:Lcom/motorola/internal/android/image/ImageProcessorImpl;

    iget v2, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    iget v3, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    iget-object v4, p0, Landroid/widget/ImageDecoder;->mOutBuf:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/motorola/internal/android/image/ImageProcessorImpl;->createScreen(IILandroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    .line 173
    invoke-direct {p0}, Landroid/widget/ImageDecoder;->calcInitialDimensions()V

    .line 174
    return-void
.end method

.method public zoomIn()Z
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    .line 185
    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const/high16 v2, 0x4110

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 187
    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const v2, 0x3f866666

    mul-float v0, v1, v2

    .line 188
    .local v0, newZoomLevel:F
    invoke-virtual {p0, v0}, Landroid/widget/ImageDecoder;->zoomToLevel(F)Z

    move-result v1

    .line 192
    .end local v0           #newZoomLevel:F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    .line 202
    const-string v1, "Image Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoomOut zoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-eqz v1, :cond_0

    .line 205
    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 207
    iget v1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    const v2, 0x3f866666

    div-float v0, v1, v2

    .line 208
    .local v0, newZoomLevel:F
    invoke-virtual {p0, v0}, Landroid/widget/ImageDecoder;->zoomToLevel(F)Z

    move-result v1

    .line 212
    .end local v0           #newZoomLevel:F
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public zoomToLevel(F)Z
    .locals 8
    .parameter "zoomLevel"

    .prologue
    .line 222
    const/high16 v0, 0x3f80

    .line 224
    .local v0, zoomRate:F
    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v5, :cond_0

    .line 227
    const/4 v5, 0x0

    .line 254
    :goto_0
    return v5

    .line 230
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 232
    .local v1, zoomStartTime:J
    const-string v5, "Image Decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zoomToLevel zoomLevel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/high16 v5, 0x4110

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    .line 236
    const/high16 p1, 0x4110

    .line 243
    :cond_1
    :goto_1
    iget v5, p0, Landroid/widget/ImageDecoder;->mZoom:F

    div-float v0, p1, v5

    .line 244
    iput p1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    .line 245
    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v6, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v5, v6}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->zoom(F)V

    .line 246
    invoke-direct {p0, v0}, Landroid/widget/ImageDecoder;->adjustCenter(F)V

    .line 247
    iget-object v5, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v5}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v1

    .line 252
    .local v3, zoomTime:J
    const-string v5, "Image Decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PERF: Zoom "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v5, 0x1

    goto :goto_0

    .line 238
    .end local v3           #zoomTime:J
    :cond_2
    const/high16 v5, 0x3f80

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    .line 240
    const/high16 p1, 0x3f80

    goto :goto_1
.end method

.method public zoomToPoint(FFF)Z
    .locals 11
    .parameter "zoomLevel"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 266
    .local v3, zoomStartTime:J
    const-string v8, "Image Decoder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zoomToLevel zoomLevel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v8, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    if-nez v8, :cond_0

    .line 298
    :goto_0
    return v7

    .line 274
    :cond_0
    const/high16 v8, 0x4110

    cmpl-float v8, p1, v8

    if-lez v8, :cond_2

    .line 276
    const/high16 p1, 0x4110

    .line 283
    :cond_1
    :goto_1
    iget v8, p0, Landroid/widget/ImageDecoder;->mZoom:F

    div-float v2, p1, v8

    .line 285
    .local v2, zoomRate:F
    iget v8, p0, Landroid/widget/ImageDecoder;->mPanX:F

    iget v9, p0, Landroid/widget/ImageDecoder;->mOutWidth:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, p2, v9

    add-float/2addr v8, v9

    mul-float v0, v2, v8

    .line 286
    .local v0, newX:F
    iget v8, p0, Landroid/widget/ImageDecoder;->mPanY:F

    iget v9, p0, Landroid/widget/ImageDecoder;->mOutHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, p3, v9

    add-float/2addr v8, v9

    mul-float v1, v2, v8

    .line 288
    .local v1, newY:F
    iput p1, p0, Landroid/widget/ImageDecoder;->mZoom:F

    .line 289
    iget-object v8, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    iget v9, p0, Landroid/widget/ImageDecoder;->mZoom:F

    invoke-virtual {v8, v9}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->zoom(F)V

    .line 290
    invoke-direct {p0, v0, v1, v7}, Landroid/widget/ImageDecoder;->panTo(FFZ)V

    .line 291
    iget-object v7, p0, Landroid/widget/ImageDecoder;->mScreen:Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;

    invoke-virtual {v7}, Lcom/motorola/internal/android/image/ImageProcessorImpl$ScreenImpl;->renderScreen()V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v3

    .line 296
    .local v5, zoomTime:J
    const-string v7, "Image Decoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PERF: Zoom "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v7, 0x1

    goto :goto_0

    .line 278
    .end local v0           #newX:F
    .end local v1           #newY:F
    .end local v2           #zoomRate:F
    .end local v5           #zoomTime:J
    :cond_2
    const/high16 v8, 0x3f80

    cmpg-float v8, p1, v8

    if-gez v8, :cond_1

    .line 280
    const/high16 p1, 0x3f80

    goto :goto_1
.end method
