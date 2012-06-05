.class public Lcom/motorola/android/internal/util/ApplicationInfoUtils;
.super Ljava/lang/Object;
.source "ApplicationInfoUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ApplicationInfoUtils"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "pkgName1"
    .parameter "pkgName2"

    .prologue
    const/4 v8, 0x0

    .line 80
    const/4 v7, 0x0

    .line 84
    .local v7, signatureMatch:Z
    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 99
    .local v6, permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    if-nez v6, :cond_1

    .line 101
    :cond_0
    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Packageinfo not found"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v8

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 96
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #permissionPackagePkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 106
    .local v0, callingAppSignatures:[Landroid/content/pm/Signature;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 108
    .local v5, permissionAppSignatures:[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, v0

    if-ge v3, v9, :cond_4

    if-nez v7, :cond_4

    .line 109
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v9, v5

    if-ge v4, v9, :cond_2

    .line 110
    aget-object v9, v0, v3

    aget-object v10, v5, v4

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    const/4 v7, 0x1

    .line 108
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    .end local v4           #j:I
    :cond_4
    if-eqz v7, :cond_5

    .line 117
    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Signature Match"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v8, 0x1

    goto :goto_0

    .line 120
    :cond_5
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "ApplicationInfoUtils Signature Mismatch"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    .end local v0           #callingAppSignatures:[Landroid/content/pm/Signature;
    .end local v3           #i:I
    .end local v5           #permissionAppSignatures:[Landroid/content/pm/Signature;
    :catch_2
    move-exception v2

    .line 125
    .local v2, e:Ljava/lang/SecurityException;
    const-string v9, "ApplicationInfoUtils"

    const-string v10, "CompareAnySignature, Signature Mismatch"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkApnAccessPermissions(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "pid"
    .parameter "uid"
    .parameter "permissionPackage"
    .parameter "metadata"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getFirstPackageNamefromPID(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, callingPackageName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 224
    .local v4, signatureMatch:Z
    if-eqz v4, :cond_2

    .line 225
    const/4 v2, 0x1

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->isSystemApp(I)Z

    move-result v1

    .line 229
    .local v1, isSystemApp:Z
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, pkgListforUid:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p0, v3, p4}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 235
    .local v2, metadataFound:Z
    goto :goto_0
.end method

.method public checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "pkgNames"
    .parameter "metadata"

    .prologue
    const/4 v4, 0x0

    .line 166
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 168
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, p1, v3

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 170
    .local v0, appi:Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 171
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const-string v5, "ApplicationInfoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Metadata for Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " matches"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v4, 0x1

    .line 184
    .end local v0           #appi:Landroid/content/pm/ApplicationInfo;
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_1
    return v4

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ApplicationInfoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #appi:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v0           #appi:Landroid/content/pm/ApplicationInfo;
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v5, "ApplicationInfoUtils"

    const-string v6, "Metadata Mismatch"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFirstPackageNamefromPID(I)Ljava/lang/String;
    .locals 9
    .parameter "pid"

    .prologue
    .line 53
    const-string v1, ""

    .line 55
    .local v1, callingPackageName:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 57
    .local v0, actvityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 58
    .local v5, processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .line 59
    .local v4, pidFound:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 61
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_1

    .line 62
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #actvityManager:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #pidFound:Z
    .end local v5           #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_1
    const-string v6, "ApplicationInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling Package Name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v1

    .line 59
    .restart local v0       #actvityManager:Landroid/app/ActivityManager;
    .restart local v3       #i:I
    .restart local v4       #pidFound:Z
    .restart local v5       #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v0           #actvityManager:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #pidFound:Z
    .end local v5           #processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPackagesforUid(I)[Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ApplicationInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages for corresponding Uid- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemApp(I)Z
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, preLoadedSystemApp:Z
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, callingPackageNames:[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 145
    .local v0, callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 147
    const/4 v3, 0x1

    .line 155
    :cond_0
    const-string v4, "ApplicationInfoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Preloaded App? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 156
    .end local v0           #callingApplicationPkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 150
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ApplicationInfoUtils"

    const-string v6, "Package Name for corresponding Uid Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
