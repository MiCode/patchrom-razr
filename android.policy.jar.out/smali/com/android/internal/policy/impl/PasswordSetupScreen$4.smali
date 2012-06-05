.class Lcom/android/internal/policy/impl/PasswordSetupScreen$4;
.super Ljava/lang/Object;
.source "PasswordSetupScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordSetupScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$100(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 286
    return-void
.end method
