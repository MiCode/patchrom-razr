.class Lcom/motorola/Camera/Camcorder$10;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4733
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4735
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "OnCancelListener() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camcorder;->access$6702(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 4737
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1000(Lcom/motorola/Camera/Camcorder;)V

    .line 4738
    return-void
.end method
