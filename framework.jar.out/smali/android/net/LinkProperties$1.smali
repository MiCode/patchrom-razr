.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 9
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    .line 409
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    .line 410
    .local v5, netProp:Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, iface:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 413
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 419
    .local v0, addressCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 420
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v0           #addressCount:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move-object v5, v7

    .line 439
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #netProp:Landroid/net/LinkProperties;
    :goto_1
    return-object v5

    .line 422
    .restart local v0       #addressCount:I
    .restart local v3       #i:I
    .restart local v5       #netProp:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 425
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 428
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 429
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_3

    .line 430
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 433
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/ProxyProperties;

    invoke-virtual {v5, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 436
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .local v1, cid:I
    invoke-virtual {v5, v1}, Landroid/net/LinkProperties;->setCid(I)V

    goto :goto_1

    .line 426
    .end local v1           #cid:I
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "size"

    .prologue
    .line 443
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
