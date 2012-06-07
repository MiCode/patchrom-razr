.class public Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;
.super Ljava/lang/Object;
.source "EnvironmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalAltStorageDirectory()Ljava/lang/String;
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 38
    .local v5, rtn:Ljava/io/File;
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageDirectories()[Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, allStorages:[Ljava/io/File;
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 40
    .local v2, f:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    move-object v5, v2

    .line 45
    .end local v2           #f:Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 39
    .restart local v2       #f:Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 55
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageDirectories()[Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, allStorages:[Ljava/io/File;
    const/4 v5, 0x0

    .line 58
    .local v5, rtn:Z
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 59
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    const/4 v5, 0x1

    .line 58
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v2           #f:Ljava/io/File;
    :cond_1
    return v5
.end method

.method public static isInExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 75
    if-eqz p0, :cond_0

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v5

    .line 79
    :cond_1
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageDirectories()[Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, allStorages:[Ljava/io/File;
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 81
    .local v2, f:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
