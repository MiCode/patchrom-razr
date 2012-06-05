.class final Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsDeviceStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;[Lcom/vzw/location/VzwGpsSatelliteStatus;)V
    .locals 1
    .parameter
    .parameter "satellites"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    .line 44
    iput-object p2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 45
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 53
    :goto_1
    return v1

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 4

    .prologue
    .line 57
    :cond_0
    iget v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v2

    .line 59
    .local v0, satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    iget-boolean v1, v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mValid:Z

    if-eqz v1, :cond_0

    .line 60
    return-object v0

    .line 63
    .end local v0           #satellite:Lcom/vzw/location/VzwGpsSatelliteStatus;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteIterator;->next()Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
