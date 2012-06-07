.class public Lcom/motorola/Camera/Camcorder$CamcorderDialog;
.super Landroid/app/AlertDialog;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CamcorderDialog"
.end annotation


# static fields
.field public static final DIALOG_MODE_MAX:I

.field public static final DIALOG_MODE_TIMELAPSE:I


# instance fields
.field private currentDialog:I

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method protected constructor <init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "dialogID"

    .prologue
    .line 4795
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->this$0:Lcom/motorola/Camera/Camcorder;

    .line 4796
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4793
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->currentDialog:I

    .line 4799
    if-gtz p3, :cond_0

    .line 4800
    iput p3, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->currentDialog:I

    .line 4802
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 4806
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4809
    iget v2, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->currentDialog:I

    packed-switch v2, :pswitch_data_0

    .line 4820
    :goto_0
    return-void

    .line 4811
    :pswitch_0
    const v2, 0x7f030011

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->setContentView(I)V

    .line 4812
    const v2, 0x7f0d000a

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 4813
    .local v1, timelapseGrid:Landroid/widget/GridView;
    new-instance v0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {v0, v2, v3}, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;)V

    .line 4814
    .local v0, adapter:Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4815
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 4809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4823
    packed-switch p1, :pswitch_data_0

    .line 4831
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 4825
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onAutoTimerItemCanceled()V

    .line 4826
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 4823
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
