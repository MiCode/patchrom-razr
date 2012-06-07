.class public Lcom/motorola/Camera/View/CamcoderSwitch;
.super Landroid/widget/LinearLayout;
.source "CamcoderSwitch.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;
    }
.end annotation


# static fields
.field public static final STATE_CAMCODER:I = 0x1

.field public static final STATE_CAMERA:I


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/View/CamcoderSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    .line 34
    iput-object v1, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mListener:Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;

    .line 42
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 48
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "event1"
    .parameter "event2"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 94
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 83
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "event1"
    .parameter "event2"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 66
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->getState()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->isEnabled()Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 147
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 148
    .local v2, toggle:Landroid/widget/ImageView;
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 149
    .local v3, toggle_bg:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 152
    const v4, 0x7f0d0001

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 153
    .local v1, cameraIcon:Landroid/widget/ImageView;
    const v4, 0x7f0d0002

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    .local v0, camcoderIcon:Landroid/widget/ImageView;
    const v4, 0x7f020034

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    const v4, 0x7f0200c7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget v4, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    if-nez v4, :cond_2

    .line 159
    const v4, 0x7f020035

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_2
    const/4 v4, 0x1

    iget v5, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    if-ne v4, v5, :cond_0

    .line 161
    const v4, 0x7f0200c8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnSwitchListener(Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mListener:Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;

    .line 138
    return-void
.end method

.method public setState(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    if-ne v7, p1, :cond_1

    :cond_0
    iget v7, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    if-ne v7, p1, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iput p1, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mState:I

    .line 102
    const/4 v3, -0x1

    .line 103
    .local v3, camera_icon_res:I
    const/4 v1, -0x1

    .line 104
    .local v1, camcoder_icon_res:I
    const/4 v4, -0x1

    .line 106
    .local v4, gravity:I
    if-nez p1, :cond_3

    .line 107
    const v3, 0x7f020035

    .line 108
    const v1, 0x7f0200c7

    .line 109
    const/16 v4, 0x53

    .line 116
    :goto_1
    const v7, 0x7f0d0001

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 117
    .local v2, cameraIcon:Landroid/widget/ImageView;
    const v7, 0x7f0d0002

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, camcoderIcon:Landroid/widget/ImageView;
    const v7, 0x7f0d0004

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/CamcoderSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 120
    .local v6, toggle:Landroid/widget/ImageView;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .local v5, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v7, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mListener:Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;

    if-eqz v7, :cond_1

    .line 129
    iget-object v7, p0, Lcom/motorola/Camera/View/CamcoderSwitch;->mListener:Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;

    invoke-interface {v7, p1}, Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;->onSwitch(I)V

    goto :goto_0

    .line 111
    .end local v0           #camcoderIcon:Landroid/widget/ImageView;
    .end local v2           #cameraIcon:Landroid/widget/ImageView;
    .end local v5           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #toggle:Landroid/widget/ImageView;
    :cond_3
    const v3, 0x7f020034

    .line 112
    const v1, 0x7f0200c8

    .line 113
    const/16 v4, 0x55

    goto :goto_1
.end method
