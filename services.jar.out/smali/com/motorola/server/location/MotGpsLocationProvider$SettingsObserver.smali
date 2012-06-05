.class final Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;Lcom/motorola/server/location/MotGpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;-><init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 378
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$000(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gps"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 382
    .local v0, isOn:Z
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->isServiceReady:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "gps"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 390
    :cond_0
    :goto_0
    monitor-exit v2

    .line 391
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$SettingsObserver;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CurrentGPSSetting"

    if-eqz v0, :cond_2

    const-string v1, "true"

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 390
    .end local v0           #isOn:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 387
    .restart local v0       #isOn:Z
    :cond_2
    :try_start_1
    const-string v1, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
