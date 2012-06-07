.class public Lcom/motorola/Camera/LocUtility;
.super Ljava/lang/Object;
.source "LocUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/LocUtility$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoLocManager"


# instance fields
.field private areReceiversInitiated:Z

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mContext:Landroid/content/Context;

.field private mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 4
    .parameter "tx"
    .parameter "lm"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 27
    iput-boolean v3, p0, Lcom/motorola/Camera/LocUtility;->areReceiversInitiated:Z

    .line 30
    iput-object p1, p0, Lcom/motorola/Camera/LocUtility;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    .line 32
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/Camera/LocUtility$LocationListener;

    new-instance v1, Lcom/motorola/Camera/LocUtility$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/motorola/Camera/LocUtility$LocationListener;-><init>(Lcom/motorola/Camera/LocUtility;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/motorola/Camera/LocUtility$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/motorola/Camera/LocUtility$LocationListener;-><init>(Lcom/motorola/Camera/LocUtility;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/LocUtility;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/LocUtility;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/LocUtility;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/motorola/Camera/LocUtility;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 41
    return-void
.end method

.method public getAddressByLoc(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 11
    .parameter "tx"
    .parameter "newLocation"

    .prologue
    .line 252
    const/4 v9, 0x0

    .line 253
    .local v9, addressText:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 254
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 288
    :goto_0
    return-object v2

    .line 255
    :cond_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, geocoder:Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 259
    .local v7, a:Landroid/location/Address;
    if-eqz v1, :cond_2

    .line 260
    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 261
    .local v8, address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 262
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/location/Address;

    move-object v7, v0

    .line 263
    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    .line 270
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 271
    if-eqz v9, :cond_5

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 287
    .end local v1           #geocoder:Landroid/location/Geocoder;
    .end local v7           #a:Landroid/location/Address;
    .end local v8           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_2
    :goto_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoLocManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddressByLoc: addressText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v9

    .line 288
    goto :goto_0

    .line 266
    .restart local v1       #geocoder:Landroid/location/Geocoder;
    .restart local v7       #a:Landroid/location/Address;
    .restart local v8       #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v7}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 274
    :cond_5
    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2

    .line 280
    .end local v8           #address:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v10

    .line 281
    .local v10, e:Ljava/io/IOException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 282
    const-string v2, "MotoLocManager"

    const-string v3, "getAddressByLoc: IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 6

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    .local v1, l:Landroid/location/Location;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/motorola/Camera/LocUtility$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 242
    const-string v2, "MotoLocManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================ inside LocUtility.getCurrentLocation, location listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v1, :cond_1

    .line 244
    const-string v2, "MotoLocManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================ inside LocUtility.getCurrentLocation, lat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", long="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-object v1

    .line 240
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startReceivingLocationUpdates(Landroid/os/Handler;)V
    .locals 11
    .parameter "hdl"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xf

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 156
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoLocManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/LocUtility;->areReceiversInitiated:Z

    if-eqz v0, :cond_2

    .line 159
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "MotoLocManager"

    const-string v1, " LocationReceivers are already initiated, so returning...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iput-object p1, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 165
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 169
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoLocManager"

    const-string v1, "Both providers are disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSearchingLoc(I)V

    .line 171
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    :try_start_0
    const-string v0, "MotoLocManager"

    const-string v1, "=============== Register NETWORK_PROVIDER location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    :try_start_1
    const-string v0, "MotoLocManager"

    const-string v1, "=============== Register GPS_PROVIDER location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 208
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoLocManager"

    const-string v1, "Atleast one provider are enabled, set status to searching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSearchingLoc(I)V

    .line 210
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_8
    iput-boolean v8, p0, Lcom/motorola/Camera/LocUtility;->areReceiversInitiated:Z

    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v7

    .line 181
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== Error registering NETWORK_PROVIDER location listener, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "MotoLocManager"

    const-string v1, "security fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .line 185
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== Error registering NETWORK_PROVIDER location listener, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 187
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocUtility:startReceivingLocationUpdates:provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 197
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 198
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== Error registering GPS_PROVIDER location listener, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "MotoLocManager"

    const-string v1, "security fail to request location update, ignore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 201
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 202
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=============== Error registering GPS_PROVIDER location listener, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 204
    const-string v0, "MotoLocManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocUtility:startReceivingLocationUpdates:provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public stopReceivingLocationUpdates()V
    .locals 3

    .prologue
    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;

    .line 219
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoLocManager"

    const-string v2, "stopReceivingLocationUpdates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/LocUtility;->areReceiversInitiated:Z

    .line 221
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 225
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/motorola/Camera/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/motorola/Camera/LocUtility$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->reset()V

    .line 227
    iget-object v1, p0, Lcom/motorola/Camera/LocUtility;->mLocationListeners:[Lcom/motorola/Camera/LocUtility$LocationListener;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/motorola/Camera/LocUtility$LocationListener;->validateTheCurrentLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0           #i:I
    :cond_2
    return-void

    .line 229
    .restart local v0       #i:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
