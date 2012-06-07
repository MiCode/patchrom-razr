.class final Lcom/motorola/Camera/Camcorder$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camcorder;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 851
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p2, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 853
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    .line 857
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "onPictureTaken()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mPreviewing:Z
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camcorder;->access$5102(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 860
    if-nez p1, :cond_1

    .line 873
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableVideoSnapshotButton(Z)V

    .line 864
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 866
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 867
    .local v7, fl:Landroid/widget/FrameLayout;
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 872
    .local v6, storageDirectory:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;->mLocation:Landroid/location/Location;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/Camera/SaveHelper;->saveImage([BJLandroid/location/Location;ILjava/lang/String;)V

    goto :goto_0
.end method
