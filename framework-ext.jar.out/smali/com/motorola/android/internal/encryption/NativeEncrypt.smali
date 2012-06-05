.class public Lcom/motorola/android/internal/encryption/NativeEncrypt;
.super Ljava/lang/Object;
.source "NativeEncrypt.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    :try_start_0
    const-string v1, "JNIDataEncrypt"

    const-string v2, "Trying to load libdataencrypt.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v1, "dataencrypt"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v1, "JNIDataEncrypt"

    const-string v2, "Load libdataencrypt.so successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
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

    const-string v3, "WARNING: Could not load libdataencrypt.so"

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
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createKeyPBKDF2(Ljava/lang/String;[BI)[B
.end method

.method public static native deInitAESMulti(J)I
.end method

.method public static native decryptData([B[BI)[B
.end method

.method public static native decryptHeader([B[BI)[B
.end method

.method public static native doAESUpdate(JI[BI[B)[B
.end method

.method public static native encryptData(I[B[BI)[B
.end method

.method public static native generateSymKey()[B
.end method

.method public static native getCreatorId([BI)I
.end method

.method public static native getEncryptedSize(I)I
.end method

.method public static native getEncryptionType([BI)I
.end method

.method public static native getHash([BII)[B
.end method

.method public static native getHeaderSize()I
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public static native initAESMulti([BI)J
.end method

.method public static native initHeader([BII[B)[B
.end method
