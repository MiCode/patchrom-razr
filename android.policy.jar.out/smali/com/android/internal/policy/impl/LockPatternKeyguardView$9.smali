.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2053
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2054
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2055
    return-void
.end method

.method public exposeFallback()V
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2073
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2080
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3408(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2063
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2064
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2065
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2066
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2038
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2039
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2041
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2042
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2044
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 2045
    return-void
.end method
