.class Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;
.super Landroid/os/Handler;
.source "ISIMInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ISIMInterfaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 91
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 93
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 94
    .local v12, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v0, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 95
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    .line 96
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 97
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v13, v0

    .line 100
    .local v13, auth_res:[B
    if-nez v13, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const-string v21, "Authentication failed with null response"

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .line 140
    .end local v13           #auth_res:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 103
    .restart local v13       #auth_res:[B
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    aget-byte v3, v13, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-byte v3, v13, v3

    const/16 v21, 0x4

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const-string v21, "Authentication failed with bad response"

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const-string v21, "Authentication success or SYNC failure happened"

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .line 110
    const/16 v17, 0x1

    .line 111
    .local v17, index:I
    aget-byte v3, v13, v17

    and-int/lit16 v4, v3, 0xff

    .line 112
    .local v4, res_len:I
    add-int/lit8 v17, v17, 0x1

    .line 113
    new-array v5, v4, [B

    .line 114
    .local v5, res:[B
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    add-int/lit8 v17, v4, 0x2

    .line 117
    aget-byte v3, v13, v17

    and-int/lit16 v8, v3, 0xff

    .line 118
    .local v8, ck_len:I
    add-int/lit8 v17, v17, 0x1

    .line 119
    new-array v9, v8, [B

    .line 120
    .local v9, ck:[B
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int v17, v17, v8

    .line 123
    aget-byte v3, v13, v17

    and-int/lit16 v6, v3, 0xff

    .line 124
    .local v6, ik_len:I
    add-int/lit8 v17, v17, 0x1

    .line 125
    new-array v7, v6, [B

    .line 126
    .local v7, ik:[B
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int v17, v17, v6

    .line 129
    aget-byte v3, v13, v17

    and-int/lit16 v10, v3, 0xff

    .line 130
    .local v10, auts_len:I
    add-int/lit8 v17, v17, 0x1

    .line 131
    new-array v11, v10, [B

    .line 132
    .local v11, auts:[B
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0, v11, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    new-instance v3, Lcom/motorola/android/telephony/ISIMAuthRes;

    invoke-direct/range {v3 .. v11}, Lcom/motorola/android/telephony/ISIMAuthRes;-><init>(I[BI[BI[BI[B)V

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    goto/16 :goto_1

    .line 138
    .end local v4           #res_len:I
    .end local v5           #res:[B
    .end local v6           #ik_len:I
    .end local v7           #ik:[B
    .end local v8           #ck_len:I
    .end local v9           #ck:[B
    .end local v10           #auts_len:I
    .end local v11           #auts:[B
    .end local v13           #auth_res:[B
    .end local v17           #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Authentication failed with exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 148
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 149
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v0, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 151
    :try_start_2
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 152
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v3, v0, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/String;

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v21, 0x1

    aget-byte v19, v3, v21

    .line 156
    .local v19, strLen:I
    if-lez v19, :cond_3

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$200(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v3, v0, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$200(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    add-int/lit8 v23, v19, 0x2

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .end local v19           #strLen:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 222
    monitor-exit v20

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 160
    :cond_4
    :try_start_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v3, v0, :cond_6

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 163
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v22, v21, v16

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    const/16 v21, 0x1

    aget-byte v19, v3, v21

    .line 167
    .restart local v19       #strLen:I
    if-lez v19, :cond_5

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v3, v0, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$300(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v21

    aget-object v21, v21, v16

    const/16 v22, 0x2

    add-int/lit8 v23, v19, 0x2

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v3, v16

    .line 163
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 173
    .end local v16           #i:I
    .end local v19           #strLen:I
    :cond_6
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v3, v0, :cond_7

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/String;

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    const/16 v21, 0x1

    aget-byte v19, v3, v21

    .line 177
    .restart local v19       #strLen:I
    if-lez v19, :cond_3

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$400(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v3, v0, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$400(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    add-int/lit8 v23, v19, 0x2

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 182
    .end local v19           #strLen:I
    :cond_7
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v3, v0, :cond_9

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->response:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v14, v0

    .line 193
    .local v14, b:[B
    const/4 v3, 0x2

    aget-byte v3, v14, v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_1

    .line 185
    :cond_8
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 195
    :pswitch_2
    const/4 v3, 0x1

    aget-byte v18, v14, v3

    .line 196
    .local v18, len:I
    array-length v3, v14

    add-int/lit8 v21, v18, 0x2

    move/from16 v0, v21

    if-lt v3, v0, :cond_8

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v3

    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x3

    add-int/lit8 v23, v18, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v14, v1, v2}, Ljava/lang/String;-><init>([BII)V

    aput-object v21, v3, v16

    goto :goto_5

    .line 201
    .end local v18           #len:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv4String([BI)Ljava/lang/String;
    invoke-static {v0, v14, v1}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$600(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v3, v16

    goto :goto_5

    .line 204
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    #getter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$500(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->toIpv6String([BI)Ljava/lang/String;
    invoke-static {v0, v14, v1}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$700(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[BI)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v3, v16

    goto :goto_5

    .line 209
    .end local v14           #b:[B
    .end local v16           #i:I
    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v3, v0, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    move-object/from16 v21, v0

    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v0, v3}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    goto/16 :goto_2

    .line 213
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot load ISIM file"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 225
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 226
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v0, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 227
    :try_start_4
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    .line 228
    iget-object v3, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 229
    .local v15, bb:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    move/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I

    .line 234
    .end local v15           #bb:Ljava/nio/ByteBuffer;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 235
    monitor-exit v20

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 231
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const-string v21, "Cannot open session to ISIM app"

    move-object/from16 v0, v21

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, -0x1

    move/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 240
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reset ISIM Session on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    #calls: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$100(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v0, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 242
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, -0x1

    move/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mSessionId:I
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$902(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;I)I

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impu:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$302(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Impi:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$202(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Domain:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$402(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Pcscf:[Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$502(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->Ad:[B
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$802(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;[B)[B

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    #setter for: Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->AuthRes:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-static {v3, v0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->access$002(Lcom/motorola/android/internal/telephony/ISIMInterfaceService;Lcom/motorola/android/telephony/ISIMAuthRes;)Lcom/motorola/android/telephony/ISIMAuthRes;

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit v20

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 193
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
