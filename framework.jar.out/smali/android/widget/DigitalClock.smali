.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field private static final m12:Ljava/lang/String; = "h:mm:ss aa"

.field private static final m24:Ljava/lang/String; = "k:mm:ss"


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/DigitalClock;->initClock(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/DigitalClock;->initClock(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    return-void
.end method

.method private get24HourMode()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 72
    :cond_0
    new-instance v1, Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 80
    invoke-direct {p0}, Landroid/widget/DigitalClock;->setFormat()V

    .line 81
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/widget/DigitalClock;->get24HourMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "k:mm:ss"

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "h:mm:ss aa"

    iput-object v0, p0, Landroid/widget/DigitalClock;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 86
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 103
    iget-object v0, p0, Landroid/widget/DigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DigitalClock;->mTickerStopped:Z

    .line 122
    invoke-virtual {p0}, Landroid/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/DigitalClock;->mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void
.end method
