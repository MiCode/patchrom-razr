.class final Lcom/motorola/android/os/DeepSleepMediaManager$1;
.super Lcom/motorola/android/os/IMediaCmdReceiver$Stub;
.source "DeepSleepMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/DeepSleepMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/motorola/android/os/IMediaCmdReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$400()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/android/os/DeepSleepMediaManager;->access$400()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    :cond_0
    return-void
.end method
