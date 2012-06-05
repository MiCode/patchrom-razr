.class public Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;
.super Ljava/lang/Object;
.source "NativeEncryptionSystemProperties.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NativeEncryptionSystemProperties"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    :try_start_0
    const-string v1, "NativeEncryptionSystemProperties"

    const-string v2, "Trying to load libdataencrypt_utils.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v1, "dataencrypt_utils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 21
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 22
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Could not load libdataencrypt_utils.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getApplicationsKeyTypeIndex()I
.end method

.method public static native getApplicationsStrengthIndex()I
.end method

.method public static native getCalendarIndex()I
.end method

.method public static native getContactsIndex()I
.end method

.method public static native getDeviceIndex()I
.end method

.method public static native getDeviceKeyProtectionIndex()I
.end method

.method public static native getDevicePropertyValues()[I
.end method

.method public static native getDevicePropertyValuesCount()I
.end method

.method public static native getEmailIndex()I
.end method

.method public static native getMemoryIndex()I
.end method

.method public static native getMemoryKeyTypeIndex()I
.end method

.method public static native getMemoryPropertyValues()[I
.end method

.method public static native getMemoryPropertyValuesCount()I
.end method

.method public static native setDevicePropertyValues([II)I
.end method

.method public static native setMemoryPropertyValues([I)I
.end method
