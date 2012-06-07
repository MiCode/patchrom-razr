.class Lcom/motorola/Camera/Camera$6;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 7140
    iput-object p1, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 7142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 7174
    :cond_0
    :goto_0
    return-void

    .line 7145
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x3

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7146
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7148
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7149
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 7150
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 7154
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x5

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7155
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7157
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7158
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 7159
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 7163
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    const/16 v1, 0xa

    #calls: Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$12900(Lcom/motorola/Camera/Camera;I)V

    .line 7164
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7166
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7167
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z
    invoke-static {v0, v2}, Lcom/motorola/Camera/Camera;->access$7002(Lcom/motorola/Camera/Camera;Z)Z

    .line 7168
    iget-object v0, p0, Lcom/motorola/Camera/Camera$6;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 7142
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0005
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
