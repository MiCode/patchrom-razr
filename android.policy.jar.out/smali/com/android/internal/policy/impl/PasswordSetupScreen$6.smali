.class Lcom/android/internal/policy/impl/PasswordSetupScreen$6;
.super Ljava/lang/Object;
.source "PasswordSetupScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordSetupScreen;->showError(Ljava/lang/String;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

.field final synthetic val$next:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordSetupScreen;Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;->val$next:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$6;->val$next:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->updateStage(Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;)V

    .line 637
    return-void
.end method
