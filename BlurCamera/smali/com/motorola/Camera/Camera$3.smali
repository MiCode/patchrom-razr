.class Lcom/motorola/Camera/Camera$3;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camera;->enablePanorama(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 2574
    iget-object v0, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1200(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 2575
    iget-object v0, p0, Lcom/motorola/Camera/Camera$3;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 2577
    :cond_0
    return-void
.end method
