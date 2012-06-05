.class Lcom/android/internal/policy/impl/PasswordSetupScreen$3;
.super Ljava/lang/Object;
.source "PasswordSetupScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 264
    invoke-static {}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$200()Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    if-ne v0, v1, :cond_0

    .line 265
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$202(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #calls: Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateUi()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$300(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordSetupScreen;->mResuming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$400(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordSetupScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$100(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 273
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 261
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 258
    return-void
.end method
