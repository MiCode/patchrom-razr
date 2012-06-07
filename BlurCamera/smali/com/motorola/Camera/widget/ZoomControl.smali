.class public abstract Lcom/motorola/Camera/widget/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/widget/ZoomControl$OnZoomIndexChangedListener;,
        Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControl"

.field private static final ZOOMING_INTERVAL:I = 0x3e8

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1

.field public static final ZOOM_STOP:I = 0x2


# instance fields
.field protected mDegree:I

.field private mHandler:Landroid/os/Handler;

.field private mIndexListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomIndexChangedListener;

.field private mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

.field protected mOnZoomIndicatorEventListener:Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;

.field protected final mRunnable:Ljava/lang/Runnable;

.field private mSmoothZoomSupported:Z

.field private mState:I

.field private mStep:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/motorola/Camera/widget/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/widget/ZoomControl$1;-><init>(Lcom/motorola/Camera/widget/ZoomControl;)V

    iput-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    .line 64
    const v0, 0x7f0200cb

    invoke-virtual {p0, p1, v0}, Lcom/motorola/Camera/widget/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0200ce

    invoke-virtual {p0, p1, v0}, Lcom/motorola/Camera/widget/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/widget/ZoomControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/widget/ZoomControl;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/widget/ZoomControl;->performZoom(IZ)V

    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 186
    iget-boolean v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 187
    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 188
    .local v0, zoomType:I
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    iget v3, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    if-eqz v2, :cond_2

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 199
    .end local v0           #zoomType:I
    :cond_2
    :goto_1
    return v1

    .line 187
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_4
    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    if-le p1, v2, :cond_5

    iget p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    .line 194
    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 195
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    invoke-interface {v2, p1}, Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 196
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    goto :goto_1
.end method

.method private performZoom(IZ)V
    .locals 4
    .parameter "state"
    .parameter "fromUser"

    .prologue
    .line 151
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    :cond_2
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mState:I

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/Camera/widget/ZoomControl;->zoomIn()Z

    goto :goto_1

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/Camera/widget/ZoomControl;->zoomOut()Z

    goto :goto_1

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/Camera/widget/ZoomControl;->stopZooming()V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopZooming()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;->onZoomStateChanged(I)V

    .line 142
    :cond_0
    return-void
.end method

.method private zoomIn()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mStep:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/widget/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomOut()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mStep:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/widget/ZoomControl;->changeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 75
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    const v1, 0x7f0200d1

    if-ne p2, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/ZoomControl;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/motorola/Camera/widget/ZoomControl;->stopZooming()V

    .line 91
    iget-boolean v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mSmoothZoomSupported:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;->onIndicatorEvent(I)V

    .line 96
    :cond_1
    return-void
.end method

.method protected performZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 174
    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 175
    .local v0, index:I
    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0, v0}, Lcom/motorola/Camera/widget/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method protected performZoom(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 180
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    if-ne v0, p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/Camera/widget/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method protected performZoomToState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/widget/ZoomControl;->performZoom(IZ)V

    .line 148
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 216
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 217
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 218
    return-void
.end method

.method public setDegree(I)V
    .locals 4
    .parameter "degree"

    .prologue
    .line 203
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mDegree:I

    .line 204
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControl;->getChildCount()I

    move-result v0

    .line 205
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/widget/ZoomControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/motorola/Camera/View/RotateImageView;

    if-eqz v3, :cond_0

    .line 208
    check-cast v2, Lcom/motorola/Camera/View/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/motorola/Camera/View/RotateImageView;->setDegree(I)V

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public setOnIndicatorEventListener(Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mOnZoomIndicatorEventListener:Lcom/motorola/Camera/View/OnZoomIndicatorEventListener;

    .line 112
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mListener:Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;

    .line 108
    return-void
.end method

.method public setSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoomSupported"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mSmoothZoomSupported:Z

    .line 124
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    .line 119
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControl;->invalidate()V

    .line 120
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 99
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    .line 103
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControl;->requestLayout()V

    .line 104
    return-void
.end method

.method protected setZoomStep(I)V
    .locals 0
    .parameter "step"

    .prologue
    .line 135
    iput p1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mStep:I

    .line 136
    return-void
.end method

.method public startZoomControl()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIndex:I

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/ZoomControl;->setZoomIndex(I)V

    .line 72
    return-void
.end method
