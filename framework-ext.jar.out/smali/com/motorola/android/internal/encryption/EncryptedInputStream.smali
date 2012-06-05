.class public Lcom/motorola/android/internal/encryption/EncryptedInputStream;
.super Ljavax/crypto/CipherInputStream;
.source "EncryptedInputStream.java"


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 29
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 0
    .parameter "is"
    .parameter "c"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 34
    return-void
.end method
