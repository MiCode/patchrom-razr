.class public Lcom/vzw/location/gpsprovider/VzwHalCriteria;
.super Landroid/location/Criteria;
.source "VzwHalCriteria.java"


# static fields
.field public static final ACCURACY_OPTIMAL:I = 0x5

.field public static final AFLT:I = 0x3

.field public static final DATA_OPTIMAL:I = 0x6

.field public static final MS_ASSISTED:I = 0x0

.field public static final MS_BASED:I = 0x1

.field public static final SPEED_OPTIMAL:I = 0x4

.field public static final STANDALONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VzwHalCriteria"


# instance fields
.field private mFixMode:I

.field private mHintNextFixArriveInSec:I

.field private mHintNextFixHorizontalAccuracy:I

.field private mHintNextFixMode:I

.field private mMaximumResponseTime:I

.field private mPreferredHorizontalAccuracy:I

.field private mPreferredVerticalAccuracy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->set()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->set()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwCriteria;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->set()V

    .line 63
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    .line 64
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 66
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    .line 68
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/gpsprovider/VzwHalCriteria;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 46
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    .line 47
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 48
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 49
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixMode:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixMode:I

    .line 50
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    .line 51
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 52
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 53
    return-void
.end method

.method private set()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    .line 75
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 76
    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 77
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixMode:I

    .line 78
    const/16 v0, 0x1e

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    .line 79
    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 80
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 81
    return-void
.end method


# virtual methods
.method public getFixMode()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    return v0
.end method

.method public getHintNextFixArriveInSec()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    return v0
.end method

.method public getHintNextFixHorizontalAccuracy()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    return v0
.end method

.method public getHintNextFixMode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixMode:I

    return v0
.end method

.method public getMaximumResponseTime()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    return v0
.end method

.method public getPreferredHorizontalAccuracy()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    return v0
.end method

.method public getPreferredVerticalAccuracy()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    return v0
.end method

.method public setFixMode(I)V
    .locals 3
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid fix mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_0
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    .line 104
    :goto_0
    const-string v0, "VzwHalCriteria"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixMode() mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFixMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 93
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    goto :goto_0

    .line 98
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mFixMode:I

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHintNextFixArriveInSec(I)V
    .locals 3
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 113
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixArriveInSec:I

    .line 117
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HintNextFixArriveInSec interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintNextFixHorizontalAccuracy(I)V
    .locals 0
    .parameter "ErrorMeter"

    .prologue
    .line 120
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixHorizontalAccuracy:I

    .line 121
    return-void
.end method

.method public setHintNextFixMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 108
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mHintNextFixMode:I

    .line 109
    return-void
.end method

.method public setMaximumResponseTime(I)V
    .locals 3
    .parameter "TimeSec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 125
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mMaximumResponseTime:I

    .line 129
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MaximumResponseTime TimeSec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreferredHorizontalAccuracy(I)V
    .locals 0
    .parameter "ErrorMeter"

    .prologue
    .line 132
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredHorizontalAccuracy:I

    .line 133
    return-void
.end method

.method public setPreferredVerticalAccuracy(I)V
    .locals 0
    .parameter "ErrorMeter"

    .prologue
    .line 136
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalCriteria;->mPreferredVerticalAccuracy:I

    .line 137
    return-void
.end method
