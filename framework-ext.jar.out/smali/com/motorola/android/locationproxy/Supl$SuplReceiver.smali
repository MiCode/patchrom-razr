.class Lcom/motorola/android/locationproxy/Supl$SuplReceiver;
.super Ljava/lang/Object;
.source "Supl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/Supl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuplReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/motorola/android/locationproxy/Supl;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/Supl;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const v0, 0xfffd

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    .line 308
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 312
    const/4 v9, 0x0

    .line 315
    .local v9, retryCount:I
    :goto_0
    const/4 v11, 0x0

    .line 319
    .local v11, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v12, Landroid/net/LocalSocket;

    invoke-direct {v12}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    .end local v11           #s:Landroid/net/LocalSocket;
    .local v12, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v15, "location_shim"

    sget-object v16, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 322
    .local v6, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v12, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 358
    const/4 v9, 0x0

    .line 360
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iput-object v12, v15, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .line 361
    const-string v15, "SUPLJ"

    const-string v16, "Connected to \'location_shim\' socket"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 363
    const/4 v7, 0x0

    .line 365
    .local v7, length:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v15, v15, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 370
    .local v5, is:Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    #calls: Lcom/motorola/android/locationproxy/Supl;->readSuplMessage(Ljava/io/InputStream;[B)I
    invoke-static {v5, v15}, Lcom/motorola/android/locationproxy/Supl;->access$000(Ljava/io/InputStream;[B)I

    move-result v7

    .line 371
    if-gez v7, :cond_3

    .line 372
    const-string v15, "SUPLJ"

    const-string v16, "Read Supl Message ERROR"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 391
    .end local v5           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string v15, "SUPLJ"

    const-string v16, "Disconnected from \'location_shim\' socket"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 395
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v15, v15, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 400
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/motorola/android/locationproxy/Supl;->mSocket:Landroid/net/LocalSocket;

    .line 401
    invoke-static {}, Lcom/motorola/android/locationproxy/SuplRequest;->resetSerial()V

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v0, v15, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 405
    const/4 v4, 0x0

    .local v4, i:I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v15, v15, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, sz:I
    :goto_4
    if-ge v4, v13, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v15, v15, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/android/locationproxy/SuplRequest;

    .line 407
    .local v10, rr:Lcom/motorola/android/locationproxy/SuplRequest;
    invoke-virtual {v10}, Lcom/motorola/android/locationproxy/SuplRequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 323
    .end local v4           #i:I
    .end local v6           #l:Landroid/net/LocalSocketAddress;
    .end local v7           #length:I
    .end local v10           #rr:Lcom/motorola/android/locationproxy/SuplRequest;
    .end local v12           #s:Landroid/net/LocalSocket;
    .end local v13           #sz:I
    .restart local v11       #s:Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 327
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    if-eqz v11, :cond_0

    .line 328
    :try_start_8
    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 337
    :cond_0
    :goto_6
    const/4 v15, 0x2

    if-ne v9, v15, :cond_2

    .line 338
    :try_start_9
    const-string v15, "SUPLJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find \'location_shim\' socket after "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " times, continuing to retry silently"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 349
    :cond_1
    :goto_7
    const-wide/16 v15, 0xfa0

    :try_start_a
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 354
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 355
    goto/16 :goto_0

    .line 330
    :catch_1
    move-exception v3

    .line 331
    .local v3, ex2:Ljava/io/IOException;
    :try_start_b
    const-string v15, "SUPLJ"

    const-string v16, "Ignore failure to close after failure to connect"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .line 413
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #ex2:Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 414
    .local v14, tr:Ljava/lang/Throwable;
    :goto_9
    const-string v15, "SUPLJ"

    const-string v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    return-void

    .line 342
    .end local v14           #tr:Ljava/lang/Throwable;
    .restart local v2       #ex:Ljava/io/IOException;
    :cond_2
    if-lez v9, :cond_1

    const/4 v15, 0x2

    if-ge v9, v15, :cond_1

    .line 343
    :try_start_c
    const-string v15, "SUPLJ"

    const-string v16, "Couldn\'t find \'location_shim\' socket; retrying after timeout"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 350
    :catch_3
    move-exception v1

    .line 351
    .local v1, er:Ljava/lang/InterruptedException;
    const-string v15, "SUPLJ"

    const-string v16, "InterruptedException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 375
    .end local v1           #er:Ljava/lang/InterruptedException;
    .end local v2           #ex:Ljava/io/IOException;
    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #l:Landroid/net/LocalSocketAddress;
    .restart local v7       #length:I
    .restart local v12       #s:Landroid/net/LocalSocket;
    :cond_3
    :try_start_d
    const-string v15, "SUPLJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Read packet: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    #calls: Lcom/motorola/android/locationproxy/Supl;->logHexData([BI)V
    invoke-static {v15, v7}, Lcom/motorola/android/locationproxy/Supl;->access$100([BI)V

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 379
    .local v8, p:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 380
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    #calls: Lcom/motorola/android/locationproxy/Supl;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v15, v8}, Lcom/motorola/android/locationproxy/Supl;->access$200(Lcom/motorola/android/locationproxy/Supl;Landroid/os/Parcel;)V

    .line 382
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .line 384
    .end local v5           #is:Ljava/io/InputStream;
    .end local v8           #p:Landroid/os/Parcel;
    :catch_4
    move-exception v2

    .line 385
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_e
    const-string v15, "SUPLJ"

    const-string v16, "\'location_shim\' socket closed"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 413
    .end local v2           #ex:Ljava/io/IOException;
    .end local v6           #l:Landroid/net/LocalSocketAddress;
    .end local v7           #length:I
    :catch_5
    move-exception v14

    move-object v11, v12

    .end local v12           #s:Landroid/net/LocalSocket;
    .restart local v11       #s:Landroid/net/LocalSocket;
    goto :goto_9

    .line 387
    .end local v11           #s:Landroid/net/LocalSocket;
    .restart local v6       #l:Landroid/net/LocalSocketAddress;
    .restart local v7       #length:I
    .restart local v12       #s:Landroid/net/LocalSocket;
    :catch_6
    move-exception v14

    .line 388
    .restart local v14       #tr:Ljava/lang/Throwable;
    const-string v15, "SUPLJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 396
    .end local v14           #tr:Ljava/lang/Throwable;
    :catch_7
    move-exception v2

    .line 397
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v15, "SUPLJ"

    const-string v16, "Close socket error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .line 410
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v4       #i:I
    .restart local v13       #sz:I
    :cond_4
    :try_start_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/locationproxy/Supl$SuplReceiver;->this$0:Lcom/motorola/android/locationproxy/Supl;

    iget-object v15, v15, Lcom/motorola/android/locationproxy/Supl;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 411
    monitor-exit v16

    goto/16 :goto_0

    .end local v13           #sz:I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v15
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 323
    .end local v4           #i:I
    .end local v6           #l:Landroid/net/LocalSocketAddress;
    .end local v7           #length:I
    :catch_8
    move-exception v2

    move-object v11, v12

    .end local v12           #s:Landroid/net/LocalSocket;
    .restart local v11       #s:Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
