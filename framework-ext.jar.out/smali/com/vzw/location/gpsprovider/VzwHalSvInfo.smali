.class public Lcom/vzw/location/gpsprovider/VzwHalSvInfo;
.super Ljava/lang/Object;
.source "VzwHalSvInfo.java"


# static fields
.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x8

.field public static final GPS_VALID_SATELLITES_IN_VIEW_COUNT:I = 0x1

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x4

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x2

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_VALID_SATELLITES_WITH_ALMANAC:I = 0x40

.field public static final GPS_VALID_SATELLITES_WITH_EPHEMERIS:I = 0x20

.field private static final MAX_VISIBLES:I = 0x30

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mGetSatellitesUsedPRN:[I

.field private mSatellitesInViewAzimuth:[F

.field private mSatellitesInViewElevation:[F

.field private mSatellitesInViewPRNs:[I

.field private mSatellitesInViewSignalToNoiseRatio:[F

.field private mSatellitesWithAlmanac:[I

.field private mSatellitesWithEphemeris:[I

.field private mValidFieldMask:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewPRNs:[I

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewSignalToNoiseRatio:[F

    .line 36
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithAlmanac:[I

    .line 37
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithEphemeris:[I

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewElevation:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewAzimuth:[F

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mGetSatellitesUsedPRN:[I

    .line 41
    return-void
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x30

    return v0
.end method

.method public getSatellitesInViewAzimuth()[F
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewAzimuth:[F

    return-object v0
.end method

.method public getSatellitesInViewElevation()[F
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewElevation:[F

    return-object v0
.end method

.method public getSatellitesInViewPRNs()[I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewPRNs:[I

    return-object v0
.end method

.method public getSatellitesInViewSignalToNoiseRatio()[F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewSignalToNoiseRatio:[F

    return-object v0
.end method

.method public getSatellitesUsedPRN()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mGetSatellitesUsedPRN:[I

    return-object v0
.end method

.method public getSatellitesWithAlmanac()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithAlmanac:[I

    return-object v0
.end method

.method public getSatellitesWithEphemeris()[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithEphemeris:[I

    return-object v0
.end method

.method public getValidFieldMask()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mValidFieldMask:I

    return v0
.end method

.method public setSatellitesInViewAzimuth([F)V
    .locals 3
    .parameter "satellitesInViewAzimuth"

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewAzimuth:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public setSatellitesInViewElevation([F)V
    .locals 3
    .parameter "satellitesInViewElevation"

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewElevation:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public setSatellitesInViewPRNs([I)V
    .locals 3
    .parameter "satellitesInViewPRNs"

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewPRNs:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public setSatellitesInViewSignalToNoiseRatio([F)V
    .locals 3
    .parameter "satellitesInViewSignalToNoiseRatio"

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewSignalToNoiseRatio:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public setSatellitesUsedPRN([I)V
    .locals 3
    .parameter "satellitesUsedPRN"

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mGetSatellitesUsedPRN:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public setSatellitesWithAlmanac([I)V
    .locals 3
    .parameter "satellitesWithAlmanac"

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithAlmanac:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public setSatellitesWithEphemeris([I)V
    .locals 3
    .parameter "satellitesWithEphemeris"

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithEphemeris:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public setStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V
    .locals 1
    .parameter "svinfo"

    .prologue
    .line 44
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mValidFieldMask:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mValidFieldMask:I

    .line 45
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewPRNs:[I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewPRNs:[I

    .line 46
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewSignalToNoiseRatio:[F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewSignalToNoiseRatio:[F

    .line 47
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithAlmanac:[I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithAlmanac:[I

    .line 48
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithEphemeris:[I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesWithEphemeris:[I

    .line 49
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewElevation:[F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewElevation:[F

    .line 50
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewAzimuth:[F

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mSatellitesInViewAzimuth:[F

    .line 51
    iget-object v0, p1, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mGetSatellitesUsedPRN:[I

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mGetSatellitesUsedPRN:[I

    .line 52
    return-void
.end method

.method public setValidFieldMask(I)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 122
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->mValidFieldMask:I

    .line 123
    return-void
.end method
