.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .locals 2
    .parameter "method"
    .parameter "host"
    .parameter "proxyHost"
    .parameter "path"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 74
    iput v1, p0, Landroid/net/http/Request;->mFailCount:I

    .line 78
    iput v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 115
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 116
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 117
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 118
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 120
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    .line 122
    if-nez p5, :cond_1

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 134
    :cond_0
    :goto_0
    const-string v0, "Host"

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    .line 141
    return-void

    .line 125
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 130
    if-eqz p5, :cond_0

    .line 131
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    goto :goto_0
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .locals 3
    .parameter "request"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 569
    const-string v1, "HEAD"

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc8

    if-lt p1, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_0

    const/16 v1, 0x130

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getReasonPhraseString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "statusCode"

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    .line 217
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 247
    const v0, 0x10405df

    .line 250
    .local v0, reasonResID:I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 219
    .end local v0           #reasonResID:I
    :sswitch_0
    const v0, 0x10405c3

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 220
    .end local v0           #reasonResID:I
    :sswitch_1
    const v0, 0x10405c4

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 221
    .end local v0           #reasonResID:I
    :sswitch_2
    const v0, 0x10405c5

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 222
    .end local v0           #reasonResID:I
    :sswitch_3
    const v0, 0x10405c6

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 223
    .end local v0           #reasonResID:I
    :sswitch_4
    const v0, 0x10405c7

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 224
    .end local v0           #reasonResID:I
    :sswitch_5
    const v0, 0x10405c8

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 225
    .end local v0           #reasonResID:I
    :sswitch_6
    const v0, 0x10405c9

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 226
    .end local v0           #reasonResID:I
    :sswitch_7
    const v0, 0x10405ca

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 227
    .end local v0           #reasonResID:I
    :sswitch_8
    const v0, 0x10405cb

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 228
    .end local v0           #reasonResID:I
    :sswitch_9
    const v0, 0x10405cc

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 229
    .end local v0           #reasonResID:I
    :sswitch_a
    const v0, 0x10405cd

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 230
    .end local v0           #reasonResID:I
    :sswitch_b
    const v0, 0x10405ce

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 231
    .end local v0           #reasonResID:I
    :sswitch_c
    const v0, 0x10405cf

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 232
    .end local v0           #reasonResID:I
    :sswitch_d
    const v0, 0x10405d0

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 233
    .end local v0           #reasonResID:I
    :sswitch_e
    const v0, 0x10405d1

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 234
    .end local v0           #reasonResID:I
    :sswitch_f
    const v0, 0x10405d2

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 235
    .end local v0           #reasonResID:I
    :sswitch_10
    const v0, 0x10405d3

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 236
    .end local v0           #reasonResID:I
    :sswitch_11
    const v0, 0x10405d4

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 237
    .end local v0           #reasonResID:I
    :sswitch_12
    const v0, 0x10405d5

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 238
    .end local v0           #reasonResID:I
    :sswitch_13
    const v0, 0x10405d6

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 239
    .end local v0           #reasonResID:I
    :sswitch_14
    const v0, 0x10405d7

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 240
    .end local v0           #reasonResID:I
    :sswitch_15
    const v0, 0x10405d8

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 241
    .end local v0           #reasonResID:I
    :sswitch_16
    const v0, 0x10405d9

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 242
    .end local v0           #reasonResID:I
    :sswitch_17
    const v0, 0x10405da

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 243
    .end local v0           #reasonResID:I
    :sswitch_18
    const v0, 0x10405db

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 244
    .end local v0           #reasonResID:I
    :sswitch_19
    const v0, 0x10405dc

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 245
    .end local v0           #reasonResID:I
    :sswitch_1a
    const v0, 0x10405dd

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 246
    .end local v0           #reasonResID:I
    :sswitch_1b
    const v0, 0x10405de

    .restart local v0       #reasonResID:I
    goto :goto_1

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x195 -> :sswitch_4
        0x196 -> :sswitch_5
        0x198 -> :sswitch_6
        0x199 -> :sswitch_7
        0x19a -> :sswitch_8
        0x19b -> :sswitch_9
        0x19c -> :sswitch_a
        0x19d -> :sswitch_b
        0x19e -> :sswitch_c
        0x19f -> :sswitch_d
        0x1a0 -> :sswitch_e
        0x1a1 -> :sswitch_f
        0x1a3 -> :sswitch_10
        0x1a4 -> :sswitch_11
        0x1a6 -> :sswitch_12
        0x1a7 -> :sswitch_13
        0x1a8 -> :sswitch_14
        0x1f4 -> :sswitch_15
        0x1f5 -> :sswitch_16
        0x1f6 -> :sswitch_17
        0x1f7 -> :sswitch_18
        0x1f8 -> :sswitch_19
        0x1f9 -> :sswitch_1a
        0x1fb -> :sswitch_1b
    .end sparse-switch
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "bodyProvider"
    .parameter "bodyLength"

    .prologue
    .line 586
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 593
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 595
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-string v0, "Null http header name"

    .line 175
    .local v0, damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local v0           #damage:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or empty value for header \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0       #damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0           #damage:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method addHeaders(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 201
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 465
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 469
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method complete()V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 550
    monitor-exit v1

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method error(II)V
    .locals 2
    .parameter "errorId"
    .parameter "resourceId"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    iget-object v1, v1, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 618
    return-void
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 475
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, myScheme:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 479
    .local v0, myPort:I
    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 481
    :cond_1
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 483
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 492
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 2
    .parameter "proceed"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    check-cast v1, Landroid/net/http/HttpsConnection;

    move-object v0, v1

    check-cast v0, Landroid/net/http/HttpsConnection;

    .line 604
    .local v0, connection:Landroid/net/http/HttpsConnection;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 30
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 450
    :goto_0
    return-void

    .line 300
    :cond_0
    const/16 v22, 0x0

    .line 301
    .local v22, statusLine:Lorg/apache/http/StatusLine;
    const/4 v13, 0x0

    .line 302
    .local v13, hasBody:Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 303
    const/16 v21, 0x0

    .line 305
    .local v21, statusCode:I
    new-instance v14, Landroid/net/http/Headers;

    invoke-direct {v14}, Landroid/net/http/Headers;-><init>()V

    .line 307
    .local v14, header:Landroid/net/http/Headers;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v22

    .line 308
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 309
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 314
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v24

    .line 315
    .local v24, v:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v26

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v27

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v21

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 318
    const/4 v11, 0x0

    .line 319
    .local v11, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v13

    .line 321
    if-eqz v13, :cond_2

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 326
    :cond_2
    const-string v25, "bytes"

    invoke-virtual {v14}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    .line 329
    .local v23, supportPartialContent:Z
    if-eqz v11, :cond_5

    .line 330
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 333
    .local v15, is:Ljava/io/InputStream;
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    .line 334
    .local v6, contentEncoding:Lorg/apache/http/Header;
    const/16 v18, 0x0

    .line 335
    .local v18, nis:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 336
    .local v5, buf:[B
    const/4 v9, 0x0

    .line 338
    .local v9, count:I
    if-eqz v6, :cond_6

    :try_start_0
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    const-string v26, "gzip"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 340
    new-instance v19, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v18           #nis:Ljava/io/InputStream;
    .local v19, nis:Ljava/io/InputStream;
    move-object/from16 v18, v19

    .line 347
    .end local v19           #nis:Ljava/io/InputStream;
    .restart local v18       #nis:Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v5

    .line 348
    const/16 v16, 0x0

    .line 349
    .local v16, len:I
    array-length v0, v5

    move/from16 v25, v0

    div-int/lit8 v17, v25, 0x2

    .line 353
    .local v17, lowWater:I
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    .line 356
    .local v7, contentLen:J
    :cond_3
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 357
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 358
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mLoadingPaused:Z

    move/from16 v25, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v25, :cond_7

    .line 364
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 365
    :catch_0
    move-exception v10

    .line 366
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v10}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 371
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 417
    .end local v7           #contentLen:J
    .end local v16           #len:I
    .end local v17           #lowWater:I
    :catch_1
    move-exception v10

    .line 421
    .local v10, e:Ljava/io/EOFException;
    if-lez v9, :cond_4

    .line 423
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5, v9}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    :cond_4
    if-eqz v18, :cond_5

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 443
    .end local v5           #buf:[B
    .end local v6           #contentEncoding:Lorg/apache/http/Header;
    .end local v9           #count:I
    .end local v10           #e:Ljava/io/EOFException;
    .end local v15           #is:Ljava/io/InputStream;
    .end local v18           #nis:Ljava/io/InputStream;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v25, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v26

    invoke-virtual {v14}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v11, v1, v2}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/net/http/EventHandler;->endData()V

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_0

    .line 342
    .restart local v5       #buf:[B
    .restart local v6       #contentEncoding:Lorg/apache/http/Header;
    .restart local v9       #count:I
    .restart local v15       #is:Ljava/io/InputStream;
    .restart local v18       #nis:Ljava/io/InputStream;
    :cond_6
    move-object/from16 v18, v15

    goto/16 :goto_1

    .line 371
    .restart local v7       #contentLen:J
    .restart local v16       #len:I
    .restart local v17       #lowWater:I
    :cond_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 375
    const-wide/16 v25, 0x0

    cmp-long v25, v7, v25

    if-nez v25, :cond_c

    const/16 v25, 0x190

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_c

    const/16 v25, 0x1fb

    move/from16 v0, v21

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    const/16 v25, 0x191

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/16 v25, 0x197

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 383
    :try_start_7
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v20

    .line 384
    .local v20, reasonPhrase:Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_9

    .line 385
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/http/Request;->getReasonPhraseString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    .line 391
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x10405e0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    aput-object v20, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, errorMsg:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 398
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 399
    const/16 v16, -0x1

    .line 411
    .end local v12           #errorMsg:Ljava/lang/String;
    .end local v20           #reasonPhrase:Ljava/lang/String;
    :cond_a
    :goto_5
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    move/from16 v0, v17

    if-lt v9, v0, :cond_3

    .line 413
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5, v9}, Landroid/net/http/EventHandler;->data([BI)V

    .line 414
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 401
    :cond_c
    array-length v0, v5

    move/from16 v25, v0

    sub-int v25, v25, v9

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v5, v9, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .line 403
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 404
    add-int v9, v9, v16

    .line 405
    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Request;->mReceivedBytes:I

    move/from16 v25, v0

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 426
    .end local v7           #contentLen:J
    .end local v16           #len:I
    .end local v17           #lowWater:I
    :catch_2
    move-exception v10

    .line 428
    .local v10, e:Ljava/io/IOException;
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    const/16 v25, 0xce

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 430
    :cond_d
    if-eqz v23, :cond_e

    if-lez v9, :cond_e

    .line 433
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5, v9}, Landroid/net/http/EventHandler;->data([BI)V

    .line 435
    :cond_e
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 438
    .end local v10           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v25

    if-eqz v18, :cond_f

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_f
    throw v25

    .line 438
    .restart local v7       #contentLen:J
    .restart local v16       #len:I
    .restart local v17       #lowWater:I
    :cond_10
    if-eqz v18, :cond_5

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    goto/16 :goto_4

    .line 438
    .end local v7           #contentLen:J
    .end local v16           #len:I
    .end local v17           #lowWater:I
    .restart local v10       #e:Ljava/io/IOException;
    :cond_11
    if-eqz v18, :cond_5

    .line 439
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    goto/16 :goto_4
.end method

.method reset()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 522
    :cond_0
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_1

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_1
    return-void

    .line 514
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .locals 3
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 278
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 279
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_0
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 159
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 160
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 150
    iget-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method waitUntilComplete()V
    .locals 2

    .prologue
    .line 537
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 542
    :catch_0
    move-exception v0

    goto :goto_0
.end method
