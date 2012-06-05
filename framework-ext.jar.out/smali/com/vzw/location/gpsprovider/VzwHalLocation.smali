.class public Lcom/vzw/location/gpsprovider/VzwHalLocation;
.super Landroid/location/Location;
.source "VzwHalLocation.java"


# static fields
.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x100000

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x4

.field public static final GPS_VALID_ELLIPTICAL_ACCURACY:I = 0x40

.field public static final GPS_VALID_FIX_MODE:I = 0x4000

.field public static final GPS_VALID_HEADING:I = 0x40000

.field public static final GPS_VALID_HORIZONTAL_CONFIDENCE:I = 0x100

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x10

.field public static final GPS_VALID_LATITUDE:I = 0x1

.field public static final GPS_VALID_LONGITUDE:I = 0x2

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x8000

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x8

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x80000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x400

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x1000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x800

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x2000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x200

.field public static final GPS_VALID_SPEED:I = 0x20000

.field public static final GPS_VALID_TIME:I = 0x10000

.field public static final GPS_VALID_VERTICAL_ACCURACY:I = 0x80

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x20


# instance fields
.field private mAltWrtEllipsoid:F

.field private mAltWrtSeaLevel:D

.field private mFixMode:I

.field private mHdop:F

.field private mHorConf:F

.field private mMagVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPdop:F

.field private mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

.field private mValidFields:I

.field private mVdop:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    const-string v0, "vzw_lbs"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 44
    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 45
    iput v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    .line 46
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    .line 47
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    .line 48
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    .line 49
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    .line 50
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    .line 52
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    .line 53
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    .line 54
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    .line 55
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V
    .locals 3
    .parameter "l"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 44
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 45
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    .line 46
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    .line 47
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    .line 48
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    .line 49
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    .line 50
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    .line 52
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    .line 53
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    .line 54
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    .line 55
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    .line 67
    invoke-virtual {p0, p1}, Lcom/vzw/location/gpsprovider/VzwHalLocation;->set(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    return v0
.end method

.method public getAltitudeWrtSeaLevel()D
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    return-wide v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    return v0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    return v0
.end method

.method public getMajorAxis()F
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    return v0
.end method

.method public getMinorAxis()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    return v0
.end method

.method public getSatellitesInViewAzimuth()[F
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewAzimuth()[F

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSatellitesInViewElevation()[F
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewElevation()[F

    move-result-object v0

    .line 335
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSatellitesInViewPRNs()[I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewPRNs()[I

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSatellitesInViewSignalToNoiseRatio()[F
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesInViewSignalToNoiseRatio()[F

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSatellitesUsedPRN()[I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->getSatellitesUsedPRN()[I

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, -0x1

    return v0
.end method

.method public getValidFieldMask()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalAccuracy()F
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 92
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 93
    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    .line 94
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    .line 95
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    .line 96
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    .line 97
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    .line 98
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    .line 100
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    .line 101
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    .line 102
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    .line 103
    iput v2, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    .line 105
    return-void
.end method

.method public set(Lcom/vzw/location/gpsprovider/VzwHalLocation;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 72
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 73
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    .line 74
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    .line 75
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    .line 76
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    .line 77
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    .line 78
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    .line 79
    iget-wide v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    .line 80
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    .line 81
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    .line 82
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    .line 83
    iget v0, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    .line 85
    new-instance v0, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-direct {v0}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    .line 86
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    iget-object v1, p1, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, v1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V

    .line 87
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 2
    .parameter "altWrtEllipsoid"

    .prologue
    .line 165
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    .line 166
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 167
    return-void
.end method

.method public setAltitudeWrtSeaLevel(F)V
    .locals 2
    .parameter "altWrtSeaLevel"

    .prologue
    .line 170
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    .line 171
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 172
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .parameter "bearing"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 138
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 139
    return-void
.end method

.method public setFixMode(I)V
    .locals 1
    .parameter "fixMode"

    .prologue
    .line 142
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    .line 143
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 144
    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 1
    .parameter "horConf"

    .prologue
    .line 147
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    .line 148
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 149
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .parameter "hdop"

    .prologue
    .line 175
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    .line 176
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 177
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 120
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 121
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 126
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 127
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 2
    .parameter "magVariation"

    .prologue
    .line 190
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    .line 191
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 192
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 2
    .parameter "majorAxis"

    .prologue
    .line 152
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    .line 153
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 154
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .parameter "majorAxisAngle"

    .prologue
    .line 157
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    .line 158
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .parameter "minorAxis"

    .prologue
    .line 161
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    .line 162
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .parameter "pdop"

    .prologue
    .line 180
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    .line 181
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 182
    return-void
.end method

.method public setSatellitesInViewAzimuth([F)V
    .locals 1
    .parameter "satellitesInViewAzimuth"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewAzimuth([F)V

    .line 225
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 227
    :cond_0
    return-void
.end method

.method public setSatellitesInViewElevation([F)V
    .locals 1
    .parameter "satellitesInViewElevation"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewElevation([F)V

    .line 232
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 234
    :cond_0
    return-void
.end method

.method public setSatellitesInViewPRNs([I)V
    .locals 1
    .parameter "satellitesInViewPRNs"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewPRNs([I)V

    .line 204
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 206
    :cond_0
    return-void
.end method

.method public setSatellitesInViewSignalToNoiseRatio([F)V
    .locals 1
    .parameter "satellitesInViewSignalToNoiseRatio"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 211
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 213
    :cond_0
    return-void
.end method

.method public setSatellitesUsedPRN([I)V
    .locals 1
    .parameter "satellitesUsedPRN"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    invoke-virtual {v0, p1}, Lcom/vzw/location/gpsprovider/VzwHalSvInfo;->setSatellitesUsedPRN([I)V

    .line 218
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 220
    :cond_0
    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 199
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 132
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 133
    return-void
.end method

.method public setSvStatus(Lcom/vzw/location/gpsprovider/VzwHalSvInfo;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mSvStatus:Lcom/vzw/location/gpsprovider/VzwHalSvInfo;

    .line 109
    return-void
.end method

.method public setTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 114
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 115
    return-void
.end method

.method public setValidFieldMask(I)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 195
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 196
    return-void
.end method

.method public setVerticalAccuracy(F)V
    .locals 0
    .parameter "accuracyVertical"

    .prologue
    .line 238
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .parameter "vdop"

    .prologue
    .line 185
    iput p1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    .line 186
    iget v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwHalLocation[mValidFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mValidFields:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFixMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHorConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHorConf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMajorAxisAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMajorAxisAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinorAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtEllipsoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtEllipsoid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltWrtSeaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mAltWrtSeaLevel:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mHdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mPdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVdop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mVdop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMagVariation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/gpsprovider/VzwHalLocation;->mMagVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
