.class Lcom/motorola/Camera/DialogSettingsView$1;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 534
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 538
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 540
    .local v0, action:I
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_2

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 542
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    if-nez v0, :cond_1

    .line 544
    :cond_0
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 545
    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 563
    :cond_1
    :goto_0
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    .line 565
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_8

    .line 567
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResNewTouchTime:J

    .line 568
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mPicResOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 570
    const/4 v8, 0x1

    .line 756
    :goto_1
    return v8

    .line 551
    :cond_2
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_1

    .line 553
    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    if-nez v0, :cond_1

    .line 555
    :cond_3
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    goto :goto_0

    .line 573
    :cond_4
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v6, 0x1

    .line 574
    .local v6, resolution:Z
    :goto_2
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 576
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v10, Lcom/motorola/Camera/CameraGlobalType;->SETTING_WIDE_SCREEN:I

    if-eqz v6, :cond_7

    const/4 v8, 0x1

    :goto_3
    invoke-interface {v9, v10, v8}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 579
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #calls: Lcom/motorola/Camera/DialogSettingsView;->getPicResolutionSummary()Ljava/lang/String;
    invoke-static {v9}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mPicResNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mPicResOldTouchTime:J

    .line 756
    .end local v6           #resolution:Z
    :cond_5
    :goto_4
    const/4 v8, 0x1

    goto :goto_1

    .line 573
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 576
    .restart local v6       #resolution:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 583
    .end local v6           #resolution:Z
    :cond_8
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_b

    .line 585
    const/4 v7, 0x0

    .line 586
    .local v7, selection:I
    const/4 v4, 0x0

    .line 588
    .local v4, flag:Z
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    .line 589
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 591
    const/4 v8, 0x1

    goto :goto_1

    .line 594
    :cond_9
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 596
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 597
    const/4 v4, 0x0

    .line 598
    const/4 v7, 0x0

    .line 607
    :goto_5
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 608
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "Face Detection"

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v9, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    invoke-interface {v8, v9, v7}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 612
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectOldTouchTime:J

    goto :goto_4

    .line 602
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_a
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 603
    const/4 v4, 0x1

    .line 604
    const/4 v7, 0x1

    goto :goto_5

    .line 614
    .end local v4           #flag:Z
    .end local v7           #selection:I
    :cond_b
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_12

    .line 616
    const/4 v7, 0x0

    .line 617
    .restart local v7       #selection:I
    const/4 v4, 0x0

    .line 618
    .restart local v4       #flag:Z
    const/4 v1, 0x0

    .line 620
    .local v1, alertDlg:Landroid/app/AlertDialog;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    .line 621
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    .line 623
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 626
    :cond_c
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 628
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 629
    const/4 v7, 0x0

    .line 630
    const/4 v4, 0x0

    .line 640
    :goto_6
    if-eqz v4, :cond_d

    .line 643
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInSecurelyLockedMode()Z

    move-result v8

    if-nez v8, :cond_d

    .line 644
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v8

    if-nez v8, :cond_11

    .line 645
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v8}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 646
    const/4 v4, 0x0

    .line 655
    :cond_d
    :goto_7
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 656
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 657
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "isLocationOn"

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_e

    .line 661
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    const-string v9, "Geo tag setting updated---------------->"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_e
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v9, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    invoke-interface {v8, v9, v7}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 665
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagOldTouchTime:J

    goto/16 :goto_4

    .line 634
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_f
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 635
    const/4 v4, 0x1

    .line 637
    :cond_10
    const/4 v7, 0x1

    goto :goto_6

    .line 650
    :cond_11
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    .line 667
    .end local v1           #alertDlg:Landroid/app/AlertDialog;
    .end local v4           #flag:Z
    .end local v7           #selection:I
    :cond_12
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_16

    .line 668
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    .line 669
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mVStabOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_13

    .line 670
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 673
    :cond_13
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 675
    .restart local v4       #flag:Z
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_14

    const/4 v8, 0x1

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 677
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v10, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-nez v4, :cond_15

    const/4 v8, 0x1

    :goto_9
    invoke-interface {v9, v10, v8}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 679
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mVStabNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mVStabOldTouchTime:J

    goto/16 :goto_4

    .line 675
    :cond_14
    const/4 v8, 0x0

    goto :goto_8

    .line 677
    :cond_15
    const/4 v8, 0x0

    goto :goto_9

    .line 681
    .end local v4           #flag:Z
    :cond_16
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_1a

    .line 683
    const/4 v7, 0x0

    .line 684
    .restart local v7       #selection:I
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    .line 685
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_17

    .line 687
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 690
    :cond_17
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 692
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 693
    const/4 v8, 0x0

    sput-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 694
    const/4 v7, 0x0

    .line 703
    :goto_a
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_18

    .line 704
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tone set to:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_18
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v9, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    invoke-interface {v8, v9, v7}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 709
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 710
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "Shutter Tone"

    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneOldTouchTime:J

    goto/16 :goto_4

    .line 698
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_19
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 699
    const/4 v8, 0x1

    sput-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 700
    const/4 v7, 0x1

    goto :goto_a

    .line 715
    .end local v7           #selection:I
    :cond_1a
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_1d

    .line 717
    const/4 v7, 0x0

    .line 718
    .restart local v7       #selection:I
    const/4 v4, 0x0

    .line 720
    .restart local v4       #flag:Z
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    .line 721
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v10, v10, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimOldTouchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_1b

    .line 723
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 726
    :cond_1b
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 728
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 729
    const/4 v7, 0x0

    .line 730
    const/4 v4, 0x0

    .line 739
    :goto_b
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/motorola/Camera/DialogSettingsView;->access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 740
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "Shutter Animation"

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v9, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    invoke-interface {v8, v9, v7}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 744
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-wide v9, v9, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimNewTouchTime:J

    iput-wide v9, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimOldTouchTime:J

    goto/16 :goto_4

    .line 734
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1c
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 735
    const/4 v7, 0x1

    .line 736
    const/4 v4, 0x1

    goto :goto_b

    .line 745
    .end local v4           #flag:Z
    .end local v7           #selection:I
    :cond_1d
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_1e

    .line 747
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/motorola/Camera/DemoActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 748
    .local v2, demoIntent:Landroid/content/Intent;
    const/high16 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const-string v8, "feature"

    const-string v9, "vstab"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 751
    .end local v2           #demoIntent:Landroid/content/Intent;
    :cond_1e
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v8, :cond_5

    .line 752
    new-instance v5, Lcom/motorola/Camera/MotoCast;

    invoke-direct {v5}, Lcom/motorola/Camera/MotoCast;-><init>()V

    .line 753
    .local v5, motocast:Lcom/motorola/Camera/MotoCast;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView$1;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v8, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/MotoCast;->launchAutoUpload(Landroid/content/Context;)V

    goto/16 :goto_4
.end method
