.class Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;
.super Ljava/lang/Object;
.source "PhoneZoom.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->createGlassHandle(Landroid/content/Context;IIIIZ)Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const v1, 0x1080204

    .line 505
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 507
    :pswitch_1
    const v0, 0x1080205

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 510
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass$4;->this$1:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->increaseZoom()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$2500(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;)V

    .line 511
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 514
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
