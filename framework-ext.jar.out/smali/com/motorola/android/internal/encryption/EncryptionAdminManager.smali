.class public Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
.super Ljava/lang/Object;
.source "EncryptionAdminManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EncryptionAdminManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/android/internal/encryption/IEncryptionService;)V
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "EncryptionAdminManager"

    const-string v1, "unable to get encryption system service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static getAppEncryptionProperty(Ljava/lang/String;)Z
    .locals 10
    .parameter "pkgName"

    .prologue
    const/16 v9, 0x2e

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, propValue:I
    const/4 v3, 0x0

    .line 74
    .local v3, result:Z
    const/4 v1, 0x0

    .line 76
    .local v1, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    const-string v5, "EncryptionAdminManager"

    const-string v7, "getAppEncryptionProperty pkgname is null. Returning false"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return v6

    .line 81
    :cond_0
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 82
    move-object v1, p0

    .line 91
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 92
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I

    move-result v2

    .line 93
    if-ne v2, v5, :cond_7

    move v3, v5

    .line 97
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 101
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, appid:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.mot.enc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, strVal:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 104
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .end local v0           #appid:Ljava/lang/String;
    .end local v4           #strVal:Ljava/lang/String;
    :cond_3
    move v6, v3

    .line 109
    goto :goto_0

    .line 83
    :cond_4
    const-string v7, "com.android.providers.calendar"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 84
    const-string v1, "calendar"

    goto :goto_1

    .line 85
    :cond_5
    const-string v7, "com.android.providers.contacts"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 86
    const-string v1, "contacts"

    goto :goto_1

    .line 87
    :cond_6
    const-string v7, "com.motorola.motoemail"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    const-string v1, "email"

    goto :goto_1

    :cond_7
    move v3, v6

    .line 93
    goto :goto_2
.end method

.method public static getDataProtectionEnabled()Z
    .locals 6

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, result:Z
    sget-object v0, Lcom/motorola/android/internal/encryption/EncryptionManager;->SUPPORTED_APPS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 117
    .local v4, supportedApp:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getAppEncryptionProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const/4 v3, 0x1

    .line 123
    .end local v4           #supportedApp:Ljava/lang/String;
    :cond_0
    return v3

    .line 116
    .restart local v4       #supportedApp:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/internal/encryption/EncryptionException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mot_encryption_admin"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 37
    .local v0, result:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_1

    .line 38
    :cond_0
    new-instance v1, Lcom/motorola/android/internal/encryption/EncryptionException;

    const-string v2, "Failed to create EncryptionAdminManager. Encryption service is null"

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 42
    :cond_1
    return-object v0
.end method

.method public static getKeyType()I
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    const-string v2, "app_encr_key_type"

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, retKeyType:I
    return v0
.end method


# virtual methods
.method public createDbConversionScript(Ljava/lang/String;Z)I
    .locals 1
    .parameter "appPkg"
    .parameter "encrypt"

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPasswordHash()[B
    .locals 4

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, defaultKey:[B
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_0

    .line 310
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getDefaultPasswordHash: DataEncryptService not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, 0x0

    .line 322
    :goto_0
    return-object v2

    .line 318
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getDefaultPasswordHash()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 322
    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getSavedPasswordHash: remote exception invoking remote method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strValue"

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, hashBytes:[B
    const-string v1, ""

    .line 222
    .local v1, hexBytes:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/encryption/NativeEncryptTpa;->getHashTPAPI([B)[B

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const-string v2, "EncryptionAdminManager"

    const-string v3, "Failed to get hash"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-object v1

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPasswordHash()[B
    .locals 4

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 291
    .local v1, savedKey:[B
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_0

    .line 292
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getPasswordHash: DataEncryptService not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, 0x0

    .line 303
    :goto_0
    return-object v2

    .line 299
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getSavedPasswordHash()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 303
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getSavedPasswordHash: remote exception invoking remote method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSavedPasswordHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, savedKey:[B
    const-string v0, ""

    .line 281
    .local v0, hashStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getPasswordHash()[B

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    .line 283
    invoke-static {v1}, Lcom/motorola/android/internal/encryption/EncryptionUtils;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_0

    .line 327
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getStatus: DataEncryptService not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    .line 336
    :goto_0
    return v1

    .line 330
    :cond_0
    const/4 v1, 0x0

    .line 332
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->getStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionAdminManager"

    const-string v3, "remote exception when invoking getStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAppDataEncryptionChanged(Ljava/lang/String;I)Z
    .locals 4
    .parameter "appKeyName"
    .parameter "value"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_0

    .line 341
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getStatus: DataEncryptService not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, 0x0

    .line 350
    :goto_0
    return v1

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2, p1, p2}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onAppDataEncryptionChanged(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionAdminManager"

    const-string v3, "remote exception when invoking onAppDataEncryptionChanged"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onForgotPassword()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onKeyTypeChanged(I)Z
    .locals 4
    .parameter "newKeyType"

    .prologue
    .line 354
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v2, :cond_0

    .line 355
    const-string v2, "EncryptionAdminManager"

    const-string v3, "getStatus: DataEncryptService not bound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v1, 0x0

    .line 364
    :goto_0
    return v1

    .line 358
    :cond_0
    const/4 v1, 0x0

    .line 360
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v2, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onKeyTypeChanged(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EncryptionAdminManager"

    const-string v3, "remote exception when invoking onKeyTypeChanged"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onNewPasswordSaved(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onNewPasswordSaved: DataEncryptService not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onNewPasswordSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onNewPasswordSaved: remote exception invoking remote method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPasswordReset(Ljava/lang/String;)V
    .locals 2
    .parameter "resetPassword"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "EncryptionAdminManager"

    const-string v1, "onPasswordReset: DataEncryptService not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method public onPasswordVerified(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onScreenUnlocked(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onRecoveryPasswordSaved(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_0

    .line 165
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onRecoveryPasswordSaved: DataEncryptService not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onRecoveryPasswordSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onRecoveryPasswordSaved: remote exception invoking remote method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRecoveryPasswordVerified(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "EncryptionAdminManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecoveryPasswordVerified: DataEncryptService not bound, context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onRecoveryPasswordVerified(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onScreenUnlocked: remote exception invoking remote method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScreenLocked(Z)V
    .locals 3
    .parameter "locked"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_0

    .line 59
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onScreenLocked: DataEncryptService not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onScreenLocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onScreenLocked: remote exception invoking remote method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScreenUnlocked(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v1, :cond_0

    .line 135
    const-string v1, "EncryptionAdminManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenUnlocked: DataEncryptService not bound, context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/encryption/IEncryptionService;->onPasswordVerified(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EncryptionAdminManager"

    const-string v2, "onScreenUnlocked: remote exception invoking remote method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 6
    .parameter "inPassword"

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, result:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const-string v4, "EncryptionAdminManager"

    const-string v5, "verifyPassword input password is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return v3

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->mDataEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-nez v4, :cond_1

    .line 249
    const-string v4, "EncryptionAdminManager"

    const-string v5, "verifyPassword: DataEncryptService not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getSavedPasswordHash()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, savedPasswordHash:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 261
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, inPasswordHash:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v0           #inPasswordHash:Ljava/lang/String;
    :cond_2
    move v3, v1

    .line 265
    goto :goto_0
.end method
