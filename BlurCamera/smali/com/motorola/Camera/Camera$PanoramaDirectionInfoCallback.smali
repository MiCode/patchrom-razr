.class final Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$CameraDirectionInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaDirectionInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5185
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5185
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onDirectionInfo(ILcom/motorola/android/camera/Panorama;)V
    .locals 1
    .parameter "direction"
    .parameter "panorama"

    .prologue
    .line 5191
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->updateDirection(I)V

    .line 5192
    return-void
.end method
