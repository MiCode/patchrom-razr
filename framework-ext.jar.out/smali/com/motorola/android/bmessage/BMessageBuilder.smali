.class public Lcom/motorola/android/bmessage/BMessageBuilder;
.super Ljava/lang/Object;
.source "BMessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/BMessageBuilder$Property;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static final folderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

.field private mMessageEmailBccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailCcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailFromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailReplyToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageEmailToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageReceiverDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSenderDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

.field private messageIntType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "bmessage.BMessageBuilder"

    sput-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\ALL"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\INBOX"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\SENT"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\DRAFTS"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\OUTBOX"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\FAILED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->folderMap:Ljava/util/Map;

    const-string v1, "Sms\\QUEUED"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    .line 35
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    .line 58
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    .line 59
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    .line 61
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    .line 62
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    .line 63
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    .line 69
    return-void
.end method

.method private addProperty(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I
    .locals 13
    .parameter "property"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 165
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Enter addProperty(Property)!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyName:I
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$000(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I

    move-result v2

    .line 168
    .local v2, propIntName:I
    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$100(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, propValue:Ljava/lang/String;
    #getter for: Lcom/motorola/android/bmessage/BMessageBuilder$Property;->mPropertyBytes:[[B
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->access$200(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)[[B

    move-result-object v1

    .line 171
    .local v1, propBytes:[[B
    const/4 v4, 0x0

    .line 172
    .local v4, propValue_charset:Ljava/lang/String;
    const/4 v5, 0x0

    .line 174
    .local v5, propValue_encoding:Ljava/lang/String;
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addProperty() get propValue = <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-ne v2, v9, :cond_5

    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, msgIntType:I
    const-string v6, "SMS_CDMA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    const/4 v0, 0x0

    .line 196
    :cond_0
    :goto_0
    iput v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    .line 197
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v0}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageType(I)V

    .line 388
    .end local v0           #msgIntType:I
    :cond_1
    :goto_1
    return v10

    .line 183
    .restart local v0       #msgIntType:I
    :cond_2
    const-string v6, "SMS_GSM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const-string v6, "EMAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 189
    const/4 v0, 0x2

    goto :goto_0

    .line 191
    :cond_4
    const-string v6, "MMS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const/4 v0, 0x3

    goto :goto_0

    .line 199
    .end local v0           #msgIntType:I
    :cond_5
    if-ne v2, v11, :cond_7

    .line 201
    const-string v6, "READ"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v9}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReadStatus(I)V

    goto :goto_1

    .line 207
    :cond_6
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v10}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReadStatus(I)V

    goto :goto_1

    .line 210
    :cond_7
    if-ne v2, v12, :cond_8

    .line 221
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageLocatedFolder(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_8
    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    .line 230
    const/4 v6, 0x6

    if-eq v2, v6, :cond_1

    .line 236
    const/16 v6, 0x8

    if-ne v2, v6, :cond_9

    .line 238
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_9
    const/16 v6, 0xa

    if-ne v2, v6, :cond_a

    .line 242
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :cond_a
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    .line 250
    const/4 v6, 0x7

    if-eq v2, v6, :cond_1

    .line 256
    const/16 v6, 0x9

    if-ne v2, v6, :cond_b

    .line 258
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_b
    const/16 v6, 0xb

    if-ne v2, v6, :cond_c

    .line 262
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_c
    const/16 v6, 0xc

    if-ne v2, v6, :cond_d

    .line 266
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyPartId(I)V

    goto :goto_1

    .line 268
    :cond_d
    const/16 v6, 0x12

    if-ne v2, v6, :cond_e

    .line 270
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyLength(I)V

    goto/16 :goto_1

    .line 272
    :cond_e
    const/16 v6, 0xe

    if-ne v2, v6, :cond_f

    .line 274
    move-object v5, v3

    .line 275
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyEncoding(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    :cond_f
    const/16 v6, 0xd

    if-ne v2, v6, :cond_10

    .line 279
    move-object v4, v3

    .line 280
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyCharset(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :cond_10
    const/16 v6, 0xf

    if-ne v2, v6, :cond_11

    .line 284
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyLanguage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_11
    const/16 v6, 0x10

    if-ne v2, v6, :cond_17

    .line 288
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Builder begins to set BODY!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-eqz v6, :cond_12

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-ne v6, v9, :cond_14

    .line 292
    :cond_12
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is SMS."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyCharset()Ljava/lang/String;

    move-result-object v4

    .line 311
    if-eqz v4, :cond_13

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 313
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    .line 314
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 318
    :cond_13
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyDataBytes([[B)V

    .line 319
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "MessageStruct.mMsgBodyData is set to < bytes"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    :cond_14
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-eq v6, v11, :cond_15

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    if-ne v6, v12, :cond_16

    .line 325
    :cond_15
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is MMS/EMAIL."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    .line 340
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 345
    :cond_16
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The msg type is unsupported!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageBodyData(Ljava/lang/String;)V

    .line 347
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MessageStruct.mMsgBodyData is set to <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v8}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 350
    :cond_17
    const/16 v6, 0x13

    if-ne v2, v6, :cond_18

    .line 352
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailOrigDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 354
    :cond_18
    const/16 v6, 0x14

    if-ne v2, v6, :cond_19

    .line 356
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 358
    :cond_19
    const/16 v6, 0x15

    if-ne v2, v6, :cond_1a

    .line 360
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailSender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :cond_1a
    const/16 v6, 0x16

    if-ne v2, v6, :cond_1b

    .line 364
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 366
    :cond_1b
    const/16 v6, 0x17

    if-ne v2, v6, :cond_1c

    .line 368
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 370
    :cond_1c
    const/16 v6, 0x18

    if-ne v2, v6, :cond_1d

    .line 372
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 374
    :cond_1d
    const/16 v6, 0x19

    if-ne v2, v6, :cond_1e

    .line 376
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 378
    :cond_1e
    const/16 v6, 0x1a

    if-ne v2, v6, :cond_1f

    .line 380
    iget-object v6, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v6, v3}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailSubject(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 385
    :cond_1f
    sget-object v6, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "The propIntName inputed is unsupported!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method endProperty()I
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter endProperty()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-direct {p0, v0}, Lcom/motorola/android/bmessage/BMessageBuilder;->addProperty(Lcom/motorola/android/bmessage/BMessageBuilder$Property;)I

    move-result v0

    return v0
.end method

.method endRecord()V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter endRecord()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageSenderData(Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setMessageReceiverDataList(Ljava/util/List;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailFromList(Ljava/util/List;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailToList(Ljava/util/List;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailCcList(Ljava/util/List;)V

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailBccList(Ljava/util/List;)V

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/motorola/android/bmessage/MessageStruct;->setEmailReplyToList(Ljava/util/List;)V

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    invoke-virtual {v0}, Lcom/motorola/android/bmessage/MessageStruct;->consolidateFields()V

    .line 161
    return-void
.end method

.method public getMessageStruct()Lcom/motorola/android/bmessage/MessageStruct;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    return-object v0
.end method

.method propertyName(I)V
    .locals 3
    .parameter "name"

    .prologue
    .line 114
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter propertyName(int), property name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyName(I)V

    .line 116
    return-void
.end method

.method propertyValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 120
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter propertyValue(String), property value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyValue(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method propertyValue([[B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 126
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter propertyValue(String), property value = bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0, p1}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->setPropertyBytes([[B)V

    .line 128
    return-void
.end method

.method startProperty()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter startProperty()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-virtual {v0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;->clear()V

    .line 110
    return-void
.end method

.method startRecord()I
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Enter startRecord()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Nested BMessage code is not supported now."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/16 v0, 0xe

    .line 103
    :goto_0
    return v0

    .line 86
    :cond_0
    new-instance v0, Lcom/motorola/android/bmessage/MessageStruct;

    invoke-direct {v0}, Lcom/motorola/android/bmessage/MessageStruct;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    .line 87
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageStruct:Lcom/motorola/android/bmessage/MessageStruct;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMessageStruct is created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    new-instance v0, Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    invoke-direct {v0}, Lcom/motorola/android/bmessage/BMessageBuilder$Property;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    .line 91
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mCurrentProperty:Lcom/motorola/android/bmessage/BMessageBuilder$Property;

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Lcom/motorola/android/bmessage/BMessageBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mCurrentProperty is created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->messageIntType:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageSenderDataList:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageReceiverDataList:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailFromList:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailToList:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailCcList:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailBccList:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageBuilder;->mMessageEmailReplyToList:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method
