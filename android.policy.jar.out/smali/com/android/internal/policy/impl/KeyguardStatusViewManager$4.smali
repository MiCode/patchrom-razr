.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/motorola/android/widget/SlidingDoor$OnDoorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->initSlidingDoor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onSlidingDoorSoundModeChanged(Z)V
    .locals 2
    .parameter "isSilent"

    .prologue
    const/4 v1, 0x0

    .line 994
    if-eqz p1, :cond_2

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mExternalRingerModeChanged:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mExternalRingerModeChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mExternalRingerModeChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mExternalRingerModeChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onDoorClosed(I)V
    .locals 3
    .parameter "leadId"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104031e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->showToastMessage(Ljava/lang/String;)V

    .line 1013
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->onSlidingDoorSoundModeChanged(Z)V

    .line 1016
    :cond_0
    return-void
.end method

.method public onDoorHandleTouched(I)V
    .locals 0
    .parameter "leadId"

    .prologue
    .line 1019
    return-void
.end method

.method public onDoorOpened(I)V
    .locals 3
    .parameter "leadId"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104031d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->showToastMessage(Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;->onSlidingDoorSoundModeChanged(Z)V

    .line 992
    :cond_0
    return-void
.end method
