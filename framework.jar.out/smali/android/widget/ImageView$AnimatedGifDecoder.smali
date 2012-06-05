.class Landroid/widget/ImageView$AnimatedGifDecoder;
.super Ljava/lang/Thread;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedGifDecoder"
.end annotation


# instance fields
.field private mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1645
    iput-object p1, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1646
    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1647
    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    .line 1648
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1645
    invoke-direct {p0, p1}, Landroid/widget/ImageView$AnimatedGifDecoder;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    .line 1657
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    .line 1658
    return-void
.end method

.method public init(Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;)V
    .locals 0
    .parameter "decoder"
    .parameter "callback"

    .prologue
    .line 1651
    iput-object p1, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1652
    iput-object p2, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    .line 1653
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1661
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v8}, Landroid/widget/ImageDecoder;->getNumberOfFrames()I

    move-result v6

    .line 1662
    .local v6, numFrames:I
    const/4 v1, 0x0

    .line 1664
    .local v1, currentFrame:I
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v8}, Landroid/widget/ImageDecoder;->getOutputBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1665
    .local v5, mBitmap:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 1667
    const-string v8, "ImageView"

    const-string v9, "Bitmap null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    :goto_1
    iget-boolean v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    if-nez v8, :cond_4

    .line 1672
    const/4 v2, 0x0

    .line 1676
    .local v2, delay:I
    new-instance v8, Landroid/widget/ImageDecoder;

    iget-object v9, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;
    invoke-static {v9}, Landroid/widget/ImageView;->access$2200(Landroid/widget/ImageView;)Landroid/widget/ImageView$LoadImageDecoder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView$LoadImageDecoder;->getGifImageBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/widget/ImageDecoder;-><init>([BZ)V

    iput-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1677
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;
    invoke-static {v8}, Landroid/widget/ImageView;->access$2200(Landroid/widget/ImageView;)Landroid/widget/ImageView$LoadImageDecoder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView$LoadImageDecoder;->getWidth()I

    move-result v7

    .line 1678
    .local v7, width:I
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;
    invoke-static {v8}, Landroid/widget/ImageView;->access$2200(Landroid/widget/ImageView;)Landroid/widget/ImageView$LoadImageDecoder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView$LoadImageDecoder;->getHeight()I

    move-result v4

    .line 1679
    .local v4, height:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1680
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v8, v0}, Landroid/widget/ImageDecoder;->setOutputBitmap(Landroid/graphics/Bitmap;)V

    .line 1683
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v8, v1}, Landroid/widget/ImageDecoder;->setFrameNumber(I)I

    move-result v2

    .line 1685
    if-gtz v2, :cond_2

    .line 1686
    const-string v8, "ImageView"

    const-string v9, "Reset delay"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const/16 v2, 0x64

    .line 1690
    :cond_2
    monitor-enter v5

    .line 1692
    :try_start_0
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    invoke-virtual {v8}, Landroid/widget/ImageDecoder;->decode()V

    .line 1693
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    if-eqz v8, :cond_3

    .line 1697
    iget-object v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/widget/ImageView;->access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView$CallbackRunnable;

    iget-object v10, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->this$0:Landroid/widget/ImageView;

    iget-object v11, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    iget-object v12, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/widget/ImageView$CallbackRunnable;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageDecoder;Landroid/widget/ImageView$OnDecoderLoaded;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1701
    :cond_3
    int-to-long v8, v2

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1708
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 1709
    if-lt v1, v6, :cond_1

    .line 1710
    const/4 v1, 0x0

    goto :goto_1

    .line 1693
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1703
    :catch_0
    move-exception v3

    .line 1704
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v8, "ImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Woken up "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    goto :goto_2

    .line 1714
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #delay:I
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v4           #height:I
    .end local v7           #width:I
    :cond_4
    iget-boolean v8, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mIsCanceled:Z

    if-eqz v8, :cond_0

    .line 1715
    const/4 v5, 0x0

    .line 1716
    iput-object v13, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1717
    iput-object v13, p0, Landroid/widget/ImageView$AnimatedGifDecoder;->mCallback:Landroid/widget/ImageView$OnDecoderLoaded;

    goto/16 :goto_0
.end method
