.class public Lcom/motorola/Camera/View/CameraContentView;
.super Landroid/widget/RelativeLayout;
.source "CameraContentView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MotoCameraContentView"


# instance fields
.field private mCameraView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

.field private mFocusView:Landroid/view/View;

.field private mLastFocusRegion:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 40
    iput-object p1, p0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 45
    iput-object p1, p0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 50
    iput-object p1, p0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 55
    const v1, 0x7f0d0040

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mCameraView:Landroid/view/View;

    .line 56
    const v1, 0x7f0d0045

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    .line 58
    const v1, 0x7f0d0044

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/View/FocusView;

    iput-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 60
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    .line 62
    .local v0, mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAutoFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 76
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mCameraView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 83
    .local v5, cv_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mCameraView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 84
    .local v4, cv_height:I
    sub-int v19, p4, p2

    .line 85
    .local v19, width:I
    sub-int v9, p5, p3

    .line 86
    .local v9, height:I
    const/4 v13, 0x0

    .line 87
    .local v13, offsetW:I
    const/4 v12, 0x0

    .line 88
    .local v12, offsetH:I
    const/4 v15, 0x0

    .line 89
    .local v15, resolved_width:I
    const/4 v14, 0x0

    .line 91
    .local v14, resolved_height:I
    const-string v20, "MotoCameraContentView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OnLayout width = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", height = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cv_width = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cv_height = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move/from16 v0, v19

    if-le v0, v9, :cond_0

    move/from16 v0, v19

    if-ge v5, v0, :cond_0

    if-le v5, v9, :cond_0

    .line 95
    sub-int v20, v19, v5

    div-int/lit8 v13, v20, 0x2

    .line 97
    if-gez v13, :cond_0

    .line 98
    const/4 v13, 0x0

    .line 101
    :cond_0
    move/from16 v0, v19

    if-le v9, v0, :cond_1

    if-ge v4, v9, :cond_1

    .line 103
    sub-int v20, v9, v4

    div-int/lit8 v12, v20, 0x2

    .line 104
    if-gez v12, :cond_1

    .line 105
    const/4 v12, 0x0

    .line 108
    :cond_1
    move/from16 v0, v19

    if-le v0, v9, :cond_4

    .line 110
    move v14, v9

    .line 111
    move/from16 v0, v19

    if-ge v5, v0, :cond_3

    .line 112
    move v15, v5

    .line 126
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v20

    if-nez v20, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 130
    .local v8, focus_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 132
    .local v7, focus_height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v20, v0

    sub-int v21, v15, v8

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v13

    sub-int v22, v14, v7

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v12

    add-int v23, v15, v8

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v13

    add-int v24, v14, v7

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v12

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->layout(IIII)V

    .line 167
    .end local v7           #focus_height:I
    .end local v8           #focus_width:I
    :cond_2
    :goto_1
    return-void

    .line 114
    :cond_3
    move/from16 v15, v19

    goto :goto_0

    .line 118
    :cond_4
    move/from16 v15, v19

    .line 119
    if-ge v4, v9, :cond_5

    .line 120
    move v14, v4

    goto :goto_0

    .line 122
    :cond_5
    move v14, v9

    goto :goto_0

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 139
    const/high16 v11, 0x3e80

    .line 140
    .local v11, offset:F
    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v10, v20, v11

    .line 141
    .local v10, left:F
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v18, v20, v11

    .line 142
    .local v18, top:F
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v20, v20, v10

    int-to-float v0, v14

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v6, v10, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .local v6, focusRegion:Landroid/graphics/RectF;
    const-string v20, "MotoCameraContentView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onLayout(): focusRegion in Video Mode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v6           #focusRegion:Landroid/graphics/RectF;
    .end local v10           #left:F
    .end local v11           #offset:F
    .end local v18           #top:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 147
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    add-int v22, v13, v15

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v12, v14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 148
    .restart local v6       #focusRegion:Landroid/graphics/RectF;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v16, tempRegion1:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v17, tempRegion2:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/motorola/Camera/View/FocusView;->setFocusRegion(Landroid/graphics/RectF;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/CameraContentView;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/Camera/View/FocusView;->resetFocusArea()V

    .line 161
    :cond_8
    sget-boolean v20, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v20, :cond_9

    .line 162
    const-string v20, "MotoCameraContentView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CameraContentView, onLayout: left = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " top = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "right = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int v22, v13, v15

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bottom = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int v22, v12, v14

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_9
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/motorola/Camera/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    goto/16 :goto_1
.end method
