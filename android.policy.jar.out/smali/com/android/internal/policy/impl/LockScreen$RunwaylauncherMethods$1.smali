.class Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->showAppErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;->this$1:Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods$1;->this$1:Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;

    #getter for: Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->mRunwayLauncher:Lcom/motorola/android/widget/RunwayLauncher;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;->access$1800(Lcom/android/internal/policy/impl/LockScreen$RunwaylauncherMethods;)Lcom/motorola/android/widget/RunwayLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/widget/RunwayLauncher;->reset()V

    .line 558
    return-void
.end method
