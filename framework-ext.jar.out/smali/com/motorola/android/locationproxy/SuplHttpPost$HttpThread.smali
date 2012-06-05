.class Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;
.super Ljava/lang/Object;
.source "SuplHttpPost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplHttpPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpThread"
.end annotation


# instance fields
.field retcode:I

.field final synthetic this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;


# direct methods
.method private constructor <init>(Lcom/motorola/android/locationproxy/SuplHttpPost;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v0, 0x190

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/locationproxy/SuplHttpPost;Lcom/motorola/android/locationproxy/SuplHttpPost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;-><init>(Lcom/motorola/android/locationproxy/SuplHttpPost;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 103
    :try_start_0
    const-string v13, "SuplHttpPost"

    const-string v14, "HttpThread: run()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Lcom/motorola/android/locationproxy/SuplHttpClient;

    invoke-direct {v2}, Lcom/motorola/android/locationproxy/SuplHttpClient;-><init>()V

    .line 105
    .local v2, client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mPort:I
    invoke-static {v13}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$100(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/motorola/android/locationproxy/SuplHttpClient;->setHttpsPort(I)V

    .line 106
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    const-string v14, "http.protocol.version"

    sget-object v15, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v13, v14, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 107
    invoke-virtual {v2}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    const-string v14, "http.socket.timeout"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpTimeout:I
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$200(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mFilePath:Ljava/lang/String;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$300(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->createGzipFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, gzipFile:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 111
    const-string v13, "SuplHttpPost"

    const-string v14, "Failed to create the gzip file!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    const/4 v14, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v13, v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    .line 164
    :cond_0
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send http post status to Shim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v13}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-interface/range {v13 .. v16}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    .line 168
    new-instance v10, Ljava/io/File;

    const-string v13, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v10, newFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 170
    const-string v13, "SuplHttpPost"

    const-string v14, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    :goto_0
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return-void

    .line 115
    .end local v10           #newFile:Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    .line 118
    .local v1, body:[B
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 120
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gz file not existed:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    const/4 v14, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v13, v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    .line 164
    :cond_3
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send http post status to Shim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v13}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-interface/range {v13 .. v16}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    .line 168
    new-instance v10, Ljava/io/File;

    const-string v13, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v10       #newFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 170
    const-string v13, "SuplHttpPost"

    const-string v14, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    goto/16 :goto_0

    .line 124
    .end local v10           #newFile:Ljava/io/File;
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v13

    long-to-int v13, v13

    new-array v1, v13, [B

    .line 126
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    .local v12, s:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v12, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v12, :cond_5

    .line 131
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 138
    .end local v6           #file:Ljava/io/File;
    .end local v12           #s:Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    :try_start_5
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 139
    .local v4, entity:Lorg/apache/http/HttpEntity;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9}, Lorg/apache/http/client/methods/HttpPost;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    .local v9, mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_6
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2

    .line 147
    :goto_2
    :try_start_7
    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 148
    const-string v13, "User-Agent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mUserAgent:Ljava/lang/String;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$500(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v13, "Content-Type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v13, "Connection"

    const-string v14, "Close"

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 153
    :try_start_8
    invoke-virtual {v2, v9}, Lcom/motorola/android/locationproxy/SuplHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 154
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    .line 155
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 161
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_6

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    const/4 v14, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v13, v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    .line 164
    :cond_6
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send http post status to Shim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v13}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-interface/range {v13 .. v16}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    .line 168
    new-instance v10, Ljava/io/File;

    const-string v13, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v10       #newFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 170
    const-string v13, "SuplHttpPost"

    const-string v14, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    goto/16 :goto_0

    .line 130
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v10           #newFile:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    .restart local v12       #s:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v13

    if-eqz v12, :cond_7

    .line 131
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 130
    :cond_7
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 133
    .end local v6           #file:Ljava/io/File;
    .end local v12           #s:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 134
    .local v5, ex:Ljava/io/FileNotFoundException;
    :try_start_a
    const-string v13, "SuplHttpPost"

    const-string v14, "FileNotFoundException:"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 161
    .end local v1           #body:[B
    .end local v2           #client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #gzipFile:Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->retcode:I

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    const/4 v15, 0x0

    #setter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static {v14, v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$602(Lcom/motorola/android/locationproxy/SuplHttpPost;B)B

    .line 164
    :cond_8
    const-string v14, "SuplHttpPost"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "send http post status to Shim:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v16, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v16 .. v16}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimProxy:Lcom/motorola/android/locationproxy/ISuplCommands;
    invoke-static {v14}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$800(Lcom/motorola/android/locationproxy/SuplHttpPost;)Lcom/motorola/android/locationproxy/ISuplCommands;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mCmdId:I
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$700(Lcom/motorola/android/locationproxy/SuplHttpPost;)I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    move-object/from16 v17, v0

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mShimStatus:B
    invoke-static/range {v17 .. v17}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$600(Lcom/motorola/android/locationproxy/SuplHttpPost;)B

    move-result v17

    invoke-interface/range {v14 .. v17}, Lcom/motorola/android/locationproxy/ISuplCommands;->sendHttpResult(IIB)V

    .line 168
    new-instance v10, Ljava/io/File;

    const-string v14, "/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v10       #newFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 170
    const-string v14, "SuplHttpPost"

    const-string v15, "deleted gzip file:/tmp/CELL_FINDER_PROTOCOL.TXT.gz"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_9
    throw v13

    .line 135
    .end local v10           #newFile:Ljava/io/File;
    .restart local v1       #body:[B
    .restart local v2       #client:Lcom/motorola/android/locationproxy/SuplHttpClient;
    .restart local v7       #gzipFile:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 136
    .local v8, ioe:Ljava/io/IOException;
    :try_start_b
    const-string v13, "SuplHttpPost"

    const-string v14, "IOException:"

    invoke-static {v13, v14, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 143
    .end local v8           #ioe:Ljava/io/IOException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v3

    .line 144
    .local v3, e:Ljava/net/URISyntaxException;
    const-string v13, "SuplHttpPost"

    const-string v14, "URISyntaxException:"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 156
    .end local v3           #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v3

    .line 157
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 158
    const-string v13, "SuplHttpPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/SuplHttpPost$HttpThread;->this$0:Lcom/motorola/android/locationproxy/SuplHttpPost;

    #getter for: Lcom/motorola/android/locationproxy/SuplHttpPost;->mHttpUrl:Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/android/locationproxy/SuplHttpPost;->access$400(Lcom/motorola/android/locationproxy/SuplHttpPost;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3
.end method
