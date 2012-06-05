.class public Landroid/view/BrightnessPanel;
.super Landroid/os/Handler;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final FLAG_SHOW_UI:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static final MAX_BRIGHTNESS_LEVEL:I = 0x64

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x0

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x2

.field private static final TIMEOUT_DELAY:I = 0xbb8


# instance fields
.field private final mDialog:Landroid/app/Dialog;

.field private mGroup:Landroid/view/ViewGroup;

.field private mSeekbarView:Landroid/widget/SeekBar;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109002c

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    .line 42
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v4, 0x102026a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    .line 43
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 44
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 46
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    new-instance v4, Landroid/view/BrightnessPanel$1;

    invoke-direct {v4, p0}, Landroid/view/BrightnessPanel$1;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    new-instance v3, Landroid/view/BrightnessPanel$2;

    invoke-direct {v3, p0, p1}, Landroid/view/BrightnessPanel$2;-><init>(Landroid/view/BrightnessPanel;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    .line 64
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 66
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    new-instance v4, Landroid/view/BrightnessPanel$3;

    invoke-direct {v4, p0}, Landroid/view/BrightnessPanel$3;-><init>(Landroid/view/BrightnessPanel;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 72
    iget-object v3, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 73
    .local v2, window:Landroid/view/Window;
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 74
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 75
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 78
    const/16 v3, 0x7e4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 80
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    const v3, 0x40028

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->forceTimeout()V

    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/BrightnessPanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/BrightnessPanel;->onBrightnessChanged(II)V

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onBrightnessChanged(II)V
    .locals 3
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v0, 0x1

    .line 100
    if-ne p1, v0, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2}, Landroid/view/BrightnessPanel;->onShowBrightnessChanged(II)V

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/BrightnessPanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 106
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 107
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/view/BrightnessPanel;->resetTimeout()V

    .line 153
    return-void
.end method

.method protected onShowBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mSeekbarView:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 114
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 156
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 159
    return-void
.end method

.method public postBrightnessChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "brightnessLevel"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/BrightnessPanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/BrightnessPanel;->removeMessages(I)V

    .line 94
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/BrightnessPanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
