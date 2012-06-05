.class public Lcom/vzw/location/VzwEnLprRequest;
.super Ljava/lang/Object;
.source "VzwEnLprRequest.java"


# static fields
.field public static final APP_TYPE_ANDROID:B = 0x6t

.field private static final CLIENT_LBS_DRIVER:B = 0x3t

.field private static final DEBUG:Z = true

.field private static final FIXED_PART_LEN:S = 0x48s

.field public static final MAX_DURATION:J = 0xffffffffL

.field private static final MESSAGE_TYPE:B = 0x5t

.field public static final MIN_DURATION:J = 0x1L

.field private static final MS_ID_TYPE_IMSI:B = 0x2t

.field private static final MS_ID_TYPE_MDN:B = 0x6t

.field public static final MS_OS_TYPE_LINUX:B = 0x4t

.field private static final POS_CAPABILITY_ALL:B = 0x4t

.field private static final TAG:Ljava/lang/String; = "VzwEnLprRequest"

.field private static final VERSION:B = 0x1t

.field private static corrId:B


# instance fields
.field appId:I

.field appType:B

.field baseId:S

.field baseLat:[B

.field baseLong:[B

.field brewAppId:I

.field clientPassword:[B

.field correlationId:B

.field duration:J

.field lbsClient:B

.field lbsClientRelease:[B

.field message:Ljava/nio/ByteBuffer;

.field messageType:B

.field msIdMdn:[B

.field msIdMdnHdr:B

.field msIdMin:[B

.field msIdMinHdr:B

.field msOs:B

.field msPosCapability:B

.field msType:[B

.field nid:S

.field pQoS:B

.field sid:S

.field size:S

.field timestamp:[B

.field version:B

.field wapJavaAppId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x7f

    sput-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-short v4, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    .line 88
    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->version:B

    .line 89
    iput-byte v7, p0, Lcom/vzw/location/VzwEnLprRequest;->messageType:B

    .line 90
    iput-byte v6, p0, Lcom/vzw/location/VzwEnLprRequest;->msPosCapability:B

    .line 91
    const/4 v2, 0x6

    iput-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->appType:B

    .line 92
    iput-byte v4, p0, Lcom/vzw/location/VzwEnLprRequest;->pQoS:B

    .line 94
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    .line 95
    invoke-direct {p0}, Lcom/vzw/location/VzwEnLprRequest;->nextCorrId()B

    move-result v2

    iput-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->correlationId:B

    .line 97
    iput-byte v4, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMinHdr:B

    .line 98
    const/16 v2, 0xf

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMin:[B

    .line 100
    iput-byte v4, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdnHdr:B

    .line 101
    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdn:[B

    .line 102
    iput-short v4, p0, Lcom/vzw/location/VzwEnLprRequest;->sid:S

    .line 103
    iput-short v4, p0, Lcom/vzw/location/VzwEnLprRequest;->nid:S

    .line 104
    iput-short v4, p0, Lcom/vzw/location/VzwEnLprRequest;->baseId:S

    .line 105
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLat:[B

    .line 106
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLong:[B

    .line 107
    new-array v2, v7, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->timestamp:[B

    .line 108
    iput v4, p0, Lcom/vzw/location/VzwEnLprRequest;->appId:I

    .line 109
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->clientPassword:[B

    .line 110
    iput v4, p0, Lcom/vzw/location/VzwEnLprRequest;->brewAppId:I

    .line 111
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->wapJavaAppId:[B

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, mst:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msType:[B

    .line 114
    iput-byte v6, p0, Lcom/vzw/location/VzwEnLprRequest;->msOs:B

    .line 115
    iput-byte v5, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClient:B

    .line 116
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 117
    .local v0, lcr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClientRelease:[B

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    .line 119
    return-void
.end method

.method private declared-synchronized nextCorrId()B
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    sget-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    sput-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B

    .line 83
    :goto_0
    sget-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 80
    :cond_0
    :try_start_1
    sget-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    sput-byte v0, Lcom/vzw/location/VzwEnLprRequest;->corrId:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setBaseId(I)V
    .locals 1
    .parameter "baseId"

    .prologue
    .line 249
    if-ltz p1, :cond_0

    .line 250
    int-to-short v0, p1

    iput-short v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseId:S

    .line 252
    :cond_0
    return-void
.end method

.method private setBaseLat(I)V
    .locals 3
    .parameter "baseLat"

    .prologue
    .line 255
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLat:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLat:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 258
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLat:[B

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 260
    :cond_0
    return-void
.end method

.method private setBaseLong(I)V
    .locals 3
    .parameter "baseLong"

    .prologue
    .line 263
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLong:[B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLong:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 266
    iget-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLong:[B

    const/4 v1, 0x2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 268
    :cond_0
    return-void
.end method

.method private setNid(I)V
    .locals 1
    .parameter "nid"

    .prologue
    .line 243
    if-ltz p1, :cond_0

    .line 244
    int-to-short v0, p1

    iput-short v0, p0, Lcom/vzw/location/VzwEnLprRequest;->nid:S

    .line 246
    :cond_0
    return-void
.end method

.method private setSid(I)V
    .locals 1
    .parameter "sid"

    .prologue
    .line 237
    if-ltz p1, :cond_0

    .line 238
    int-to-short v0, p1

    iput-short v0, p0, Lcom/vzw/location/VzwEnLprRequest;->sid:S

    .line 240
    :cond_0
    return-void
.end method

.method private setTimestamp([B)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vzw/location/VzwEnLprRequest;->timestamp:[B

    .line 272
    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 6

    .prologue
    .line 122
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->clientPassword:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->wapJavaAppId:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msType:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClientRelease:[B

    array-length v2, v2

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 124
    .local v0, varLen:S
    add-int/lit8 v1, v0, 0x48

    int-to-short v1, v1

    iput-short v1, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    .line 126
    const-string v1, "VzwEnLprRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding request, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-short v1, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    .line 129
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->version:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->messageType:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    add-int/lit8 v2, v2, -0x4

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 132
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msPosCapability:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->appType:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->pQoS:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 135
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->correlationId:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMinHdr:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMin:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 139
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdnHdr:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdn:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/vzw/location/VzwEnLprRequest;->sid:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/vzw/location/VzwEnLprRequest;->nid:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-short v2, p0, Lcom/vzw/location/VzwEnLprRequest;->baseId:S

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLat:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->baseLong:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->timestamp:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/vzw/location/VzwEnLprRequest;->appId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 148
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->clientPassword:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->clientPassword:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/vzw/location/VzwEnLprRequest;->brewAppId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->wapJavaAppId:[B

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->wapJavaAppId:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msType:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msType:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->msOs:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-byte v2, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClient:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClientRelease:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClientRelease:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 160
    const-string v1, "VzwEnLprRequest"

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, "VzwEnLprRequest"

    iget-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/vzw/location/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-short v2, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    if-eq v1, v2, :cond_0

    .line 164
    const-string v1, "VzwEnLprRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/vzw/location/VzwEnLprRequest;->size:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwEnLprRequest;->message:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getCorrelationId()B
    .locals 1

    .prologue
    .line 311
    iget-byte v0, p0, Lcom/vzw/location/VzwEnLprRequest;->correlationId:B

    return v0
.end method

.method public setAppId(I)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 275
    iput p1, p0, Lcom/vzw/location/VzwEnLprRequest;->appId:I

    .line 276
    return-void
.end method

.method public setAppType(B)V
    .locals 0
    .parameter "appType"

    .prologue
    .line 173
    iput-byte p1, p0, Lcom/vzw/location/VzwEnLprRequest;->appType:B

    .line 174
    return-void
.end method

.method public setCellInfo(Landroid/telephony/cdma/CdmaCellLocation;)V
    .locals 3
    .parameter "cell"

    .prologue
    .line 227
    const-string v0, "VzwEnLprRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellInfo(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwEnLprRequest;->setSid(I)V

    .line 229
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwEnLprRequest;->setNid(I)V

    .line 230
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwEnLprRequest;->setBaseId(I)V

    .line 231
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwEnLprRequest;->setBaseLat(I)V

    .line 232
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwEnLprRequest;->setBaseLong(I)V

    .line 234
    return-void
.end method

.method public setDuration(J)V
    .locals 5
    .parameter "dur"

    .prologue
    const-wide v3, 0xffffffffL

    const-wide/16 v1, 0x1

    .line 192
    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    .line 193
    iput-wide v1, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 195
    iput-wide v3, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    goto :goto_0

    .line 197
    :cond_1
    iput-wide p1, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    goto :goto_0
.end method

.method public setDuration(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 6
    .parameter "fr"

    .prologue
    const-wide/16 v4, 0x0

    .line 177
    const-string v0, "VzwEnLprRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration(): based on fixRate, num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tbf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 181
    iput-wide v4, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    .line 188
    :goto_0
    const-string v0, "VzwEnLprRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration(): duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 183
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/vzw/location/VzwEnLprRequest;->duration:J

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwEnLprRequest;->setDuration(J)V

    goto :goto_0
.end method

.method public setLbsClient(B)V
    .locals 0
    .parameter "lbsClient"

    .prologue
    .line 302
    iput-byte p1, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClient:B

    .line 303
    return-void
.end method

.method public setLbsClientRelease(Ljava/lang/String;)V
    .locals 1
    .parameter "lbsClientRelease"

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->lbsClientRelease:[B

    .line 307
    return-void
.end method

.method public setMsIdMdn(Ljava/lang/String;)Z
    .locals 3
    .parameter "msIdMdn"

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 223
    :goto_0
    return v1

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 221
    .local v0, bytes:[B
    array-length v1, v0

    and-int/lit8 v1, v1, 0xf

    or-int/lit8 v1, v1, 0x60

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdnHdr:B

    .line 222
    iput-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMdn:[B

    .line 223
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMsIdMin(Ljava/lang/String;)Z
    .locals 3
    .parameter "msIdMin"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 209
    .local v0, bytes:[B
    array-length v1, v0

    and-int/lit8 v1, v1, 0xf

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMinHdr:B

    .line 210
    iput-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->msIdMin:[B

    .line 211
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMsOs(B)V
    .locals 0
    .parameter "msOs"

    .prologue
    .line 298
    iput-byte p1, p0, Lcom/vzw/location/VzwEnLprRequest;->msOs:B

    .line 299
    return-void
.end method

.method public setMsType(Ljava/lang/String;)V
    .locals 1
    .parameter "msType"

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/VzwEnLprRequest;->msType:[B

    .line 295
    return-void
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_0

    .line 280
    const-string v2, "VzwEnLprRequest"

    const-string v3, "setPassword(): password==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return v1

    .line 285
    :cond_0
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/vzw/location/VzwEnLprRequest;->clientPassword:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "VzwEnLprRequest"

    const-string v3, "setPassword(): UnsupportedEncodingException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
