.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;
.super Ljava/lang/Object;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->onFinishInflate()V
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
    .line 1227
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1240
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1231
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*********************************** zoom change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iget-object v1, v1, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1233
    .local v0, zoomMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iget-object v1, v1, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1234
    return-void
.end method
