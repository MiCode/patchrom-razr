.class public Landroid/os/MotoEnvironment;
.super Ljava/lang/Object;
.source "MotoEnvironment.java"


# static fields
.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_BROKEN:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "deprecated!!!"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "deprecated!!!"

.field private static final TAG:Ljava/lang/String; = "MotoEnvironment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 35
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalAltStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 156
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalAltStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 165
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalAltStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExternalAltStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRemovedExternalStorage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 138
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 51
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static isInExternalStorageDirectory(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 59
    invoke-static {}, Landroid/os/MotoEnvironment;->warning()V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method static warning()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "MotoEnvironment"

    const-string v1, "android.os.MotoEnvironment is deprecated,use com.motorola.android.storage.MotoEnvironment instead!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Using deprecated API"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
