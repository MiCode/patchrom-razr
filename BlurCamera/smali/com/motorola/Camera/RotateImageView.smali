.class public Lcom/motorola/Camera/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    .line 38
    iput v0, p0, Lcom/motorola/Camera/RotateImageView;->mStartDegree:I

    .line 39
    iput v0, p0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    .line 41
    iput-boolean v0, p0, Lcom/motorola/Camera/RotateImageView;->mClockwise:Z

    .line 43
    iput-wide v1, p0, Lcom/motorola/Camera/RotateImageView;->mAnimationStartTime:J

    .line 44
    iput-wide v1, p0, Lcom/motorola/Camera/RotateImageView;->mAnimationEndTime:J

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 77
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 80
    .local v4, bounds:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v16, v18, v19

    .line 81
    .local v16, w:I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 83
    .local v8, h:I
    if-eqz v16, :cond_0

    if-eqz v8, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 86
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    .line 87
    .local v13, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v13, v18

    if-gez v18, :cond_5

    .line 88
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 89
    .local v6, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/RotateImageView;->mStartDegree:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/RotateImageView;->mClockwise:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .end local v6           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v6, 0xb4

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 91
    .local v5, degree:I
    if-ltz v5, :cond_4

    rem-int/lit16 v5, v5, 0x168

    .line 92
    :goto_2
    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->invalidate()V

    .line 99
    .end local v5           #degree:I
    .end local v13           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 100
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getPaddingTop()I

    move-result v15

    .line 101
    .local v15, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getPaddingRight()I

    move-result v11

    .line 102
    .local v11, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getPaddingBottom()I

    move-result v3

    .line 103
    .local v3, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getWidth()I

    move-result v18

    sub-int v18, v18, v10

    sub-int v17, v18, v11

    .line 104
    .local v17, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/RotateImageView;->getHeight()I

    move-result v18

    sub-int v18, v18, v15

    sub-int v9, v18, v3

    .line 106
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v12

    .line 107
    .local v12, saveCount:I
    div-int/lit8 v18, v17, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 109
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    neg-int v0, v8

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 89
    .end local v3           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v12           #saveCount:I
    .end local v15           #top:I
    .end local v17           #width:I
    .restart local v6       #deltaTime:I
    .restart local v13       #time:J
    :cond_3
    neg-int v6, v6

    goto/16 :goto_1

    .line 91
    .end local v6           #deltaTime:I
    .restart local v5       #degree:I
    :cond_4
    rem-int/lit16 v0, v5, 0x168

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_2

    .line 95
    .end local v5           #degree:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 52
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 53
    :goto_0
    iget v1, p0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 71
    :goto_1
    return-void

    .line 52
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 55
    :cond_1
    iput p1, p0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    .line 56
    iget v1, p0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/motorola/Camera/RotateImageView;->mStartDegree:I

    .line 57
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/Camera/RotateImageView;->mAnimationStartTime:J

    .line 59
    iget v1, p0, Lcom/motorola/Camera/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/motorola/Camera/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 60
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 64
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 66
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/Camera/RotateImageView;->mClockwise:Z

    .line 67
    iget-wide v1, p0, Lcom/motorola/Camera/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xb4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/motorola/Camera/RotateImageView;->mAnimationEndTime:J

    .line 70
    invoke-virtual {p0}, Lcom/motorola/Camera/RotateImageView;->invalidate()V

    goto :goto_1

    .line 60
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 66
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method
