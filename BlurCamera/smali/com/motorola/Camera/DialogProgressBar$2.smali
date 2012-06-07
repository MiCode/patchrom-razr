.class Lcom/motorola/Camera/DialogProgressBar$2;
.super Ljava/lang/Object;
.source "DialogProgressBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogProgressBar;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/motorola/Camera/DialogProgressBar$2;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$2;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mValue:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 158
    return-void
.end method
