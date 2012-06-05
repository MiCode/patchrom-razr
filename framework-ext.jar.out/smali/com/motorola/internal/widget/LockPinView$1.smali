.class Lcom/motorola/internal/widget/LockPinView$1;
.super Ljava/lang/Object;
.source "LockPinView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/internal/widget/LockPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/LockPinView;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/LockPinView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 115
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    #getter for: Lcom/motorola/internal/widget/LockPinView;->mPinText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/motorola/internal/widget/LockPinView;->access$000(Lcom/motorola/internal/widget/LockPinView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return v0

    .line 120
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/motorola/internal/widget/LockPinView$1;->this$0:Lcom/motorola/internal/widget/LockPinView;

    #calls: Lcom/motorola/internal/widget/LockPinView;->ok()V
    invoke-static {v1}, Lcom/motorola/internal/widget/LockPinView;->access$100(Lcom/motorola/internal/widget/LockPinView;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
