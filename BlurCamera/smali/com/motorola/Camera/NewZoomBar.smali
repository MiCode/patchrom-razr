.class public Lcom/motorola/Camera/NewZoomBar;
.super Landroid/view/View;
.source "NewZoomBar.java"


# instance fields
.field final BAR_FRACTION:D

.field final HANDLE_OFFSET:I

.field final HANDLE_SIZE_OFFSET:I

.field final SIDE_FILL_OFFSET:I

.field TAG:Ljava/lang/String;

.field final USER_TOLERANCE:F

.field final VERT_FILL_OFFSET:I

.field final VIEW_LEFT:F

.field final VIEW_WIDTH:F

.field final ZOOM_BAR_TOP:F

.field final ZOOM_BAR_WIDTH:F

.field private mAvailableBottom:I

.field private mAvailableLength:I

.field private mAvailableTop:I

.field private mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field mContext:Landroid/content/Context;

.field private mController:Lcom/motorola/Camera/View/Control/OnScreenController;

.field private mEmptyZoomBar:Landroid/graphics/Bitmap;

.field private mFinalPosition:F

.field private mInit:Z

.field private mLeftPosition:F

.field private mScale:F

.field private mSliderBottom:F

.field private mSliderLeft:F

.field private mSliderLength:F

.field private mSliderRight:F

.field private mSliderTop:F

.field private mUserTolerance:F

.field private mViewWidth:F

.field private mZoomBarHandle:Landroid/graphics/Bitmap;

.field private mZoomBarLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "NewZoomBar"

    iput-object v0, p0, Lcom/motorola/Camera/NewZoomBar;->TAG:Ljava/lang/String;

    .line 24
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->VIEW_LEFT:F

    .line 25
    const/high16 v0, 0x4296

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->VIEW_WIDTH:F

    .line 26
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->ZOOM_BAR_WIDTH:F

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->VERT_FILL_OFFSET:I

    .line 28
    iput v1, p0, Lcom/motorola/Camera/NewZoomBar;->SIDE_FILL_OFFSET:I

    .line 29
    iput v1, p0, Lcom/motorola/Camera/NewZoomBar;->HANDLE_OFFSET:I

    .line 30
    iput v2, p0, Lcom/motorola/Camera/NewZoomBar;->ZOOM_BAR_TOP:F

    .line 31
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->USER_TOLERANCE:F

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->HANDLE_SIZE_OFFSET:I

    .line 33
    const-wide v0, 0x3fe3333333333333L

    iput-wide v0, p0, Lcom/motorola/Camera/NewZoomBar;->BAR_FRACTION:D

    .line 39
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    .line 41
    iput v2, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    .line 60
    iput-object p1, p0, Lcom/motorola/Camera/NewZoomBar;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v6, 0x4296

    const/high16 v5, 0x4248

    const/high16 v4, 0x4190

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "NewZoomBar"

    iput-object v0, p0, Lcom/motorola/Camera/NewZoomBar;->TAG:Ljava/lang/String;

    .line 24
    iput v3, p0, Lcom/motorola/Camera/NewZoomBar;->VIEW_LEFT:F

    .line 25
    iput v6, p0, Lcom/motorola/Camera/NewZoomBar;->VIEW_WIDTH:F

    .line 26
    iput v4, p0, Lcom/motorola/Camera/NewZoomBar;->ZOOM_BAR_WIDTH:F

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->VERT_FILL_OFFSET:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->SIDE_FILL_OFFSET:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->HANDLE_OFFSET:I

    .line 30
    iput v2, p0, Lcom/motorola/Camera/NewZoomBar;->ZOOM_BAR_TOP:F

    .line 31
    iput v5, p0, Lcom/motorola/Camera/NewZoomBar;->USER_TOLERANCE:F

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->HANDLE_SIZE_OFFSET:I

    .line 33
    const-wide v0, 0x3fe3333333333333L

    iput-wide v0, p0, Lcom/motorola/Camera/NewZoomBar;->BAR_FRACTION:D

    .line 39
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    .line 41
    iput v2, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    .line 66
    iput-object p1, p0, Lcom/motorola/Camera/NewZoomBar;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/motorola/Camera/NewZoomBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/NewZoomBar;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    .line 71
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/motorola/Camera/NewZoomBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    .line 75
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    .line 76
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mLeftPosition:F

    .line 77
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mViewWidth:F

    .line 78
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mUserTolerance:F

    .line 79
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4120

    const/4 v11, 0x0

    const/high16 v10, 0x4170

    const/high16 v9, 0x4000

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v2, myPaint:Landroid/graphics/Paint;
    const/high16 v4, 0x4040

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    const v4, -0xa4321c

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    .line 125
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mEmptyZoomBar:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f9

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mEmptyZoomBar:Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarHandle:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200e4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarHandle:Landroid/graphics/Bitmap;

    .line 135
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    iget v7, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    iget v8, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 136
    .local v0, dstEmpty:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mEmptyZoomBar:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v11, v0, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 137
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    add-float/2addr v4, v9

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    sub-float/2addr v6, v9

    iget v7, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    sub-float/2addr v7, v9

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    .local v1, dstFill:Landroid/graphics/RectF;
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    sub-float/2addr v4, v10

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    sub-float/2addr v5, v10

    sub-float/2addr v5, v12

    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    add-float/2addr v6, v10

    iget v7, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    add-float/2addr v7, v10

    add-float/2addr v7, v12

    add-float/2addr v7, v9

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 146
    .local v3, sliderHandle:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarHandle:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v11, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 148
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSliderLeft:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLeft:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mSliderRight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 84
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mLeftPosition:F

    float-to-int v0, v0

    if-eq p2, v0, :cond_0

    .line 86
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mLeftPosition:F

    float-to-int p2, v0

    .line 87
    int-to-float v0, p2

    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mViewWidth:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 88
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableTop:I

    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableLength:I

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int p3, v0, v1

    .line 89
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    add-int p5, p3, v0

    .line 90
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/motorola/Camera/NewZoomBar;->layout(IIII)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 98
    .local v4, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 100
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 101
    .local v1, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 103
    .local v2, heightSpecSize:I
    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mViewWidth:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 104
    .local v3, width:I
    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    add-int/lit8 v0, v6, 0x1

    .line 105
    .local v0, height:I
    iget v6, p0, Lcom/motorola/Camera/NewZoomBar;->mViewWidth:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    if-eq v5, v6, :cond_0

    .line 107
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/motorola/Camera/NewZoomBar;->measure(II)V

    .line 111
    :cond_0
    invoke-virtual {p0, v3, v0}, Lcom/motorola/Camera/NewZoomBar;->setMeasuredDimension(II)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4170

    .line 159
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ontouch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/Camera/NewZoomBar;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/NewZoomBar;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    :cond_1
    :goto_0
    return v8

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->getRecordStopInProgress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 189
    .local v3, tempY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 191
    .local v2, tempX:F
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderRight:F

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mUserTolerance:F

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 193
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 195
    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-eqz v4, :cond_3

    .line 197
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    sub-float/2addr v4, v3

    sub-float/2addr v4, v7

    sget v5, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLength:F

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 199
    .local v1, progress:I
    iget-object v4, p0, Lcom/motorola/Camera/NewZoomBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v4, v1, v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyZoomProgress(II)V

    .line 201
    .end local v1           #progress:I
    :cond_3
    iput v3, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    .line 202
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    sub-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 204
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    sub-float/2addr v4, v7

    iput v4, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    .line 207
    :cond_4
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    iget v5, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    add-float/2addr v5, v7

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    .line 209
    iget v4, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    add-float/2addr v4, v7

    iput v4, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    .line 212
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/NewZoomBar;->invalidate()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCallbackInterface(Lcom/motorola/Camera/DialogCallbackInterface;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/motorola/Camera/NewZoomBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 224
    return-void
.end method

.method public setController(Lcom/motorola/Camera/View/Control/OnScreenController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/motorola/Camera/NewZoomBar;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 229
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "zoom"

    .prologue
    const/high16 v3, 0x4170

    .line 248
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLength:F

    sget v2, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 251
    .local v0, zoomStep:F
    if-nez p1, :cond_1

    .line 253
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderBottom:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 254
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/NewZoomBar;->invalidate()V

    .line 267
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 258
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 259
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    goto :goto_0

    .line 261
    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 264
    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLength:F

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    goto :goto_0
.end method

.method public setVerticalLimits(II)V
    .locals 4
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 233
    iput p1, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableTop:I

    .line 234
    iput p2, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableBottom:I

    .line 236
    sub-int v0, p2, p1

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableLength:I

    .line 237
    const-wide v0, 0x3fe3333333333333L

    iget v2, p0, Lcom/motorola/Camera/NewZoomBar;->mAvailableLength:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    .line 238
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mZoomBarLength:I

    add-int/lit8 v0, v0, -0x1e

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLength:F

    .line 239
    iget-boolean v0, p0, Lcom/motorola/Camera/NewZoomBar;->mInit:Z

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderTop:F

    iget v1, p0, Lcom/motorola/Camera/NewZoomBar;->mSliderLength:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4170

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/NewZoomBar;->mFinalPosition:F

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/NewZoomBar;->mInit:Z

    .line 244
    :cond_0
    return-void
.end method
