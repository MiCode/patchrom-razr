.class Landroid/view/BrightnessPanel$2;
.super Landroid/app/Dialog;
.source "BrightnessPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/BrightnessPanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BrightnessPanel;


# direct methods
.method constructor <init>(Landroid/view/BrightnessPanel;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/view/BrightnessPanel$2;->this$0:Landroid/view/BrightnessPanel;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/BrightnessPanel$2;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Landroid/view/BrightnessPanel$2;->this$0:Landroid/view/BrightnessPanel;

    #calls: Landroid/view/BrightnessPanel;->forceTimeout()V
    invoke-static {v0}, Landroid/view/BrightnessPanel;->access$100(Landroid/view/BrightnessPanel;)V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
