.class public final Lcom/vzw/location/VzwGpsSatellite;
.super Ljava/lang/Object;
.source "VzwGpsSatellite.java"


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "prn"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    return v0
.end method

.method setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    .locals 1
    .parameter "sat"

    .prologue
    .line 32
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 33
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 34
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 35
    iget v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    iput v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 36
    iget-boolean v0, p1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 37
    return-void
.end method
