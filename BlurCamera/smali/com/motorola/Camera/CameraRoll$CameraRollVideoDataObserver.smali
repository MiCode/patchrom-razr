.class Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;
.super Landroid/database/ContentObserver;
.source "CameraRoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraRollVideoDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CameraRoll;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/CameraRoll;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;->this$0:Lcom/motorola/Camera/CameraRoll;

    .line 464
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 465
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 470
    sget-boolean v0, Lcom/motorola/Camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraRoll"

    const-string v1, "update Video: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraRoll$CameraRollVideoDataObserver;->this$0:Lcom/motorola/Camera/CameraRoll;

    #getter for: Lcom/motorola/Camera/CameraRoll;->mDataHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/CameraRoll;->access$1100(Lcom/motorola/Camera/CameraRoll;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    return-void
.end method
