.class public Lcom/motorola/server/encryption/EncryptionManagementTool;
.super Ljava/lang/Object;
.source "EncryptionManagementTool.java"


# static fields
.field private static final CHANGE_PASSWORD:Ljava/lang/String; = "change_pass"

.field private static final DISABLE_PROTECTION:Ljava/lang/String; = "disable_prot"

.field private static final ENABLE_PROTECTION:Ljava/lang/String; = "enable_prot"

.field private static final MAX_ATTEMPTS:I = 0x5

.field private static final SOCKET_NAME:Ljava/lang/String; = "/data/emt/enc_mgt_socket"

.field private static final SOCKET_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EncryptionManagementTool"

.field private static final UNLOCK_DEVICE:Ljava/lang/String; = "unlock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePassword(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 38
    const-string v0, "change_pass"

    invoke-static {v0, p0}, Lcom/motorola/server/encryption/EncryptionManagementTool;->sendCommandWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static enableProtection(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    const-string v0, "enable_prot"

    .line 34
    .local v0, command:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/motorola/server/encryption/EncryptionManagementTool;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 33
    .end local v0           #command:Ljava/lang/String;
    :cond_0
    const-string v0, "disable_prot"

    goto :goto_0
.end method

.method private static sendCommand(Ljava/lang/String;)Z
    .locals 13
    .parameter "command"

    .prologue
    const/4 v12, 0x5

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v9, "sys.mot.encrypt.pass.prot"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, attempts:I
    const/4 v6, 0x0

    .line 62
    .local v6, sent:Z
    :goto_0
    if-ge v1, v12, :cond_2

    if-nez v6, :cond_2

    .line 64
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v7, 0x0

    .line 69
    .local v7, socket:Landroid/net/LocalSocket;
    const/4 v5, 0x0

    .line 70
    .local v5, outputStream:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 73
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v7           #socket:Landroid/net/LocalSocket;
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_2
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "/data/emt/enc_mgt_socket"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 77
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 78
    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 80
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 81
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    .line 85
    const/4 v9, 0x5

    new-array v2, v9, [B

    .line 86
    .local v2, buffer:[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 88
    const/4 v6, 0x1

    .line 92
    if-eqz v5, :cond_0

    .line 94
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 97
    :goto_1
    const/4 v5, 0x0

    .line 99
    :cond_0
    if-eqz v8, :cond_6

    .line 101
    :try_start_4
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 104
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v2           #buffer:[B
    .end local v8           #socket:Landroid/net/LocalSocket;
    :goto_2
    const/4 v7, 0x0

    .line 107
    .restart local v7       #socket:Landroid/net/LocalSocket;
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_0

    .line 65
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .end local v7           #socket:Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 109
    :cond_2
    return v6

    .line 89
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    .restart local v7       #socket:Landroid/net/LocalSocket;
    :catch_1
    move-exception v3

    .line 90
    .local v3, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v9, "EncryptionManagementTool"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to send a command: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    if-eqz v5, :cond_3

    .line 94
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 97
    :goto_5
    const/4 v5, 0x0

    .line 99
    :cond_3
    if-eqz v7, :cond_1

    .line 101
    :try_start_7
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 102
    :catch_2
    move-exception v9

    goto :goto_2

    .line 92
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v5, :cond_4

    .line 94
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 97
    :goto_7
    const/4 v5, 0x0

    .line 99
    :cond_4
    if-eqz v7, :cond_5

    .line 101
    :try_start_9
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 104
    :goto_8
    const/4 v7, 0x0

    .line 92
    :cond_5
    throw v9

    .line 95
    :catch_3
    move-exception v10

    goto :goto_7

    .line 102
    :catch_4
    move-exception v10

    goto :goto_8

    .line 95
    .restart local v3       #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_5

    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v2       #buffer:[B
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_6
    move-exception v9

    goto :goto_1

    .line 102
    :catch_7
    move-exception v9

    goto :goto_2

    .line 92
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v2           #buffer:[B
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v7       #socket:Landroid/net/LocalSocket;
    goto :goto_6

    .line 89
    .end local v7           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_8
    move-exception v3

    move-object v7, v8

    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v7       #socket:Landroid/net/LocalSocket;
    goto :goto_4

    .end local v7           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v2       #buffer:[B
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :cond_6
    move-object v7, v8

    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v7       #socket:Landroid/net/LocalSocket;
    goto :goto_3
.end method

.method protected static sendCommandWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .parameter "password"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/server/encryption/EncryptionManagementTool;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static unlockDevice(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 42
    const-string v0, "unlock"

    invoke-static {v0, p0}, Lcom/motorola/server/encryption/EncryptionManagementTool;->sendCommandWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
