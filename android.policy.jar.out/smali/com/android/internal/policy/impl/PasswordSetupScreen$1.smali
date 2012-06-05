.class Lcom/android/internal/policy/impl/PasswordSetupScreen$1;
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


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$1;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordSetupScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$000(Lcom/android/internal/policy/impl/PasswordSetupScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 234
    return-void
.end method
