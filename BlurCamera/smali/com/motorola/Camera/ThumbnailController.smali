.class public Lcom/motorola/Camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/ThumbnailController$1;,
        Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;,
        Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCameraRoll:Lcom/motorola/Camera/CameraRoll;

.field private mLastThumbnailListener:Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;

.field private mThumbnailSize:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/ThumbnailController;->mThumbnailSize:I

    .line 55
    iput-object p1, p0, Lcom/motorola/Camera/ThumbnailController;->mApplication:Landroid/app/Application;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/Camera/ThumbnailController;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/ThumbnailController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/motorola/Camera/ThumbnailController;->mThumbnailSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/Camera/ThumbnailController;)Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraRoll;->destroy()V

    .line 121
    :cond_0
    return-void
.end method

.method public onUpdateData(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraRoll$CameraData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, cameraRollData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraRoll$CameraData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;-><init>(Lcom/motorola/Camera/ThumbnailController;Lcom/motorola/Camera/ThumbnailController$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/ThumbnailController$UpdateLastThumbnail;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraRoll;->reload()V

    .line 111
    :cond_0
    return-void
.end method

.method public setLastThumbnailListener(Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/Camera/ThumbnailController;->mLastThumbnailListener:Lcom/motorola/Camera/ThumbnailController$LastThumbnailListener;

    .line 62
    new-instance v0, Lcom/motorola/Camera/CameraRoll;

    iget-object v1, p0, Lcom/motorola/Camera/ThumbnailController;->mApplication:Landroid/app/Application;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/CameraRoll;-><init>(Landroid/app/Application;I)V

    iput-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    .line 63
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    invoke-virtual {v0, p0}, Lcom/motorola/Camera/CameraRoll;->setUpdateListener(Lcom/motorola/Camera/CameraRoll$CameraRollUpdate;)V

    .line 66
    iget-object v0, p0, Lcom/motorola/Camera/ThumbnailController;->mCameraRoll:Lcom/motorola/Camera/CameraRoll;

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraRoll;->reload()V

    .line 68
    return-void
.end method
