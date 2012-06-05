.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;
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

.field final synthetic val$oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$oldColors:Landroid/content/res/ColorStateList;

.field final synthetic val$oldText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;Ljava/lang/String;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldText:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldColors:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3$2;->val$oldBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    return-void
.end method
