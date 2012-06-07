.class final Lcom/motorola/Camera/Camera$storageRunnable;
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
    name = "storageRunnable"
.end annotation


# instance fields
.field copy:[B

.field mFileName:Ljava/lang/String;

.field final mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "data"
    .parameter "camera"
    .parameter "loc"
    .parameter "FileName"

    .prologue
    .line 4942
    iput-object p1, p0, Lcom/motorola/Camera/Camera$storageRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4943
    iput-object p5, p0, Lcom/motorola/Camera/Camera$storageRunnable;->mFileName:Ljava/lang/String;

    .line 4944
    iput-object p4, p0, Lcom/motorola/Camera/Camera$storageRunnable;->mLocation:Landroid/location/Location;

    .line 4945
    iput-object p2, p0, Lcom/motorola/Camera/Camera$storageRunnable;->copy:[B

    .line 4946
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4950
    iget-object v0, p0, Lcom/motorola/Camera/Camera$storageRunnable;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$storageRunnable;->copy:[B

    iget-object v2, p0, Lcom/motorola/Camera/Camera$storageRunnable;->mLocation:Landroid/location/Location;

    #calls: Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)Ljava/lang/Integer;
    invoke-static {v0, v1, v2}, Lcom/motorola/Camera/Camera$ImageCapture;->access$10500(Lcom/motorola/Camera/Camera$ImageCapture;[BLandroid/location/Location;)Ljava/lang/Integer;

    .line 4951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$storageRunnable;->copy:[B

    .line 4952
    return-void
.end method
