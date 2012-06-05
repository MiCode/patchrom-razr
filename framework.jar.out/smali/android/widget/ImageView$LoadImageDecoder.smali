.class Landroid/widget/ImageView$LoadImageDecoder;
.super Ljava/lang/Thread;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageDecoder"
.end annotation


# instance fields
.field private encodedImageUri:Landroid/net/Uri;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mGifImageBytes:[B

.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1501
    iput-object p1, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1502
    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    .line 1503
    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    .line 1504
    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1505
    iput-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 1507
    iput v1, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    .line 1508
    iput v1, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Landroid/widget/ImageView$LoadImageDecoder;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public getGifImageBytes()[B
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mGifImageBytes:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1519
    iget v0, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    return v0
.end method

.method public init(Landroid/net/Uri;Landroid/widget/ImageView$OnDecoderLoaded;)V
    .locals 11
    .parameter "uri"
    .parameter "callback"

    .prologue
    const/4 v10, 0x0

    .line 1529
    const/4 v6, 0x0

    .line 1531
    .local v6, weight:F
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1400(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_0

    .line 1532
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1500(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1535
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    .line 1536
    iput-object p2, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    .line 1538
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1600(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    .line 1539
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    .line 1541
    const/4 v2, 0x0

    .line 1542
    .local v2, input:Ljava/io/InputStream;
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-ltz v7, :cond_2

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-nez v7, :cond_1

    cmpl-float v7, v6, v10

    if-gtz v7, :cond_2

    :cond_1
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-nez v7, :cond_8

    cmpl-float v7, v6, v10

    if-lez v7, :cond_8

    .line 1546
    :cond_2
    const/4 v5, 0x0

    .line 1547
    .local v5, screenWidth:I
    const/4 v4, 0x0

    .line 1551
    .local v4, screenHeight:I
    :try_start_0
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1800(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1552
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 1553
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 1555
    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/ImageView;->access$1900(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1557
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_7

    .line 1558
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1559
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1561
    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1562
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image Size W "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " H "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    if-nez v7, :cond_4

    cmpl-float v7, v6, v10

    if-lez v7, :cond_4

    .line 1567
    :cond_3
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v7, v5, :cond_9

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    .line 1570
    :cond_4
    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-ltz v7, :cond_5

    iget v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    if-nez v7, :cond_6

    cmpl-float v7, v6, v10

    if-lez v7, :cond_6

    .line 1571
    :cond_5
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v7, v4, :cond_a

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_1
    iput v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    .line 1574
    :cond_6
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Revised W "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " H "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-eqz v2, :cond_8

    .line 1582
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1590
    .end local v0           #display:Landroid/view/Display;
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    :cond_8
    :goto_2
    return-void

    .restart local v0       #display:Landroid/view/Display;
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #screenHeight:I
    .restart local v5       #screenWidth:I
    :cond_9
    move v7, v5

    .line 1567
    goto :goto_0

    :cond_a
    move v7, v4

    .line 1571
    goto :goto_1

    .line 1576
    .end local v0           #display:Landroid/view/Display;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 1577
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "ImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Specify dimensions for ImageView"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1580
    if-eqz v2, :cond_8

    .line 1582
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1583
    :catch_1
    move-exception v1

    .line 1584
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1580
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_b

    .line 1582
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1580
    :cond_b
    :goto_4
    throw v7

    .line 1583
    :catch_2
    move-exception v1

    .line 1584
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1583
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #display:Landroid/view/Display;
    :catch_3
    move-exception v1

    .line 1584
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Unable to close stream. FATAL error"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public run()V
    .locals 10

    .prologue
    .line 1593
    const/4 v1, 0x0

    .line 1595
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/ImageView;->access$2000(Landroid/widget/ImageView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1596
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1598
    .local v2, length:I
    if-lez v2, :cond_2

    .line 1601
    new-array v4, v2, [B

    iput-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mGifImageBytes:[B

    .line 1602
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mGifImageBytes:[B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 1612
    new-instance v4, Landroid/widget/ImageDecoder;

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mGifImageBytes:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageDecoder;-><init>([BZ)V

    iput-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1614
    iget v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mWidth:I

    iget v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 1615
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v5, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageDecoder;->setOutputBitmap(Landroid/graphics/Bitmap;)V

    .line 1616
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v4}, Landroid/widget/ImageDecoder;->decode()V

    .line 1618
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v4}, Landroid/widget/ImageDecoder;->getNumberOfFrames()I

    move-result v3

    .line 1619
    .local v3, numFrames:I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 1622
    const-string v4, "ImageView"

    const-string v5, "Recycling an unwanted bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1626
    :cond_0
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/ImageView$LoadImageDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1634
    if-eqz v1, :cond_1

    .line 1636
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1642
    .end local v2           #length:I
    .end local v3           #numFrames:I
    :cond_1
    :goto_0
    return-void

    .line 1607
    .restart local v2       #length:I
    :cond_2
    :try_start_2
    const-string v4, "ImageView"

    const-string v5, "No content in Uri"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1609
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1634
    if-eqz v1, :cond_1

    .line 1636
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ImageView unable to close stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .end local v2           #length:I
    :goto_1
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1627
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1629
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "ImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in ImageView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1632
    iget-object v4, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v6, p0, Landroid/widget/ImageView$LoadImageDecoder;->this$0:Landroid/widget/ImageView;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/ImageView$LoadImageDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    iget-object v9, p0, Landroid/widget/ImageView$LoadImageDecoder;->encodedImageUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1634
    if-eqz v1, :cond_1

    .line 1636
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1637
    :catch_2
    move-exception v0

    .line 1638
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ImageView unable to close stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1634
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 1636
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1634
    :cond_3
    :goto_2
    throw v4

    .line 1637
    :catch_3
    move-exception v0

    .line 1638
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "ImageView unable to close stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1637
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #length:I
    .restart local v3       #numFrames:I
    :catch_4
    move-exception v0

    .line 1638
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "ImageView unable to close stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
