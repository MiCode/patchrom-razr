.class public Lcom/motorola/server/DisplayPointer;
.super Ljava/lang/Object;
.source "DisplayPointer.java"


# static fields
.field private static final DISPLAY_POINTER_DELAY:I = 0x1388

.field private static final POINTER_HEIGHT:I = 0x28

.field private static final POINTER_STROKE:I = 0x4

.field private static final POINTER_WIDTH:I = 0x18

.field static final TAG:Ljava/lang/String; = "DisplayPointer"


# instance fields
.field private final mDismissDisplayPointerRunner:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private final mDisplayPointerControlHandler:Landroid/os/Handler;

.field private mDisplayWidth:I

.field private mPointerDisplayed:Z

.field public mPointerSurface:Landroid/view/Surface;

.field private mPtrDispX:I

.field private mPtrDispY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/motorola/server/DisplayPointer$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/DisplayPointer$1;-><init>(Lcom/motorola/server/DisplayPointer;)V

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 111
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 112
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    .line 115
    :cond_0
    monitor-exit p0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/view/SurfaceSession;II)Z
    .locals 15
    .parameter "surfaceSession"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    .line 45
    const/4 v13, 0x1

    .line 46
    .local v13, result:Z
    iget v1, p0, Lcom/motorola/server/DisplayPointer;->mDisplayHeight:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/motorola/server/DisplayPointer;->mDisplayWidth:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 47
    iget v14, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    .line 48
    .local v14, x:I
    iget v1, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    iput v1, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    .line 49
    iput v14, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    .line 52
    .end local v14           #x:I
    :cond_0
    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 53
    add-int/lit8 v1, p2, -0x18

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    .line 54
    add-int/lit8 v1, p3, -0x28

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    .line 56
    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x18

    const/16 v6, 0x28

    const/4 v7, -0x2

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    iput-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    .line 62
    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 63
    .local v9, c:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .local v12, pnt:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    const/high16 v1, 0x4080

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    const/4 v1, -0x1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 69
    .local v11, p:Landroid/graphics/Path;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    const/high16 v1, 0x41c0

    const/high16 v2, 0x41c0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    const/high16 v1, 0x4160

    const/high16 v2, 0x41c0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    const/high16 v1, 0x41b0

    const/high16 v2, 0x4220

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    const/high16 v1, 0x4180

    const/high16 v2, 0x4220

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    const/high16 v1, 0x4100

    const/high16 v2, 0x41d0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    const/4 v1, 0x0

    const/high16 v2, 0x4208

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 78
    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    const/high16 v1, -0x100

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 80
    invoke-virtual {v9, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v1, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 84
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 85
    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    const/16 v2, 0x18

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setSize(II)V

    .line 86
    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 94
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v11           #p:Landroid/graphics/Path;
    .end local v12           #pnt:Landroid/graphics/Paint;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_1
    return v13

    .line 87
    :catch_0
    move-exception v10

    .line 88
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DisplayPointer"

    const-string v2, "Exception creating pointer surface"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    const/4 v13, 0x0

    .line 92
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .line 94
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 92
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDismissDisplayPointer()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method

.method public showABS(Landroid/view/MotionEvent;I)Z
    .locals 6
    .parameter "event"
    .parameter "layer"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 120
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 121
    .local v3, y:I
    const/4 v1, 0x1

    .line 123
    .local v1, result:Z
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    if-eq v3, v4, :cond_2

    .line 125
    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 128
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4, p2}, Landroid/view/Surface;->setLayer(I)V

    .line 129
    iget-boolean v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    if-nez v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->show()V

    .line 131
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    .line 133
    :cond_1
    iput v2, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    .line 134
    iput v3, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    .line 135
    invoke-virtual {p0}, Lcom/motorola/server/DisplayPointer;->scheduleDismissDisplayPointer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 143
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v4, "DisplayPointer"

    const-string v5, "Failure showing mouse surface"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 140
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
