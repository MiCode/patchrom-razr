.class Lcom/android/server/wm/WindowManagerService$TransformSurface;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformSurface"
.end annotation


# instance fields
.field private mShown:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 9
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 10496
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10494
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    .line 10497
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 10501
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, -0x1

    const/high16 v7, 0x4

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10508
    :cond_0
    :goto_0
    return-void

    .line 10504
    :catch_0
    move-exception v8

    .line 10505
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Transform surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService$TransformSurface;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10492
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    return v0
.end method


# virtual methods
.method destroy()V
    .locals 3

    .prologue
    .line 10538
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    if-nez v1, :cond_0

    .line 10539
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 10542
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10547
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    .line 10550
    :cond_0
    return-void

    .line 10544
    :catch_0
    move-exception v0

    .line 10545
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "Exception destroying Transform surface"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hide()V
    .locals 3

    .prologue
    .line 10525
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    if-eqz v1, :cond_0

    .line 10528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10533
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    .line 10535
    :cond_0
    return-void

    .line 10530
    :catch_0
    move-exception v0

    .line 10531
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "WindowManager"

    const-string v2, "Illegal argument exception hiding Transform surface"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method show(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 10513
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mShown:Z

    .line 10515
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setPosition(FF)V

    .line 10516
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setSize(II)V

    .line 10517
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10522
    :goto_0
    return-void

    .line 10519
    :catch_0
    move-exception v0

    .line 10520
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing Transform surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method update(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .parameter "w"

    .prologue
    const/4 v3, 0x0

    .line 10553
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setLayer(I)V

    .line 10554
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$TransformSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 10556
    return-void
.end method
