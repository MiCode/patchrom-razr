.class Lcom/motorola/Camera/DialogSettingsView$2;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/16 v7, 0x10e

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 835
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v3, v2}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 836
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v3, :cond_2

    .line 838
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    .line 839
    .local v12, resolution:Z
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentResolution(Z)V

    .line 841
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->SETTING_WIDE_SCREEN:I

    if-eqz v12, :cond_1

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 844
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #calls: Lcom/motorola/Camera/DialogSettingsView;->getPicResolutionSummary()Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    .end local v12           #resolution:Z
    :cond_0
    :goto_1
    return-void

    .restart local v12       #resolution:Z
    :cond_1
    move v0, v1

    .line 841
    goto :goto_0

    .line 846
    .end local v12           #resolution:Z
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 848
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 850
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030025

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$402(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 852
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 853
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 855
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 858
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mVidResCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 867
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 868
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_1

    .line 869
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v3, :cond_8

    .line 870
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_6

    .line 872
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030025

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$702(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 874
    :cond_6
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 875
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_7

    .line 877
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 880
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 889
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 890
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_1

    .line 892
    :cond_8
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_b

    .line 894
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_9

    .line 896
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030025

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$802(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 898
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 899
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_a

    .line 901
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 904
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b011a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 913
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 914
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_1

    .line 916
    :cond_b
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_d

    .line 918
    const/4 v13, 0x0

    .line 919
    .local v13, selection:I
    const/4 v11, 0x0

    .line 921
    .local v11, flag:Z
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 923
    const/4 v13, 0x1

    .line 924
    const/4 v11, 0x1

    .line 932
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 933
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Face Detection"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    invoke-interface {v0, v1, v13}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_1

    .line 928
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_c
    const/4 v13, 0x0

    .line 929
    const/4 v11, 0x0

    goto :goto_2

    .line 938
    .end local v11           #flag:Z
    .end local v13           #selection:I
    :cond_d
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_12

    .line 940
    const/4 v13, 0x0

    .line 941
    .restart local v13       #selection:I
    const/4 v11, 0x0

    .line 942
    .restart local v11       #flag:Z
    const/4 v9, 0x0

    .line 944
    .local v9, alertDlg:Landroid/app/AlertDialog;
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 946
    const/4 v13, 0x1

    .line 947
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 948
    const/4 v11, 0x1

    .line 957
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 958
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 959
    const/4 v11, 0x0

    .line 963
    :cond_f
    if-eqz v11, :cond_10

    .line 965
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInSecurelyLockedMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 967
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 968
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 969
    const/4 v11, 0x0

    .line 973
    :cond_10
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 974
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 975
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "isLocationOn"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 976
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 978
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    invoke-interface {v0, v1, v13}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_1

    .line 953
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_11
    const/4 v13, 0x0

    .line 954
    const/4 v11, 0x0

    goto :goto_3

    .line 979
    .end local v9           #alertDlg:Landroid/app/AlertDialog;
    .end local v11           #flag:Z
    .end local v13           #selection:I
    :cond_12
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_14

    .line 980
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 981
    .restart local v11       #flag:Z
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilization(Z)V

    .line 983
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-eqz v11, :cond_13

    :goto_4
    invoke-interface {v2, v3, v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto :goto_4

    .line 986
    .end local v11           #flag:Z
    :cond_14
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_16

    .line 988
    const/4 v13, 0x0

    .line 989
    .restart local v13       #selection:I
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 991
    const/4 v13, 0x1

    .line 992
    sput-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 999
    :goto_5
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    invoke-interface {v0, v1, v13}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1001
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1002
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Shutter Tone"

    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 996
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_15
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 997
    const/4 v13, 0x0

    goto :goto_5

    .line 1005
    .end local v13           #selection:I
    :cond_16
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 1007
    const/4 v13, 0x0

    .line 1008
    .restart local v13       #selection:I
    const/4 v11, 0x0

    .line 1009
    .restart local v11       #flag:Z
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1011
    const/4 v13, 0x1

    .line 1012
    const/4 v11, 0x1

    .line 1019
    :goto_6
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    invoke-interface {v0, v1, v13}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1021
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1022
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Shutter Animation"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1023
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1016
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_17
    const/4 v13, 0x0

    .line 1017
    const/4 v11, 0x0

    goto :goto_6
.end method
