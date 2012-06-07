.class public Lcom/motorola/Camera/DialogSettingsView;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;,
        Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;,
        Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELECT:I = 0x0

.field private static final KEY_FACE_TRACKING:Ljava/lang/String; = "Face Detection"

.field private static final KEY_SHUTTER_ANIMATION:Ljava/lang/String; = "Shutter Animation"


# instance fields
.field TAG:Ljava/lang/String;

.field TAG1:Ljava/lang/String;

.field final TOUCH_TIME:I

.field private mActivity:Landroid/app/Activity;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mCurrentVideoResolution:Ljava/lang/String;

.field mDataAdapter:Lcom/motorola/Camera/DialogListDataAdapter;

.field private mDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;"
        }
    .end annotation
.end field

.field mElementWidth:I

.field mFaceDetectCheckBox:Landroid/widget/CheckBox;

.field mFaceDetectContainer:Landroid/widget/RelativeLayout;

.field mFaceDetectNewTouchTime:J

.field mFaceDetectOldTouchTime:J

.field mGeoCancelListener:Landroid/view/View$OnClickListener;

.field mGeoSetListener:Landroid/view/View$OnClickListener;

.field mGeoTagCheckBox:Landroid/widget/CheckBox;

.field mGeoTagContainer:Landroid/widget/RelativeLayout;

.field mGeoTagNewTouchTime:J

.field mGeoTagOldTouchTime:J

.field private mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mHelpContainer:Landroid/widget/RelativeLayout;

.field mMotoCastContainer:Landroid/widget/RelativeLayout;

.field mPicResCheckBox:Landroid/widget/CheckBox;

.field mPicResCheckBoxText:Landroid/widget/TextView;

.field mPicResContainer:Landroid/widget/RelativeLayout;

.field mPicResNewTouchTime:J

.field mPicResOldTouchTime:J

.field mPicResSelect:Landroid/widget/TextView;

.field private mPreferencesBack:Landroid/content/SharedPreferences;

.field private mPreferencesCommon:Landroid/content/SharedPreferences;

.field private mPreferencesFront:Landroid/content/SharedPreferences;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mSettingsView:Landroid/view/ViewGroup;

.field mSettingsViewContainer:Landroid/widget/RelativeLayout;

.field mShutterAnimCheckBox:Landroid/widget/CheckBox;

.field mShutterAnimContainer:Landroid/widget/RelativeLayout;

.field mShutterAnimNewTouchTime:J

.field mShutterAnimOldTouchTime:J

.field mShutterToneCheckBox:Landroid/widget/CheckBox;

.field mShutterToneContainer:Landroid/widget/RelativeLayout;

.field mShutterToneNewTouchTime:J

.field mShutterToneOldTouchTime:J

.field mStorageCancelListener:Landroid/view/View$OnClickListener;

.field private mStorageItemSelected:I

.field mStorageListAdapter:Landroid/widget/BaseAdapter;

.field mStorageRemaining:Landroid/widget/TextView;

.field private mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mStorageSelect:Landroid/widget/TextView;

.field mStorageSelectContainer:Landroid/widget/RelativeLayout;

.field mStorageSelectDesc:[Ljava/lang/String;

.field mStorageTextContainer:Landroid/widget/LinearLayout;

.field mVStabCheckBox:Landroid/widget/CheckBox;

.field mVStabContainer:Landroid/widget/RelativeLayout;

.field mVStabNewTouchTime:J

.field mVStabOldTouchTime:J

.field mVidResAdapter:Landroid/widget/ArrayAdapter;

.field mVidResCancelListener:Landroid/view/View$OnClickListener;

.field mVidResContainer:Landroid/widget/RelativeLayout;

.field mVidResDesc:[Ljava/lang/CharSequence;

.field mVidResDialog:Landroid/app/AlertDialog;

.field private mVidResItemSelected:I

.field mVidResNewTouchTime:J

.field mVidResOldTouchTime:J

.field mVidResSelect:Landroid/widget/TextView;

.field mVidResTextContainer:Landroid/widget/LinearLayout;

.field mVidResValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVideoResListAdapter:Landroid/widget/BaseAdapter;

.field private mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mVolKeyCancelListener:Landroid/view/View$OnClickListener;

.field mVolKeyOptions:[Ljava/lang/String;

.field mVolumeFuncContainer:Landroid/widget/RelativeLayout;

.field mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

.field private mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field mVolumeKeySelect:Landroid/widget/TextView;

.field parentView:Landroid/view/ViewGroup;

.field settingsDialogClickListener:Landroid/view/View$OnClickListener;

.field settingsDialogSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

.field private storageRemainingText:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;ILandroid/app/Activity;I)V
    .locals 12
    .parameter "context"
    .parameter "v"
    .parameter
    .parameter "interfaceParam"
    .parameter "title"
    .parameter "selectedPosition"
    .parameter "a"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogListData;",
            ">;",
            "Lcom/motorola/Camera/DialogCallbackInterface;",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/DialogListData;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v8, "DialogSettingsView"

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    .line 56
    const-string v8, "DialogSettingsView1"

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG1:Ljava/lang/String;

    .line 104
    const/16 v8, 0x64

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TOUCH_TIME:I

    .line 116
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 117
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    .line 118
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    .line 131
    const/4 v8, 0x0

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    .line 533
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$1;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$1;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    .line 830
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$2;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$2;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    .line 1034
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$3;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$3;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1276
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$4;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$4;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageCancelListener:Landroid/view/View$OnClickListener;

    .line 1285
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$5;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$5;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyCancelListener:Landroid/view/View$OnClickListener;

    .line 1294
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$6;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$6;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResCancelListener:Landroid/view/View$OnClickListener;

    .line 1303
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$7;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$7;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoCancelListener:Landroid/view/View$OnClickListener;

    .line 1317
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$8;

    invoke-direct {v8, p0}, Lcom/motorola/Camera/DialogSettingsView$8;-><init>(Lcom/motorola/Camera/DialogSettingsView;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoSetListener:Landroid/view/View$OnClickListener;

    .line 149
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/motorola/Camera/DialogSettingsView;->parentView:Landroid/view/ViewGroup;

    .line 152
    iput-object p3, p0, Lcom/motorola/Camera/DialogSettingsView;->mDataArray:Ljava/util/ArrayList;

    .line 153
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 155
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    .line 156
    move/from16 v0, p8

    iput v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    .line 159
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 160
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030026

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, settingsviewlayout:Landroid/view/View;
    const v8, 0x7f0d0062

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 163
    .local v6, text:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 165
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    const v8, 0x7f0d0066

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    .line 169
    const v8, 0x7f0d0077

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    .line 170
    const v8, 0x7f0d007c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    .line 171
    const v8, 0x7f0d0081

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    .line 172
    const v8, 0x7f0d008f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    .line 173
    const v8, 0x7f0d0094

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    .line 174
    const v8, 0x7f0d0061

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mSettingsViewContainer:Landroid/widget/RelativeLayout;

    .line 177
    const v8, 0x7f0d0065

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    .line 178
    const v8, 0x7f0d006a

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    .line 179
    const v8, 0x7f0d006b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    .line 181
    const v8, 0x7f0d0072

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    .line 182
    const v8, 0x7f0d0089

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    .line 183
    const v8, 0x7f0d0076

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    .line 184
    const v8, 0x7f0d007b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    .line 185
    const v8, 0x7f0d0080

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    .line 186
    const v8, 0x7f0d0085

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    .line 187
    const v8, 0x7f0d006e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    .line 188
    const v8, 0x7f0d008e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    .line 189
    const v8, 0x7f0d0093

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    const v8, 0x7f0d008a

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    .line 195
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->settingsDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v9, 0x7f070019

    const v10, 0x1090008

    invoke-static {v8, v9, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResAdapter:Landroid/widget/ArrayAdapter;

    .line 217
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResAdapter:Landroid/widget/ArrayAdapter;

    const v9, 0x1090009

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 220
    const v8, 0x7f0d0069

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    .line 221
    const v8, 0x7f0d006d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    .line 222
    const v8, 0x7f0d0075

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeySelect:Landroid/widget/TextView;

    .line 223
    const v8, 0x7f0d008c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    .line 224
    const v8, 0x7f0d008d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    .line 226
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 228
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    .line 231
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences_back"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesBack:Landroid/content/SharedPreferences;

    .line 234
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const-string v9, "com.motorola.Camera_preferences_front"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesFront:Landroid/content/SharedPreferences;

    .line 237
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isFaceDetectionEnable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    :cond_1
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 244
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isWideScreenDisplay()Z

    move-result v8

    if-nez v8, :cond_e

    .line 248
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 249
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/DialogSettingsView;->calculateRemainingSpace()V

    .line 280
    sget-boolean v8, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v8, :cond_13

    .line 282
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 283
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 284
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 285
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 286
    const v8, 0x7f0d008b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 287
    .local v5, storageTitleText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b011b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    if-eqz v5, :cond_2

    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    :cond_2
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 319
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    const-string v10, "Face Detection"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    const-string v10, "isLocationOn"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    if-nez v8, :cond_4

    .line 324
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    :cond_4
    new-instance v2, Lcom/motorola/Camera/MotoCast;

    invoke-direct {v2}, Lcom/motorola/Camera/MotoCast;-><init>()V

    .line 329
    .local v2, motocast:Lcom/motorola/Camera/MotoCast;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/motorola/Camera/MotoCast;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 330
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mMotoCastContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :cond_5
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationSupported()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 335
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 339
    :cond_6
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v8

    if-nez v8, :cond_7

    .line 341
    invoke-direct {p0, v3}, Lcom/motorola/Camera/DialogSettingsView;->disableVstabContainer(Landroid/view/View;)V

    .line 345
    :cond_7
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResValue:Ljava/util/List;

    .line 346
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    .line 347
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyOptions:[Ljava/lang/String;

    .line 348
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeySelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyOptions:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    .line 351
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_8

    .line 352
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentVideoResolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_8
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResValue:Ljava/util/List;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentVideoResolution:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 355
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_9

    .line 356
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mVidResItemSelected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_9
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    array-length v8, v8

    if-lez v8, :cond_a

    .line 359
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    iget v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_a
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_b

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_b

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_b

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v8

    if-nez v8, :cond_c

    .line 366
    :cond_b
    invoke-direct {p0, v3}, Lcom/motorola/Camera/DialogSettingsView;->disableVidContainer(Landroid/view/View;)V

    .line 371
    :cond_c
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationDemoSupported()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 372
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    :cond_d
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    .line 376
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$VolumeKeyListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    .line 377
    new-instance v8, Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/Camera/DialogSettingsView$StorageListAdapter;-><init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    .line 379
    return-void

    .line 254
    .end local v2           #motocast:Lcom/motorola/Camera/MotoCast;
    .end local v5           #storageTitleText:Landroid/widget/TextView;
    :cond_e
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/Camera/CameraGlobalTools;->isWidescreenSelected(Ljava/lang/String;)Z

    move-result v7

    .line 256
    .local v7, wideScreen:Z
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_f

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_f

    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_11

    .line 262
    :cond_f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/motorola/Camera/DialogSettingsView;->disablePicContainer(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 275
    :cond_10
    :goto_2
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/motorola/Camera/DialogSettingsView;->getPicResolutionSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    :cond_11
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getWSPicResolution()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_12

    .line 267
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/motorola/Camera/DialogSettingsView;->disablePicContainer(Landroid/view/View;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 269
    :cond_12
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 271
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/motorola/Camera/DialogSettingsView;->disablePicContainer(Landroid/view/View;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 295
    .end local v7           #wideScreen:Z
    :cond_13
    const v8, 0x7f0d008b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 296
    .restart local v5       #storageTitleText:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b011a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    .line 298
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectDesc:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    iget-object v10, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {}, Lcom/motorola/Camera/CameraGlobalTools;->currentStorageState()I

    move-result v4

    .line 302
    .local v4, storage:I
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_14

    .line 303
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentStorageState"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_14
    const/4 v8, 0x2

    if-eq v4, v8, :cond_15

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    .line 307
    :cond_15
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelect:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRemaining:Landroid/widget/TextView;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    if-eqz v5, :cond_16

    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    :cond_16
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 311
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageSelectContainer:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 312
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 313
    iget-object v8, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/DialogSettingsView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/motorola/Camera/DialogSettingsView;->getPicResolutionSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/Camera/DialogSettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageItemSelected:I

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/DialogSettingsView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/Camera/DialogSettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    return v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/DialogSettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    return p1
.end method

.method private calculateRemainingSpace()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    .line 493
    sget-boolean v5, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v5, :cond_0

    move v2, v4

    .line 494
    .local v2, numberOfStorageDevices:I
    :goto_0
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    .line 495
    .local v0, currentStorage:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    aget-boolean v6, v0, v1

    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->getFreeSpaceAsFormattedString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b014c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, storageText:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    aput-object v3, v4, v1

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 493
    .end local v0           #currentStorage:[Z
    .end local v1           #i:I
    .end local v2           #numberOfStorageDevices:I
    .end local v3           #storageText:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 499
    .restart local v0       #currentStorage:[Z
    .restart local v1       #i:I
    .restart local v2       #numberOfStorageDevices:I
    :cond_1
    return-void

    .line 494
    :array_0
    .array-data 0x1
        0x1t
        0x0t
    .end array-data
.end method

.method private calculateRemainingStorageInPhotosAndVideos()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 479
    sget-boolean v9, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v9, :cond_0

    move v2, v7

    .line 480
    .local v2, numberOfStorageDevices:I
    :goto_0
    new-array v0, v7, [Z

    fill-array-data v0, :array_0

    .line 481
    .local v0, currentStorage:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 482
    const-string v5, ""

    .line 483
    .local v5, storageText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 484
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v7

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, picRes:Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/Integer;

    aget-boolean v9, v0, v1

    invoke-static {v3, v9}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, picsLeftText:Ljava/lang/String;
    aget-boolean v7, v0, v1

    invoke-static {v7}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v7

    int-to-long v9, v7

    invoke-static {v9, v10}, Lcom/motorola/Camera/CameraGlobalTools;->format2Time(J)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, vidTimeLeftText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Photos / "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Videos)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->storageRemainingText:[Ljava/lang/String;

    aput-object v5, v7, v1

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentStorage:[Z
    .end local v1           #i:I
    .end local v2           #numberOfStorageDevices:I
    .end local v3           #picRes:Ljava/lang/String;
    .end local v4           #picsLeftText:Ljava/lang/String;
    .end local v5           #storageText:Ljava/lang/String;
    .end local v6           #vidTimeLeftText:Ljava/lang/String;
    :cond_0
    move v2, v8

    .line 479
    goto :goto_0

    .line 484
    .restart local v0       #currentStorage:[Z
    .restart local v1       #i:I
    .restart local v2       #numberOfStorageDevices:I
    .restart local v5       #storageText:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 490
    .end local v5           #storageText:Ljava/lang/String;
    :cond_2
    return-void

    .line 480
    :array_0
    .array-data 0x1
        0x1t
        0x0t
    .end array-data
.end method

.method private disablePicContainer(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "v"
    .parameter "check"

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 444
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 445
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 446
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 447
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 448
    const v1, 0x7f0d0068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 449
    .local v0, picReslnText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 450
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    :cond_0
    return-void
.end method

.method private disableVidContainer(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, -0x777778

    const/4 v2, 0x0

    .line 454
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 455
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 456
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 457
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 458
    const v1, 0x7f0d006c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 459
    .local v0, vidReslnText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    return-void
.end method

.method private disableVstabContainer(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, -0x777778

    const/4 v3, 0x0

    .line 464
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 465
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 466
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 467
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 468
    const v2, 0x7f0d0083

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 469
    .local v1, vstabText:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 472
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mHelpContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 473
    const v2, 0x7f0d0087

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    .local v0, helpText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    :cond_1
    return-void
.end method

.method private getPicResolutionSummary()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 507
    const/4 v2, 0x0

    .line 509
    .local v2, summary:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/Camera/CameraGlobalTools;->calcResolutionMP(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, mp:I
    const/4 v1, 0x0

    .line 512
    .local v1, res:Ljava/lang/String;
    if-ge v0, v6, :cond_0

    .line 514
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 526
    :goto_1
    return-object v2

    .line 518
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public closeSettingSecondaryDialog()V
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1234
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1271
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getBottom()I

    move-result v0

    .line 1273
    :cond_0
    return v0
.end method

.method public getChildWidth()I
    .locals 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mPicResContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 412
    .local v0, maxWidth:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 424
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 428
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 430
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 432
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 434
    :cond_4
    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 1238
    const/4 v0, 0x0

    .line 1239
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getLeft()I

    move-result v0

    .line 1243
    :cond_0
    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getRight()I

    move-result v0

    .line 1263
    :cond_0
    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, result:I
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->getTop()I

    move-result v0

    .line 1253
    :cond_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mSettingsViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public notifyVideoResolutionSelected(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 383
    iput p1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    .line 384
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVidResItemSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method

.method public showPhoneLocationDialog()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 793
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 795
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 796
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 797
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "isLocationOn"

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 824
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-nez v0, :cond_1

    .line 804
    new-instance v0, Lcom/motorola/Camera/RotateDialogController;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f030025

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 807
    iget v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 809
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoSetListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0036

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoCancelListener:Landroid/view/View$OnClickListener;

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 823
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    goto :goto_0
.end method
