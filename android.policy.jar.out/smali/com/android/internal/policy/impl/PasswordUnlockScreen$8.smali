.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showSoftInputKeyboard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

.field final synthetic val$showSoftInput:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->val$showSoftInput:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 589
    .local v0, im:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->val$showSoftInput:Z

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
