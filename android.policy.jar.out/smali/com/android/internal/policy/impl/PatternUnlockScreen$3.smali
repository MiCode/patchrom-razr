.class Lcom/android/internal/policy/impl/PatternUnlockScreen$3;
.super Landroid/os/CountDownTimer;
.source "PatternUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$802(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 437
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 438
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040311

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 441
    return-void
.end method
