.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mConcomittantHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandConcomitantHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    const/16 v5, 0x22

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, c:C
    if-ne v0, v5, :cond_3

    .line 169
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 170
    .local v2, j:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 175
    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move v1, v2

    .line 166
    .end local v2           #j:I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_3
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    .line 178
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .parameter "ch"
    .parameter "input"
    .parameter "fromIndex"

    .prologue
    const/16 v3, 0x22

    .line 194
    move v1, p2

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, c:C
    if-ne v0, v3, :cond_0

    .line 197
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 198
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 205
    .end local v0           #c:C
    :goto_1
    return v2

    .line 201
    .restart local v0       #c:C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    .line 202
    goto :goto_1

    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 3
    .parameter "input"
    .parameter "index"

    .prologue
    .line 238
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    .local v0, c:C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    .line 245
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 258
    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6
    .parameter "input"

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, i:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v4, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_0

    .line 218
    const/16 v5, 0x2c

    invoke-static {v5, p0, v2}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, j:I
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, arg:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .line 228
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private static isAtoZ(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 186
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 21
    .parameter "raw_input"

    .prologue
    .line 270
    invoke-static/range {p1 .. p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, input:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "A/"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 274
    new-instance v12, Ljava/lang/String;

    .end local v12           #input:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v12       #input:Ljava/lang/String;
    :goto_0
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 282
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 406
    :cond_0
    :goto_1
    return-object v15

    .line 276
    :cond_1
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 296
    .local v13, iter:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 297
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 298
    .local v8, entry:Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 299
    .local v14, key:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/AtCommandConcomitantHandler;

    move-object/from16 v9, v17

    check-cast v9, Landroid/bluetooth/AtCommandConcomitantHandler;

    .line 300
    .local v9, handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/bluetooth/AtCommandConcomitantHandler;->handleCommand(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 301
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 307
    .end local v8           #entry:Ljava/util/Map$Entry;
    .end local v9           #handler:Landroid/bluetooth/AtCommandConcomitantHandler;
    .end local v14           #key:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    const-string v18, "AT"

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v17

    if-nez v17, :cond_5

    .line 309
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 313
    :cond_5
    const/4 v11, 0x2

    .line 314
    .local v11, index:I
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 316
    .local v15, result:Landroid/bluetooth/AtCommandResult;
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 317
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 318
    .local v5, c:C
    invoke-static {v5}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 322
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/bluetooth/AtCommandHandler;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 329
    :cond_6
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 336
    .end local v4           #args:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v5, v0, :cond_e

    .line 340
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v10

    .line 341
    .local v10, i:I
    invoke-virtual {v12, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, commandName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 344
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 348
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/AtCommandHandler;

    .line 352
    .local v9, handler:Landroid/bluetooth/AtCommandHandler;
    const/16 v17, 0x3b

    move/from16 v0, v17

    invoke-static {v0, v12, v11}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v7

    .line 359
    .local v7, endIndex:I
    if-lt v10, v7, :cond_9

    .line 360
    const/16 v16, 0x0

    .line 378
    .local v16, type:I
    :goto_3
    packed-switch v16, :pswitch_data_0

    .line 394
    :goto_4
    invoke-virtual {v15}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v17

    if-nez v17, :cond_0

    .line 398
    move v11, v7

    .line 399
    goto/16 :goto_2

    .line 361
    .end local v16           #type:I
    :cond_9
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 362
    const/16 v16, 0x1

    .restart local v16       #type:I
    goto :goto_3

    .line 363
    .end local v16           #type:I
    :cond_a
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 364
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ge v0, v7, :cond_c

    .line 365
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 366
    const/16 v16, 0x3

    .restart local v16       #type:I
    goto :goto_3

    .line 368
    .end local v16           #type:I
    :cond_b
    const/16 v16, 0x2

    .restart local v16       #type:I
    goto :goto_3

    .line 371
    .end local v16           #type:I
    :cond_c
    const/16 v16, 0x2

    .restart local v16       #type:I
    goto :goto_3

    .line 374
    .end local v16           #type:I
    :cond_d
    const/16 v16, 0x0

    .restart local v16       #type:I
    goto :goto_3

    .line 380
    :pswitch_0
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 383
    :pswitch_1
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 386
    :pswitch_2
    invoke-virtual {v9}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 389
    :pswitch_3
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 391
    .local v4, args:[Ljava/lang/Object;
    invoke-virtual {v9, v4}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 402
    .end local v4           #args:[Ljava/lang/Object;
    .end local v6           #commandName:Ljava/lang/String;
    .end local v7           #endIndex:I
    .end local v9           #handler:Landroid/bluetooth/AtCommandHandler;
    .end local v10           #i:I
    .end local v16           #type:I
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandConcomitantHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mConcomittantHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 140
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method
