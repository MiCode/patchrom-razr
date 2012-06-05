.class public final Lcom/vzw/location/VzwGpsStatus;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsStatus$Listener;,
        Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEDOUT:I = 0x10

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field private static final MAX_VISIBLES:I = 0x30

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v1, 0xff

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatellite;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    .line 59
    new-instance v1, Lcom/vzw/location/VzwGpsStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsStatus$1;-><init>(Lcom/vzw/location/VzwGpsStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    new-instance v2, Lcom/vzw/location/VzwGpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsStatus;)[Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 234
    const/16 v0, 0x30

    return v0
.end method

.method public getSatellitesInView()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FI)V
    .locals 8
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "usedInFixMask"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 166
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v4, v4, v0

    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 171
    aget v4, p2, v0

    add-int/lit8 v1, v4, -0x1

    .line 172
    .local v1, prn:I
    shl-int v2, v5, v1

    .line 173
    .local v2, prnShift:I
    iget-object v4, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v4, v1

    .line 175
    .local v3, satellite:Lcom/vzw/location/VzwGpsSatellite;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 176
    aget v4, p3, v0

    iput v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 177
    aget v4, p4, v0

    iput v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 178
    aget v4, p5, v0

    iput v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 179
    and-int v4, p6, v2

    if-eqz v4, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    .line 179
    goto :goto_2

    .line 181
    .end local v1           #prn:I
    .end local v2           #prnShift:I
    .end local v3           #satellite:Lcom/vzw/location/VzwGpsSatellite;
    :cond_2
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized setStatus(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .parameter "ttff"

    .prologue
    .line 199
    iput p1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 200
    return-void
.end method
