.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;
.super Ljava/lang/Object;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAnimationHandler"
.end annotation


# instance fields
.field mPostViewVisibility:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "postVisibility"

    .prologue
    .line 4075
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4076
    iput-object p2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->mView:Landroid/view/View;

    .line 4077
    iput p3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->mPostViewVisibility:I

    .line 4078
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 4082
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4083
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->mView:Landroid/view/View;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;->mPostViewVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4084
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 4086
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 4087
    return-void
.end method
