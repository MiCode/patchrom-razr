.class public final Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;
.super Ljava/lang/Object;
.source "XMPSchemaRegistryJniImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPSchemaRegistry;
.implements Lcom/motorola/android/xmp/XMPConst;


# static fields
.field private static final TAG:Ljava/lang/String; = "XMPSchemaRegistryJniImpl"


# instance fields
.field private exceptionNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    :try_start_0
    const-string v1, "Xmp_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 152
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 154
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "XMPSchemaRegistryJniImpl"

    const-string v2, "xmp_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    .line 45
    return-void
.end method

.method private native deleteNamespaceNat(Ljava/lang/String;)V
.end method

.method private native getNamespacePrefixNat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getNamespaceURINat(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native registerNamespaceNat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public declared-synchronized deleteNamespace(Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, prefixToDelete:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    .line 89
    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->deleteNamespaceNat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    .end local v0           #prefixToDelete:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "namespaceURI"

    .prologue
    .line 103
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v0

    .line 107
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    .line 108
    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->getNamespacePrefixNat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 110
    .local v0, prefix:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0           #prefix:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "namespacePrefix"

    .prologue
    .line 120
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    monitor-exit p0

    return-object v0

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    .line 130
    invoke-direct {p0, p1}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->getNamespaceURINat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 132
    .local v0, nsUri:Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0           #nsUri:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "namespaceURI"
    .parameter "suggestedPrefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3a

    .line 58
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPrefix(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "The prefix is a bad XML name"

    const/16 v3, 0xc9

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 72
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->registerNamespaceNat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, registeredPrefix:Ljava/lang/String;
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPSchemaRegistryJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-object v0
.end method
