.class Landroid/widget/ImageView$GifFrameAvailable;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Landroid/widget/ImageView$OnDecoderLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifFrameAvailable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1485
    invoke-direct {p0, p1}, Landroid/widget/ImageView$GifFrameAvailable;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/widget/ImageDecoder;Landroid/net/Uri;)V
    .locals 6
    .parameter "decoder"
    .parameter "encodedImage"

    .prologue
    .line 1487
    const-string v1, "ImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIF frame received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;
    invoke-static {v3}, Landroid/widget/ImageView;->access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-virtual {p1}, Landroid/widget/ImageDecoder;->getOutputBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1490
    .local v0, outBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;
    invoke-static {v1}, Landroid/widget/ImageView;->access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1491
    iget-object v1, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1492
    iget-object v1, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mPaddingLeft:I
    invoke-static {v2}, Landroid/widget/ImageView;->access$1000(Landroid/widget/ImageView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/ImageView;->access$1100(Landroid/widget/ImageView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/ImageView;->access$1200(Landroid/widget/ImageView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/ImageView$GifFrameAvailable;->this$0:Landroid/widget/ImageView;

    #getter for: Landroid/widget/ImageView;->mPaddingBottom:I
    invoke-static {v5}, Landroid/widget/ImageView;->access$1300(Landroid/widget/ImageView;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1493
    const/4 v0, 0x0

    .line 1498
    :goto_0
    return-void

    .line 1496
    :cond_0
    const-string v1, "ImageView"

    const-string v2, "Bitmap is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
