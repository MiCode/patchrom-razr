.class Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
.super Landroid/view/View;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifyingGlass"
.end annotation


# instance fields
.field private mInScrollMode:Z

.field private mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mX:F

.field private mY:F

.field private oldLeft:I

.field private oldTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 403
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1100()I

    move-result v0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1300()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;II)V

    .line 404
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;II)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v9, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    .line 407
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 631
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->oldLeft:I

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->oldTop:I

    .line 410
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v0

    sub-int/2addr v0, p3

    div-int/lit8 v2, v0, 0x2

    .line 411
    .local v2, left:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v0

    sub-int/2addr v0, p4

    div-int/lit8 v3, v0, 0x2

    .line 414
    .local v3, top:I
    new-instance v7, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;

    invoke-direct {v7, p0, p2, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$1;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneZoom;)V

    .line 422
    .local v7, mglassView:Landroid/view/View;
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 423
    new-instance v0, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-direct {v0, p1, p2, v7}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 425
    .local v8, wparams:Landroid/view/WindowManager$LayoutParams;
    const v0, -0x7ffffde8

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 429
    const/16 v0, 0x7d6

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 430
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 431
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 432
    iput p3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 433
    iput p4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 434
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    .line 435
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    .line 436
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->transX:I

    .line 437
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->transY:I

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 441
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, v9

    .line 444
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->adjustParams(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->drawMagnifyingGlass(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->decreaseZoom()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->increaseZoom()V

    return-void
.end method

.method private adjustParams(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 681
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v3

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 682
    .local v0, left:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v3

    sub-int/2addr v3, p2

    div-int/lit8 v1, v3, 0x2

    .line 684
    .local v1, top:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 685
    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 686
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 687
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 689
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 690
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 691
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 692
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 694
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 695
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 696
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 697
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 698
    return-void
.end method

.method private createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
    .locals 10
    .parameter "context"
    .parameter "left"
    .parameter "top"
    .parameter "w"
    .parameter "h"
    .parameter "isTopHandle"

    .prologue
    .line 449
    new-instance v4, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$2;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;Landroid/content/Context;)V

    .line 461
    .local v4, mglassHandleView:Landroid/widget/LinearLayout;
    if-nez v4, :cond_0

    .line 462
    const-string v6, "PhoneZoom"

    const-string v7, "mglassHandleView is null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v3, 0x0

    .line 537
    :goto_0
    return-object v3

    .line 467
    :cond_0
    const v6, 0x1080550

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 468
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 469
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 470
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 471
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 475
    .local v2, button_width:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 478
    .local v1, button_height:I
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, b:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 480
    new-instance v6, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$3;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    const v6, 0x10801fb

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    invoke-virtual {v4, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 501
    :cond_1
    new-instance v0, Landroid/widget/Button;

    .end local v0           #b:Landroid/widget/Button;
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 502
    .restart local v0       #b:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 503
    new-instance v6, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;-><init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    const v6, 0x1080204

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 521
    invoke-virtual {v4, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 524
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {v3, v6, p1, v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;Landroid/view/View;)V

    .line 525
    .local v3, mMGlassHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 526
    .local v5, wparams:Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x208

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 528
    const/16 v6, 0x7e7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 529
    div-int/lit8 v6, p4, 0x2

    add-int/2addr v6, p2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 530
    if-eqz p6, :cond_3

    .line 531
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v6

    sub-int v6, p3, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 534
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1900()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 535
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 536
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    .line 533
    :cond_3
    add-int v6, p3, p5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private decreaseZoom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 623
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 624
    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    const/high16 v3, 0x3f00

    sub-float v1, v2, v3

    .line 625
    .local v1, scale:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/high16 v1, 0x3f80

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    .line 627
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    .line 629
    return-void
.end method

.method private drawMagnifyingGlass(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x40a0

    const/4 v2, 0x0

    const/16 v3, 0xc0

    .line 634
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 635
    .local v1, rect:Landroid/graphics/RectF;
    iput v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 638
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 639
    .local v0, p:Landroid/graphics/Paint;
    const/16 v2, 0xff

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 640
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 641
    const/high16 v2, 0x4020

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 643
    invoke-virtual {p1, v1, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 645
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 649
    .local v0, action:I
    if-nez v0, :cond_1

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    .line 652
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    .line 675
    :cond_0
    :goto_0
    return v8

    .line 653
    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 655
    .local v4, tx:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 656
    .local v5, ty:F
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 657
    .local v1, deltaX:I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    sub-float v6, v5, v6

    float-to-int v2, v6

    .line 658
    .local v2, deltaY:I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    if-nez v6, :cond_3

    .line 659
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 660
    .local v3, touchSlop:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lt v6, v3, :cond_0

    .line 663
    :cond_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    .line 667
    .end local v3           #touchSlop:I
    :cond_3
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mX:F

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mY:F

    .line 668
    int-to-float v6, v1

    int-to-float v7, v2

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    goto :goto_0

    .line 670
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v4           #tx:F
    .end local v5           #ty:F
    :cond_4
    if-ne v0, v8, :cond_5

    .line 671
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    goto :goto_0

    .line 672
    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_0

    .line 673
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mInScrollMode:Z

    goto :goto_0
.end method

.method private increaseZoom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 615
    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    const/high16 v3, 0x3f00

    add-float v1, v2, v3

    .line 616
    .local v1, scale:F
    const/high16 v2, 0x4080

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v1, 0x4080

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    .line 618
    invoke-direct {p0, v4, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->update()V

    .line 620
    return-void
.end method

.method private moveBy(FF)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v10, 0x3f00

    .line 580
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 581
    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    div-float v2, v7, v9

    .line 582
    .local v2, halfW:F
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v7, v7

    div-float v1, v7, v9

    .line 587
    .local v1, halfH:F
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    add-float/2addr v7, v10

    float-to-int v5, v7

    .line 588
    .local v5, x:I
    :goto_0
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    add-float/2addr v7, v10

    float-to-int v6, v7

    .line 593
    .local v6, y:I
    :goto_1
    int-to-float v7, v5

    neg-float v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 594
    neg-float v7, v2

    float-to-int v5, v7

    .line 597
    :cond_0
    :goto_2
    int-to-float v7, v6

    neg-float v8, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 598
    neg-float v7, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 602
    :cond_1
    :goto_3
    int-to-float v7, v5

    add-float/2addr v7, v2

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->scaleX:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v2

    add-float/2addr v7, v10

    float-to-int v3, v7

    .line 603
    .local v3, tx:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v1

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->scaleY:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v1

    add-float/2addr v7, v10

    float-to-int v4, v7

    .line 604
    .local v4, ty:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->translate(II)V

    .line 606
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v7, v5, v7

    int-to-float p1, v7

    .line 607
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v7, v6, v7

    int-to-float p2, v7

    .line 608
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    .line 609
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    .line 610
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v7, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->moveBy(FF)V

    .line 611
    return-void

    .line 587
    .end local v3           #tx:I
    .end local v4           #ty:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    sub-float/2addr v7, v10

    float-to-int v5, v7

    goto :goto_0

    .line 588
    .restart local v5       #x:I
    :cond_3
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    sub-float/2addr v7, v10

    float-to-int v6, v7

    goto :goto_1

    .line 595
    .restart local v6       #y:I
    :cond_4
    int-to-float v7, v5

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 596
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$700()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v2

    float-to-int v5, v7

    goto :goto_2

    .line 599
    :cond_5
    int-to-float v7, v6

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 600
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$900()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2300()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    goto :goto_3
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->hide()V

    .line 550
    return-void
.end method

.method public setSize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 563
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setSize(II)V

    .line 564
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 567
    .local v0, glassParams:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 568
    .local v1, handleParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 569
    .local v2, x:I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2600()I

    move-result v5

    sub-int v3, v4, v5

    .line 570
    .local v3, y:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setPosition(II)V

    .line 573
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 574
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 575
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int v3, v4, v5

    .line 576
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->setPosition(II)V

    .line 577
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0, p1, p1}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->scale(FF)V

    .line 560
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->show()V

    .line 544
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlass:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassTopHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->mMGlassBottomHandle:Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;->update()V

    .line 556
    return-void
.end method
