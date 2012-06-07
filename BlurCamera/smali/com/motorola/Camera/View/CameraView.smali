.class public Lcom/motorola/Camera/View/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotoCameraSurfaceView"


# instance fields
.field private mAspectRatio:F

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 97
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 98
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    .local v1, heightSpecSize:I
    move v5, v6

    .line 107
    .local v5, surfaceWidth:I
    move v4, v1

    .line 108
    .local v4, surfaceHeight:I
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v0, v7, v8

    .line 109
    .local v0, displayAR:F
    iget v7, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewHeight:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 110
    .local v2, previewAR:F
    cmpg-float v7, v0, v2

    if-gez v7, :cond_0

    .line 111
    move v5, v6

    .line 112
    int-to-float v7, v6

    iget v8, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewWidth:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 113
    .local v3, scale:F
    iget v7, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 120
    :goto_0
    const-string v7, "MotoCameraSurfaceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The new surface dimensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/View/CameraView;->setMeasuredDimension(II)V

    .line 126
    return-void

    .line 116
    .end local v3           #scale:F
    :cond_0
    move v4, v1

    .line 117
    int-to-float v7, v1

    iget v8, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewHeight:I

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 118
    .restart local v3       #scale:F
    iget v7, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 3
    .parameter "aspectRatio"

    .prologue
    .line 78
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "MotoCameraSurfaceView"

    const-string v1, "setAspectRatio() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/View/CameraView;->mAspectRatio:F

    invoke-static {v0, p1}, Lcom/motorola/Camera/CameraGlobalTools;->compareFloat(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "MotoCameraSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio() - setting aspect ratio to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    iput p1, p0, Lcom/motorola/Camera/View/CameraView;->mAspectRatio:F

    .line 86
    :cond_2
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 71
    iput p1, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewWidth:I

    .line 72
    iput p2, p0, Lcom/motorola/Camera/View/CameraView;->mPreviewHeight:I

    .line 73
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(F)V

    .line 74
    return-void
.end method
