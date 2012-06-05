.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;
.super Ljava/lang/Object;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreegppSipPduParser"
.end annotation


# instance fields
.field public mRP_MessageReference:B

.field public mTP_DCS:B

.field public mTP_PID:B

.field public mstrRP_OriginatorAddress:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 14
    .parameter "sippdu"

    .prologue
    .line 917
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 919
    .local v1, inStream:Ljava/io/ByteArrayInputStream;
    const-wide/16 v11, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 921
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    iput-byte v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mRP_MessageReference:B

    .line 923
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 924
    .local v8, scLength:I
    const/4 v7, 0x0

    .line 925
    .local v7, scBytes:[B
    const/4 v9, 0x0

    .line 926
    .local v9, tpdu:[B
    const/4 v2, 0x0

    .line 927
    .local v2, index:I
    if-lez v8, :cond_0

    .line 928
    add-int/lit8 v11, v8, 0x1

    new-array v7, v11, [B

    .line 929
    const/4 v11, 0x0

    and-int/lit16 v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v7, v11

    .line 930
    const/4 v11, 0x1

    invoke-virtual {v1, v7, v11, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 933
    :cond_0
    const-wide/16 v11, 0x1

    invoke-virtual {v1, v11, v12}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 935
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    .line 936
    .local v10, tpduLen:I
    new-array v9, v10, [B

    .line 937
    const/4 v11, 0x0

    invoke-virtual {v1, v9, v11, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 939
    add-int/lit8 v2, v2, 0x1

    .line 940
    aget-byte v11, v9, v2

    and-int/lit16 v0, v11, 0xff

    .line 941
    .local v0, addressLength:I
    add-int/lit8 v11, v0, 0x1

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v4, v11, 0x2

    .line 942
    .local v4, lengthBytes:I
    add-int/lit8 v2, v4, 0x1

    .line 943
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v11, v9, v2

    and-int/lit16 v6, v11, 0xff

    .line 944
    .local v6, protocolIdentifier:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v9, v3

    and-int/lit16 v11, v11, 0xff

    and-int/lit8 v5, v11, 0x3

    .line 945
    .local v5, messageClass:I
    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v11, 0x0

    invoke-static {v7, v11}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->getSCAddress([BI)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mstrRP_OriginatorAddress:Ljava/lang/String;

    .line 949
    int-to-byte v11, v6

    iput-byte v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mTP_PID:B

    .line 950
    int-to-byte v11, v5

    iput-byte v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ThreegppSipPduParser;->mTP_DCS:B

    .line 951
    return-void
.end method

.method public static getSCAddress([BI)Ljava/lang/String;
    .locals 8
    .parameter "pdu"
    .parameter "offset"

    .prologue
    .line 887
    const/4 v3, 0x0

    .line 888
    .local v3, ret:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v4, v3

    .line 913
    .end local v3           #ret:Ljava/lang/String;
    .local v4, ret:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 892
    .end local v4           #ret:Ljava/lang/String;
    .restart local v3       #ret:Ljava/lang/String;
    :cond_0
    move v0, p1

    .line 895
    .local v0, cur:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cur:I
    .local v1, cur:I
    aget-byte v6, p0, v0

    and-int/lit16 v2, v6, 0xff

    .line 897
    .local v2, len:I
    if-nez v2, :cond_1

    .line 899
    const/4 v3, 0x0

    .line 911
    :goto_1
    add-int v0, v1, v2

    .end local v1           #cur:I
    .restart local v0       #cur:I
    move-object v4, v3

    .line 913
    .end local v3           #ret:Ljava/lang/String;
    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0

    .line 903
    .end local v0           #cur:I
    .end local v4           #ret:Ljava/lang/String;
    .restart local v1       #cur:I
    .restart local v3       #ret:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 905
    :catch_0
    move-exception v5

    .line 906
    .local v5, tr:Ljava/lang/RuntimeException;
    const-string v6, "ImsSMSDispatcher"

    const-string v7, "invalid SC address: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const/4 v3, 0x0

    goto :goto_1
.end method
