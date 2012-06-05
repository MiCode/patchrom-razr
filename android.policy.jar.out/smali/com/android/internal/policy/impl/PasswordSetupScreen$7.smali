.class Lcom/android/internal/policy/impl/PasswordSetupScreen$7;
.super Ljava/lang/Object;
.source "PasswordSetupScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordSetupScreen;->showPolicy()V
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
    .line 772
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$7;->this$0:Lcom/android/internal/policy/impl/PasswordSetupScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordSetupScreen;->access$502(Z)Z

    .line 775
    return-void
.end method
