.class public final Lcom/vzw/location/VzwGpsDeviceStatus;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final HW_STATE_IDLE:I = 0x2

.field public static final HW_STATE_ON:I = 0x1

.field public static final HW_STATE_UNKNOWN:I = 0x0

.field private static final MAX_VISIBLES:I = 0x30

.field private static final NUM_SATELLITES:I = 0xff

.field public static final VALID_ALM_SV_MASK:I = 0x4

.field public static final VALID_DEV_ERROR:I = 0x20

.field public static final VALID_EPH_SV_MASK:I = 0x2

.field public static final VALID_HW_STATE:I = 0x1

.field public static final VALID_SAT_IN_VIEW_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final VALID_SAT_IN_VIEW_PRN:I = 0x8


# instance fields
.field private mHwState:I

.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field private mValidHwState:Z

.field private mValidSatInfo:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v1, 0x2

    iput v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    .line 36
    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 71
    new-instance v1, Lcom/vzw/location/VzwGpsDeviceStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsDeviceStatus$1;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    new-instance v2, Lcom/vzw/location/VzwGpsSatelliteStatus;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>(I)V

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method


# virtual methods
.method public getHwState()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    return v0
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x30

    return v0
.end method

.method public getValidFields()I
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, valid:I
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidHwState:Z

    if-eqz v1, :cond_0

    .line 144
    or-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    if-eqz v1, :cond_1

    .line 148
    or-int/lit8 v0, v0, 0x2

    .line 149
    or-int/lit8 v0, v0, 0x4

    .line 150
    or-int/lit8 v0, v0, 0x8

    .line 151
    or-int/lit8 v0, v0, 0x10

    .line 154
    :cond_1
    return v0
.end method

.method public satellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method setHwState(I)V
    .locals 0
    .parameter "hwState"

    .prologue
    .line 85
    iput p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 86
    return-void
.end method

.method declared-synchronized setStatus(I[I[FII)V
    .locals 8
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "ephemerisMask"
    .parameter "almanacMask"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v4, v4, v0

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 102
    aget v4, p2, v0

    add-int/lit8 v1, v4, -0x1

    .line 103
    .local v1, prn:I
    shl-int v2, v5, v1

    .line 104
    .local v2, prnShift:I
    iget-object v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v4, v1

    .line 106
    .local v3, satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 107
    aget v4, p3, v0

    iput v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 108
    and-int v4, p4, v2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 109
    and-int v4, p5, v2

    if-eqz v4, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    .line 108
    goto :goto_2

    :cond_2
    move v4, v6

    .line 109
    goto :goto_3

    .line 112
    .end local v1           #prn:I
    .end local v2           #prnShift:I
    .end local v3           #satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getHwState()I

    move-result v2

    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mHwState:I

    .line 125
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;->getValidFields()I

    move-result v1

    .line 126
    .local v1, valid:I
    and-int/lit8 v2, v1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mValidSatInfo:Z

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0           #i:I
    :cond_0
    return-void
.end method
