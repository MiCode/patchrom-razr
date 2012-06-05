.class public final Lcom/motorola/server/LocationProxyService;
.super Lcom/motorola/android/locationproxy/ILocationProxy$Stub;
.source "LocationProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/server/LocationProxyService$1;,
        Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final MTLR_PERMISSION_DENIED:I = 0x0

.field private static final MTLR_PERMISSION_GRANTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationProxyService"


# instance fields
.field private mAgpsNetworkManager:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/motorola/android/locationproxy/IMtlrListener;

.field private mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

.field private mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

.field private mSuplDataService:Lcom/motorola/android/locationproxy/SuplDataService;

.field private mWapPushReceiver:Lcom/motorola/android/locationproxy/SuplWapPushReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/ILocationProxy$Stub;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mWapPushReceiver:Lcom/motorola/android/locationproxy/SuplWapPushReceiver;

    .line 55
    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplDataService:Lcom/motorola/android/locationproxy/SuplDataService;

    .line 56
    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    .line 57
    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    .line 58
    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;

    .line 69
    iput-object p1, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "LocationProxyService"

    invoke-direct {v0, v2, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    const-string v1, "LocationProxyService"

    const-string v2, "Constructed LocationProxyService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private _getSuplServer(Z)Ljava/lang/String;
    .locals 5
    .parameter "defaultSupl"

    .prologue
    .line 106
    const-string v3, "LocationProxyService"

    const-string v4, "Enter: _getSuplServer()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, fqdn:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->checkPermission()V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->getDefaultConfigFQDN()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 122
    :goto_0
    const-string v3, "LocationProxyService"

    const-string v4, "OK: Leave _getSuplServer()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v1

    .line 114
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->getUserConfigFQDN()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, se:Ljava/lang/SecurityException;
    const-string v3, "LocationProxyService"

    const-string v4, "got SecurityException!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    throw v2

    .line 119
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationProxyService"

    const-string v4, "got Exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/server/LocationProxyService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/server/LocationProxyService;->sendMtlrBroadcast(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/server/LocationProxyService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/server/LocationProxyService;->sendMtlrBroadcast2(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/server/LocationProxyService;)Lcom/motorola/android/locationproxy/IMtlrListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;

    return-object v0
.end method

.method private checkPermission()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "LocationProxyService"

    const-string v1, "*** required permisson: ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method private sendMtlrBroadcast(Landroid/os/Message;)V
    .locals 11
    .parameter "mtlrMsg"

    .prologue
    .line 242
    const-string v8, "LocationProxyService"

    const-string v9, "Enter sendMtlrBroadcast"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 244
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 245
    .local v3, data:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v6, v3, v8

    check-cast v6, Ljava/lang/Integer;

    .line 246
    .local v6, mtlrId:Ljava/lang/Integer;
    const/4 v8, 0x1

    aget-object v7, v3, v8

    check-cast v7, Ljava/lang/Integer;

    .line 247
    .local v7, notificationType:Ljava/lang/Integer;
    const/4 v8, 0x2

    aget-object v5, v3, v8

    check-cast v5, Ljava/lang/Integer;

    .line 248
    .local v5, locationType:Ljava/lang/Integer;
    const/4 v8, 0x3

    aget-object v2, v3, v8

    check-cast v2, Ljava/lang/String;

    .line 249
    .local v2, clientName:Ljava/lang/String;
    const/4 v8, 0x4

    aget-object v0, v3, v8

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, address:Ljava/lang/String;
    const-string v8, "LocationProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mtlrId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",notificationType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",locationType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",clientName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",address="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.android.locationproxy.MTLR_RECEIVED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "mtlrId"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v8, "notificationType"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v8, "locationType"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v8, "clientName"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v8, "clientAddress"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v8, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 267
    const-string v8, "LocationProxyService"

    const-string v9, "Leave sendMtlrBroadcast"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method private sendMtlrBroadcast2(Landroid/os/Message;)V
    .locals 11
    .parameter "mtlrMsg"

    .prologue
    .line 271
    const-string v8, "LocationProxyService"

    const-string v9, "Enter sendMtlrBroadcast2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 273
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, [Ljava/lang/Object;

    .line 275
    .local v3, data:[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v6, v3, v8

    check-cast v6, Ljava/lang/Integer;

    .line 276
    .local v6, mtlrId:Ljava/lang/Integer;
    const/4 v8, 0x1

    aget-object v7, v3, v8

    check-cast v7, Ljava/lang/Integer;

    .line 277
    .local v7, notificationType:Ljava/lang/Integer;
    const/4 v8, 0x2

    aget-object v5, v3, v8

    check-cast v5, Ljava/lang/Integer;

    .line 278
    .local v5, locationType:Ljava/lang/Integer;
    const/4 v8, 0x5

    aget-object v2, v3, v8

    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, clientName:Ljava/lang/String;
    const/4 v8, 0x7

    aget-object v0, v3, v8

    check-cast v0, Ljava/lang/String;

    .line 281
    .local v0, address:Ljava/lang/String;
    const-string v8, "LocationProxyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mtlrId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",notificationType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",locationType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",clientName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",address="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.motorola.android.locationproxy.MTLR_RECEIVED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "mtlrId"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v8, "notificationType"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v8, "locationType"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v8, "clientName"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v8, "clientAddress"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v8, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 296
    const-string v8, "LocationProxyService"

    const-string v9, "Leave sendMtlrBroadcast2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method private syncHslpAddress()V
    .locals 6

    .prologue
    .line 347
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 348
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "hslp_address"

    invoke-static {v0, v3}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, dbHslpAddr:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3}, Lcom/motorola/android/locationproxy/ISuplCommands;->getUserConfigFQDN()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, engineHslpAddr:Ljava/lang/String;
    const-string v3, "LocationProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncHslpAddress:dbHslpAddr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";engineHslpAddr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const-string v3, "hslp_address"

    invoke-static {v0, v3, v2}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultSuplServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    :try_start_0
    const-string v2, "LocationProxyService"

    const-string v3, "getDefaultSuplServer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/server/LocationProxyService;->_getSuplServer(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 98
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationProxyService"

    const-string v3, "getSuplServer exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuplServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    :try_start_0
    const-string v2, "LocationProxyService"

    const-string v3, "getSuplServer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/motorola/server/LocationProxyService;->_getSuplServer(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 86
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationProxyService"

    const-string v3, "getSuplServer exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerMtlrListener(Lcom/motorola/android/locationproxy/IMtlrListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->checkPermission()V

    .line 180
    iput-object p1, p0, Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v1, 0x1

    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, se:Ljava/lang/SecurityException;
    throw v0
.end method

.method public resetSuplServer()Z
    .locals 6

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, ret:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/server/LocationProxyService;->getDefaultSuplServer()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, defaultSupl:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Lcom/motorola/server/LocationProxyService;->setSuplServer(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 154
    .end local v0           #defaultSupl:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, se:Ljava/lang/SecurityException;
    throw v3

    .line 151
    .end local v3           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LocationProxyService"

    const-string v5, "resetSuplServer got exception:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public responseMtlr(ZI)Z
    .locals 5
    .parameter "allowedOrNot"
    .parameter "reqID"

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->checkPermission()V

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, responseType:I
    if-eqz p1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3, p2, v1}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendLocationRequestResponse(II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    const/4 v3, 0x1

    .end local v1           #responseType:I
    :goto_1
    return v3

    .line 165
    .restart local v1       #responseType:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    .end local v1           #responseType:I
    :catch_0
    move-exception v2

    .line 169
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 170
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationProxyService"

    const-string v4, "responseMtlr got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 309
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 311
    new-instance v2, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    invoke-direct {v2, p0, v5}, Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;-><init>(Lcom/motorola/server/LocationProxyService;Lcom/motorola/server/LocationProxyService$1;)V

    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    .line 314
    new-instance v2, Lcom/motorola/android/locationproxy/Supl;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/android/locationproxy/Supl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    .line 316
    new-instance v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mAgpsNetworkManager:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    .line 319
    new-instance v2, Lcom/motorola/android/locationproxy/SuplDataService;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-direct {v2, v3}, Lcom/motorola/android/locationproxy/SuplDataService;-><init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V

    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplDataService:Lcom/motorola/android/locationproxy/SuplDataService;

    .line 322
    new-instance v2, Lcom/motorola/android/locationproxy/SuplWapPushReceiver;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-direct {v2, v3}, Lcom/motorola/android/locationproxy/SuplWapPushReceiver;-><init>(Lcom/motorola/android/locationproxy/ISuplCommands;)V

    iput-object v2, p0, Lcom/motorola/server/LocationProxyService;->mWapPushReceiver:Lcom/motorola/android/locationproxy/SuplWapPushReceiver;

    .line 324
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v1, f:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    :try_start_0
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/motorola/server/LocationProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mWapPushReceiver:Lcom/motorola/android/locationproxy/SuplWapPushReceiver;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    const/16 v4, 0x10

    invoke-interface {v2, v3, v4, v5}, Lcom/motorola/android/locationproxy/ISuplCommands;->registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    const/16 v4, 0x20

    invoke-interface {v2, v3, v4, v5}, Lcom/motorola/android/locationproxy/ISuplCommands;->registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v2, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mProxyHandler:Lcom/motorola/server/LocationProxyService$ProxyWorkerHandler;

    const/16 v4, 0x40

    invoke-interface {v2, v3, v4, v5}, Lcom/motorola/android/locationproxy/ISuplCommands;->registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isCarrierSetingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->syncHslpAddress()V

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 344
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationProxyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSuplServer(Ljava/lang/String;)Z
    .locals 6
    .parameter "suplServer"

    .prologue
    .line 127
    const-string v3, "LocationProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter setSuplServer():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->checkPermission()V

    .line 131
    iget-object v3, p0, Lcom/motorola/server/LocationProxyService;->mSuplCommands:Lcom/motorola/android/locationproxy/ISuplCommands;

    invoke-interface {v3, p1}, Lcom/motorola/android/locationproxy/ISuplCommands;->setUserConfigFQDN(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 138
    :goto_0
    const-string v3, "LocationProxyService"

    const-string v4, "OK: Leave setSuplServer()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 134
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationProxyService"

    const-string v4, "setSuplServer got Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterMtlrListener()Z
    .locals 2

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/server/LocationProxyService;->checkPermission()V

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/server/LocationProxyService;->mListener:Lcom/motorola/android/locationproxy/IMtlrListener;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v1, 0x1

    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, se:Ljava/lang/SecurityException;
    throw v0
.end method
