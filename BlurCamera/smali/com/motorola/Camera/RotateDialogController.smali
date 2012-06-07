.class public Lcom/motorola/Camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/motorola/Camera/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/motorola/Camera/widget/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogListView:Landroid/widget/ListView;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter "a"
    .parameter "layoutResource"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/motorola/Camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    .line 60
    iput p2, p0, Lcom/motorola/Camera/RotateDialogController;->mLayoutResourceID:I

    .line 61
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    .line 64
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/motorola/Camera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0d0056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 69
    const v3, 0x7f0d0057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/widget/RotateLayout;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialog:Lcom/motorola/Camera/widget/RotateLayout;

    .line 70
    const v3, 0x7f0d0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 71
    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0d005e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 73
    const v3, 0x7f0d0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0d005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 76
    const v3, 0x7f0d005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    .line 81
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 83
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 85
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    iget-object v3, p0, Lcom/motorola/Camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/motorola/Camera/RotateDialogController;->fadeOutDialog()V

    .line 123
    :cond_0
    return-void
.end method

.method public dismissDialogImmediately()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 126
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getRootLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 97
    invoke-direct {p0}, Lcom/motorola/Camera/RotateDialogController;->inflateDialogLayout()V

    .line 98
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/motorola/Camera/RotateDialogController;->inflateDialogLayout()V

    .line 93
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialog:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 94
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "listener1"
    .parameter "button2Text"
    .parameter "listener2"
    .parameter "adapter"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/motorola/Camera/RotateDialogController;->resetRotateDialog()V

    .line 137
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    invoke-virtual {v0, p7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    if-eqz p8, :cond_0

    .line 146
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogListView:Landroid/widget/ListView;

    invoke-virtual {v0, p8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    :cond_0
    if-eqz p2, :cond_1

    .line 152
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    .line 157
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_2
    if-eqz p5, :cond_3

    .line 163
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/RotateDialogController;->fadeInDialog()V

    .line 170
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/motorola/Camera/RotateDialogController;->resetRotateDialog()V

    .line 175
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/motorola/Camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    invoke-direct {p0}, Lcom/motorola/Camera/RotateDialogController;->fadeInDialog()V

    .line 179
    return-void
.end method
