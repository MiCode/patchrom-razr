.class public interface abstract Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;
.super Ljava/lang/Object;
.source "CaptureCluster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/View/CaptureCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureClusterListener"
.end annotation


# virtual methods
.method public abstract onCameraModeSwitch(Z)V
.end method

.method public abstract onFrontCameraSwitch()V
.end method

.method public abstract onMuteToggle(Z)V
.end method

.method public abstract onStillCaptureDown(Z)V
.end method

.method public abstract onStillCaptureFocus()V
.end method

.method public abstract onStillCaptureUp()V
.end method

.method public abstract onVideoRecordingStarted()V
.end method

.method public abstract onVideoRecordingStopped()V
.end method

.method public abstract onVideoSnapshot()V
.end method
