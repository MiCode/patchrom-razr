.class Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
.super Ljava/lang/Object;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPanel"
.end annotation


# instance fields
.field private mShown:Z

.field private mWParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowView:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    .line 308
    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 312
    invoke-static {p2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const v2, -0x7fffffe8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7e7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->transX:I

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->transY:I

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 332
    .local v0, transparent:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v6, v6}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    .line 338
    return-void
.end method


# virtual methods
.method public getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    .line 352
    :cond_0
    return-void
.end method

.method public moveBy(FF)V
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 370
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    .line 380
    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "wparams"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    .line 360
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 365
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 375
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    .line 345
    :cond_0
    return-void
.end method

.method public translate(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->transX:I

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->transY:I

    .line 385
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mShown:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWindowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->mWParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    :cond_0
    return-void
.end method
