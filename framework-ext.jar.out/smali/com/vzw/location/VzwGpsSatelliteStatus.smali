.class public final Lcom/vzw/location/VzwGpsSatelliteStatus;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"


# instance fields
.field mCnr:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "prn"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCnr()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    return v0
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    .locals 1
    .parameter "sat"

    .prologue
    .line 30
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    .line 31
    iget v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 32
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 33
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 34
    return-void
.end method
