.class public Lcom/motorola/android/bmessage/MessageStruct;
.super Ljava/lang/Object;
.source "MessageStruct.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.MessageStruct"


# instance fields
.field private mMsgBodyCharset:Ljava/lang/String;

.field private mMsgBodyData:Ljava/lang/String;

.field private mMsgBodyDataBytes:[[B

.field private mMsgBodyEncoding:Ljava/lang/String;

.field private mMsgBodyLanguage:Ljava/lang/String;

.field private mMsgBodyLength:I

.field private mMsgBodyPartId:I

.field private mMsgEmailBccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailCcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailFromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailOrigDate:Ljava/lang/String;

.field private mMsgEmailReplyToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgEmailSender:Ljava/lang/String;

.field private mMsgEmailSubject:Ljava/lang/String;

.field private mMsgEmailToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgLocatedFolder:Ljava/lang/String;

.field private mMsgLocatedFolderIndex:I

.field private mMsgReadStatus:I

.field private mMsgReceiverDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgReceiverNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgSenderData:Ljava/lang/String;

.field private mMsgSenderName:Ljava/lang/String;

.field private mMsgType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    .line 40
    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    .line 41
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolderIndex:I

    .line 43
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    .line 46
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    .line 47
    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    .line 48
    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    .line 49
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    move-object v0, v1

    .line 50
    check-cast v0, [[B

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    .line 51
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    .line 59
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    .line 61
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    .line 62
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    .line 63
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    .line 64
    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;[[BLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter "msgReadStatus"
    .parameter "msgLocatedFolder"
    .parameter "msgBodyCharset"
    .parameter "msgBodyLanguage"
    .parameter "msgBodyLength"
    .parameter "msgType"
    .parameter "msgSenderName"
    .parameter "msgSenderData"
    .parameter
    .parameter
    .parameter "msgBodyPartId"
    .parameter "msgBodyEncoding"
    .parameter "msgBodyData"
    .parameter "msgBodyDataBytes"
    .parameter "msgEmailOrigDate"
    .parameter "msgEmailSender"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "msgEmailSubject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p9, msgReceiverNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p10, msgReceiverDataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p17, msgEmailFromList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p18, msgEmailToList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p19, msgEmailCcList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p20, msgEmailBccList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p21, msgEmailReplyToList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolderIndex:I

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    check-cast v1, [[B

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    .line 96
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    .line 97
    iput-object p2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    .line 100
    iput p5, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    .line 101
    iput p6, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    .line 102
    iput-object p7, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    .line 103
    iput-object p8, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    .line 105
    iput-object p10, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    .line 106
    iput p11, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    .line 107
    iput-object p12, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    .line 108
    iput-object p13, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    .line 113
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    .line 115
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    .line 117
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    .line 118
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    .line 119
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    .line 120
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public consolidateFields()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 455
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "Entered consolidateFields."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    if-ne v0, v2, :cond_0

    .line 457
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    .line 460
    :cond_0
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    if-ne v0, v2, :cond_1

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    .line 464
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    .line 466
    return-void
.end method

.method public getEmailBccList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailCcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailOrigDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailOrigDate() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    return-object v0

    .line 228
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getEmailOrigDate() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmailReplyToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    return-object v0
.end method

.method public getEmailSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailSubject()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailSubject() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    return-object v0

    .line 261
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getEmailSubject() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEmailToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageBodyCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageBodyCharset() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    return-object v0

    .line 216
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyCharset() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageBodyData() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyData() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyDataBytes()[[B
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    return-object v0
.end method

.method public getMessageBodyEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageBodyEncoding() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    return-object v0

    .line 207
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyEncoding() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageBodyLanguage() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    return-object v0

    .line 194
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyLanguage() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageBodyLength()I
    .locals 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyLength() return the int: (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageBodyLength() return (-1) length."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMessageBodyPartId()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    return v0
.end method

.method public getMessageLocatedFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageLocatedFolder() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    return-object v0

    .line 132
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageLocatedFolder() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageReadStatus()I
    .locals 2

    .prologue
    .line 138
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageReadStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    return v0
.end method

.method public getMessageReceiverDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 161
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageReceiverDataList() list(0) is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    return-object v0

    .line 163
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageReceiverDataList() return an empty list or null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageReceiverNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageSenderData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageSenderData() return the string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    return-object v0

    .line 150
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageSenderData() return (null) string."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMessageSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 2

    .prologue
    .line 124
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "getMessageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    return v0
.end method

.method public setEmailBccList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, bcclist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 426
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email bcc field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    .line 429
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailBccList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailBccList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailCcList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, cclist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 417
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email cc field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    .line 420
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailCcList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailCcList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailFromList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, fromlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 390
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email from field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 392
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    .line 393
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailFromList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailFromList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailOrigDate(Ljava/lang/String;)V
    .locals 3
    .parameter "origdate"

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email origdate field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    .line 384
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailOrigDate() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailOrigDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailReplyToList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, replytolist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 435
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email replyto field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    .line 438
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailReplyToList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailReplyToList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailSender(Ljava/lang/String;)V
    .locals 3
    .parameter "sender"

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email sender field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    .line 402
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailSender() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email subject field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    .line 447
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailSubject() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmailToList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, tolist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 408
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid email to field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    .line 411
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailToList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgEmailToList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyCharset(Ljava/lang/String;)V
    .locals 3
    .parameter "charset"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg body charset field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    .line 359
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBodyCharset() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg body data field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    .line 368
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBodyData() set the body string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyDataBytes([[B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyDataBytes:[[B

    .line 374
    return-void
.end method

.method public setMessageBodyEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "encoding"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg body encoding field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    .line 350
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBodyEncoding() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg body language field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    .line 341
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBodyLanguage() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageBodyLength(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 297
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyLength:I

    .line 298
    return-void
.end method

.method public setMessageBodyPartId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 293
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgBodyPartId:I

    .line 294
    return-void
.end method

.method public setMessageLocatedFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg folder field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    .line 279
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageLocatedFolder() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgLocatedFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageReadStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 288
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReadStatus:I

    .line 289
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "setMessageReadStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public setMessageReceiverDataList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, datalist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 329
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg receiver data field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    .line 332
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageReceiverDataList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageReceiverNameList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, namelist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 320
    :cond_0
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg receiver name field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_1
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    .line 323
    const-string v1, "bmessage.MessageStruct"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageReceiverNameList() set string(0): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgReceiverNameList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageSenderData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg sender data field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    .line 314
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSenderData() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageSenderName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "This bMessage object has no valid msg sender name field."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    .line 305
    const-string v0, "bmessage.MessageStruct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSenderName() set string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 270
    iput p1, p0, Lcom/motorola/android/bmessage/MessageStruct;->mMsgType:I

    .line 271
    const-string v0, "bmessage.MessageStruct"

    const-string v1, "setMessageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method
