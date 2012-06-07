.class Lcom/motorola/Camera/widget/ZoomControlBar$1;
.super Ljava/lang/Object;
.source "ZoomControlBar.java"

# interfaces
.implements Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/widget/ZoomControlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/widget/ZoomControlBar;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/widget/ZoomControlBar;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/motorola/Camera/widget/ZoomControlBar$1;->this$0:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliderBarActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar$1;->this$0:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setActivated(Z)V

    .line 92
    return-void
.end method

.method public onSliderProgressChanged(Lcom/motorola/Camera/widget/SliderBarWidget;I)V
    .locals 1
    .parameter "sliderBar"
    .parameter "Progress"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar$1;->this$0:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v0, p2}, Lcom/motorola/Camera/widget/ZoomControlBar;->performZoom(I)V

    .line 86
    return-void
.end method
