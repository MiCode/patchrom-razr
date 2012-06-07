.class Lcom/motorola/Camera/Camera$JpegPictureCallback$1;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camera$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camera$JpegPictureCallback;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera$JpegPictureCallback;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5603
    iput-object p1, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$JpegPictureCallback;

    iput-object p2, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5605
    iget-object v0, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$JpegPictureCallback;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->val$jpegData:[B

    #calls: Lcom/motorola/Camera/Camera;->createThumbnailForJpegCallback([B)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12200(Lcom/motorola/Camera/Camera;[B)V

    .line 5607
    iget-object v0, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$JpegPictureCallback;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;->this$1:Lcom/motorola/Camera/Camera$JpegPictureCallback;

    iget-object v1, v1, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, v1, Lcom/motorola/Camera/Camera;->mUpdatePicInSvcMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5608
    return-void
.end method
