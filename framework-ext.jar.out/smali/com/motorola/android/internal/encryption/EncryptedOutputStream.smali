.class public Lcom/motorola/android/internal/encryption/EncryptedOutputStream;
.super Ljavax/crypto/CipherOutputStream;
.source "EncryptedOutputStream.java"


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 27
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 0
    .parameter "os"
    .parameter "c"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 31
    return-void
.end method
