.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->showToastMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

.field final synthetic val$color:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->val$color:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->val$color:I

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1080096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 526
    return-void
.end method
