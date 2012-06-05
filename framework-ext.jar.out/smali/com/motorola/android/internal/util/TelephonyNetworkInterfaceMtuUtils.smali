.class public Lcom/motorola/android/internal/util/TelephonyNetworkInterfaceMtuUtils;
.super Ljava/lang/Object;
.source "TelephonyNetworkInterfaceMtuUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field public static final SET_MTU_ERROR_NONE:I = 0x0

.field public static final SET_MTU_FAILED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TelephonyNetworkInterfaceMtuUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMtuSize(Lcom/android/internal/telephony/ApnSetting;Landroid/content/Context;)I
    .locals 11
    .parameter "apn"
    .parameter "context"

    .prologue
    const/16 v10, 0x5dc

    .line 112
    iget v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 113
    const/4 v7, 0x0

    .line 115
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mtusize"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    if-eqz v7, :cond_0

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "mtusize"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 123
    .local v6, columnIndex:I
    if-ltz v6, :cond_0

    .line 124
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 125
    .local v9, mtuSize:I
    if-lez v9, :cond_3

    .line 127
    iput v9, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v6           #columnIndex:I
    .end local v9           #mtuSize:I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    if-eq v0, v10, :cond_2

    .line 154
    invoke-static {p0}, Lcom/motorola/android/internal/util/TelephonyNetworkInterfaceMtuUtils;->validateMtuSize(Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iput v10, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    .line 162
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    return v0

    .line 130
    .restart local v6       #columnIndex:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #mtuSize:I
    :cond_3
    const/16 v0, 0x5dc

    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v6           #columnIndex:I
    .end local v9           #mtuSize:I
    :catch_0
    move-exception v8

    .line 140
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "TelephonyNetworkInterfaceMtuUtils"

    const-string v1, "Execption occured while attempting to read mtusize from telephony.db. Setting the mtu size to default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "TelephonyNetworkInterfaceMtuUtils"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    if-eqz v7, :cond_1

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 145
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static declared-synchronized setInterfaceMtu(Ljava/lang/String;Lcom/android/internal/telephony/ApnSetting;Landroid/content/Context;)I
    .locals 10
    .parameter "interfaceName"
    .parameter "apn"
    .parameter "context"

    .prologue
    .line 63
    const-class v7, Lcom/motorola/android/internal/util/TelephonyNetworkInterfaceMtuUtils;

    monitor-enter v7

    const/4 v2, 0x0

    .line 65
    .local v2, error:I
    :try_start_0
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 69
    .local v5, service:Landroid/os/INetworkManagementService;
    invoke-static {p1, p2}, Lcom/motorola/android/internal/util/TelephonyNetworkInterfaceMtuUtils;->getMtuSize(Lcom/android/internal/telephony/ApnSetting;Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 72
    .local v3, mtuSize:I
    const/16 v6, 0x5dc

    if-eq v3, v6, :cond_0

    .line 73
    if-eqz v5, :cond_1

    .line 74
    :try_start_1
    invoke-interface {v5, p0, v3}, Landroid/os/INetworkManagementService;->setInterfaceMtuSize(Ljava/lang/String;I)Z

    move-result v4

    .line 75
    .local v4, result:Z
    if-nez v4, :cond_0

    .line 76
    const/4 v2, -0x1

    .line 77
    const-string v6, "TelephonyNetworkInterfaceMtuUtils"

    const-string v8, "Could not set the mtu size since setInterfaceMtuSize() failed to set the mtu size to the interface"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .end local v4           #result:Z
    :cond_0
    :goto_0
    monitor-exit v7

    return v2

    .line 82
    :cond_1
    const/4 v2, -0x1

    .line 83
    :try_start_2
    const-string v6, "TelephonyNetworkInterfaceMtuUtils"

    const-string v8, "Could not set the mtu size sinceInterface to NetworkManagementService is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "TelephonyNetworkInterfaceMtuUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on invoking setInterfaceMtuSize():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, -0x1

    .line 93
    goto :goto_0

    .line 90
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "TelephonyNetworkInterfaceMtuUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on invoking setInterfaceMtuSize():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    const/4 v2, -0x1

    goto :goto_0

    .line 63
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v3           #mtuSize:I
    .end local v5           #service:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static validateMtuSize(Lcom/android/internal/telephony/ApnSetting;)Z
    .locals 4
    .parameter "apn"

    .prologue
    const/16 v3, 0x2328

    .line 175
    const/4 v0, 0x0

    .line 178
    .local v0, validSize:Z
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    const-string v2, "IPV4V6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    const/16 v2, 0x240

    if-lt v1, v2, :cond_1

    .line 181
    const/4 v0, 0x1

    .line 194
    :cond_1
    :goto_0
    return v0

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    const-string v2, "IPV6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    const/16 v2, 0x500

    if-lt v1, v2, :cond_1

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method
