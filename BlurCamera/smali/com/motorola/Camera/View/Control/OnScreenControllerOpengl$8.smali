.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;
.super Ljava/lang/Object;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V
    .locals 0
    .parameter

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 9
    .parameter "animation"

    .prologue
    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    .line 2261
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$500(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    div-int/lit8 v7, v3, 0x2

    .line 2262
    .local v7, centerX:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$500(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    div-int/lit8 v8, v3, 0x2

    .line 2263
    .local v8, centerY:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v7

    int-to-float v6, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2264
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    .line 2265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartTime(J)V

    .line 2266
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2267
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$500(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2268
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;
    invoke-static {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 2269
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2275
    return-void
.end method
