.class public Lcom/vzw/location/VzwEnLprResponse;
.super Ljava/lang/Object;
.source "VzwEnLprResponse.java"


# static fields
.field public static final AUTHORIZED:B = 0x1t

.field private static final DEBUG:Z = true

.field private static final MESSAGE_TYPE:B = 0x5t

.field public static final NOT_AUTHORIZED:B = 0x0t

.field public static final REASON_UNKNOWN:B = 0x3t

.field public static final REFUSED_BY_PDE:B = 0x4t

.field public static final SERVICE_UNAVAIL:B = 0x6t

.field public static final SIZE:S = 0x1cs

.field private static final TAG:Ljava/lang/String; = "VzwEnLprResponse"

.field public static final TIMEOUT:B = 0x9t

.field private static final VERSION:B = 0x1t


# instance fields
.field authorization:B

.field correlationId:B

.field length:S

.field message:Ljava/nio/ByteBuffer;

.field messageType:B

.field pdeIp:[B

.field pdePort:S

.field posStatus:B

.field size:S

.field timestamp:[B

.field version:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->size:S

    .line 45
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->version:B

    .line 46
    iput-byte v2, p0, Lcom/vzw/location/VzwEnLprResponse;->messageType:B

    .line 47
    iput-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->length:S

    .line 48
    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->correlationId:B

    .line 49
    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->posStatus:B

    .line 50
    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->authorization:B

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vzw/location/VzwEnLprResponse;->pdeIp:[B

    .line 52
    iput-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->pdePort:S

    .line 53
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/vzw/location/VzwEnLprResponse;->timestamp:[B

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "in"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwEnLprResponse;->decode([B)V

    .line 59
    return-void
.end method


# virtual methods
.method public decode([B)V
    .locals 9
    .parameter "in"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x1c

    const/4 v4, 0x5

    .line 62
    const-string v1, "VzwEnLprResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoding response, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    array-length v1, p1

    if-eq v1, v5, :cond_0

    .line 65
    const-string v1, "VzwEnLprResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    .line 71
    const-string v1, "VzwEnLprResponse"

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v1, "VzwEnLprResponse"

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/vzw/location/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-short v5, p0, Lcom/vzw/location/VzwEnLprResponse;->size:S

    .line 75
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->version:B

    .line 76
    iget-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->version:B

    if-eq v1, v7, :cond_1

    .line 77
    const-string v1, "VzwEnLprResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/vzw/location/VzwEnLprResponse;->version:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->messageType:B

    .line 82
    iget-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->messageType:B

    if-eq v1, v4, :cond_2

    .line 83
    const-string v1, "VzwEnLprResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/vzw/location/VzwEnLprResponse;->messageType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->length:S

    .line 88
    iget-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->length:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_3

    .line 89
    const-string v1, "VzwEnLprResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/vzw/location/VzwEnLprResponse;->length:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->correlationId:B

    .line 94
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->posStatus:B

    .line 95
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprResponse;->authorization:B

    .line 96
    new-array v1, v8, [B

    iput-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->pdeIp:[B

    .line 97
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprResponse;->pdeIp:[B

    invoke-virtual {v1, v2, v6, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/vzw/location/VzwEnLprResponse;->pdePort:S

    .line 99
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 100
    .local v0, posIncl:B
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->timestamp:[B

    .line 101
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprResponse;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprResponse;->timestamp:[B

    invoke-virtual {v1, v2, v6, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method

.method public getAuthorization()B
    .locals 1

    .prologue
    .line 127
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->authorization:B

    return v0
.end method

.method public getCorrelationId()B
    .locals 1

    .prologue
    .line 119
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->correlationId:B

    return v0
.end method

.method public getMessageType()B
    .locals 1

    .prologue
    .line 111
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->messageType:B

    return v0
.end method

.method public getPdeIp()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprResponse;->pdeIp:[B

    return-object v0
.end method

.method public getPdePort()S
    .locals 1

    .prologue
    .line 135
    iget-short v0, p0, Lcom/vzw/location/VzwEnLprResponse;->pdePort:S

    return v0
.end method

.method public getPosStatus()B
    .locals 1

    .prologue
    .line 123
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->posStatus:B

    return v0
.end method

.method public getSize()S
    .locals 1

    .prologue
    .line 115
    iget-short v0, p0, Lcom/vzw/location/VzwEnLprResponse;->size:S

    return v0
.end method

.method public getTimestamp()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprResponse;->timestamp:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 107
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprResponse;->version:B

    return v0
.end method
