.class public Lcom/motorola/android/internal/encryption/NativeEncryptTpa;
.super Ljava/lang/Object;
.source "NativeEncryptTpa.java"


# static fields
.field public static CODE_ERROR:I

.field public static CODE_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    :try_start_0
    const-string v1, "JNIDataEncryptTpa"

    const-string v2, "Trying to load libdataencrypt_tpa.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v1, "dataencrypt_tpa"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v1, "JNIDataEncrypt"

    const-string v2, "Load libdataencrypt_tpa.so successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v1, 0x0

    sput v1, Lcom/motorola/android/internal/encryption/NativeEncryptTpa;->CODE_SUCCESS:I

    .line 26
    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/internal/encryption/NativeEncryptTpa;->CODE_ERROR:I

    return-void

    .line 20
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNIDataEncrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Could not load libdataencrypt_tpa.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native generatePBKDF2([B[BI)[B
.end method

.method public static native getHashTPAPI([B)[B
.end method

.method public static native getKeyData()[B
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public static native storeKeyData([B)I
.end method
