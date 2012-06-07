.class final Lcom/motorola/Camera/Camera$storeImageRunnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "storeImageRunnable"
.end annotation


# instance fields
.field b:[B

.field final cam:Landroid/hardware/Camera;

.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "cam"
    .parameter "loc"

    .prologue
    .line 4385
    iput-object p1, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4386
    iput-object p2, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->b:[B

    .line 4387
    iput-object p3, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->cam:Landroid/hardware/Camera;

    .line 4388
    iput-object p4, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->mLocation:Landroid/location/Location;

    .line 4389
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4393
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "storeImageRunnable() - storing image on thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->b:[B

    iget-object v2, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->cam:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera$storeImageRunnable;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 4395
    return-void
.end method
