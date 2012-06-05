.class public Lcom/motorola/android/bmessage/BMessageComposer;
.super Ljava/lang/Object;
.source "BMessageComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/BMessageComposer$HandlerForOutputStream;,
        Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The BMessage composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FIRST_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.BMessageComposer"

.field private static final MSG_FIRST_VALID_PATH_INDEX:I = 0x1

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final RECIPIENT_DELIMIT:Ljava/lang/String; = ","

.field private static final emailPath:[Ljava/lang/String;

.field private static final emailProjection:[Ljava/lang/String;

.field private static final mmsPath:[Ljava/lang/String;

.field private static final mmsProjection:[Ljava/lang/String;

.field private static final sALLTHREADSURI:Landroid/net/Uri;

.field private static final sCanonicalAddress:Landroid/net/Uri;

.field private static final sEmailBodyPartsUri:Landroid/net/Uri;

.field private static final sEmailDataRequestUri:Landroid/net/Uri;

.field private static final sEmailFolderUri:Landroid/net/Uri;

.field private static final sEmailProjection:[Ljava/lang/String;

.field private static final sMMSDataRequestUri:Landroid/net/Uri;

.field private static final sMMSProjection:[Ljava/lang/String;

.field private static final sSMSDataRequestUri:Landroid/net/Uri;

.field private static final sSMSProjection:[Ljava/lang/String;

.field private static final smsPath:[Ljava/lang/String;

.field private static final smsProjection:[Ljava/lang/String;


# instance fields
.field private mBegPos:I

.field private final mCareHandlerErrors:Z

.field private mCharSet:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmailBodycontent:Ljava/lang/String;

.field private mEndPos:I

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private mMsgFolder:Ljava/lang/String;

.field private mMsgSender:Ljava/lang/String;

.field private mMsgType:Ljava/lang/String;

.field private mSmsPdus:[[B

.field private mTerminateIsCalled:Z

.field private final mVCardType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    .line 317
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    .line 318
    sget-object v0, Landroid/provider/Email$ContentUri;->MESSAGES:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    .line 320
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    .line 322
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    .line 323
    sget-object v0, Landroid/provider/Email$ContentUri;->FOLDERS:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    .line 324
    sget-object v0, Landroid/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailBodyPartsUri:Landroid/net/Uri;

    .line 344
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    .line 349
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    .line 354
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    .line 359
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    .line 367
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "msg_box"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    .line 376
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "subject"

    aput-object v1, v0, v3

    const-string v1, "_from"

    aput-object v1, v0, v4

    const-string v1, "_to"

    aput-object v1, v0, v5

    const-string v1, "cc"

    aput-object v1, v0, v6

    const-string v1, "bcc"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    .line 388
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sms\\ALL"

    aput-object v1, v0, v3

    const-string v1, "Sms\\INBOX"

    aput-object v1, v0, v4

    const-string v1, "Sms\\SENT"

    aput-object v1, v0, v5

    const-string v1, "Sms\\DRAFTS"

    aput-object v1, v0, v6

    const-string v1, "Sms\\OUTBOX"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Sms\\FAILED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sms\\QUEUED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    .line 400
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mms\\ALL"

    aput-object v1, v0, v3

    const-string v1, "Mms\\INBOX"

    aput-object v1, v0, v4

    const-string v1, "Mms\\SENT"

    aput-object v1, v0, v5

    const-string v1, "Mms\\DRAFTS"

    aput-object v1, v0, v6

    const-string v1, "Mms\\OUTBOX"

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    .line 419
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "telecom\\msg"

    aput-object v1, v0, v3

    const-string v1, "telecom\\msg"

    aput-object v1, v0, v4

    const-string v1, "telecom\\msg\\deleted"

    aput-object v1, v0, v5

    const-string v1, "telecom\\msg\\drafts"

    aput-object v1, v0, v6

    const-string v1, "telecom\\msg\\inbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "telecom\\msg\\outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "telecom\\msg\\sent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/bmessage/BMessageComposer;->emailPath:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 431
    const-string v0, "2.1"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    .line 103
    iput v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    .line 340
    const-string v0, "No error"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    .line 341
    iput-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    .line 448
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    .line 449
    iput-object p2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    .line 450
    iput-boolean p3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    .line 453
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/bmessage/BMessageComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/bmessage/BMessageComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/bmessage/BMessageComposer;)[[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/bmessage/BMessageComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/bmessage/BMessageComposer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    return v0
.end method

.method private appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "propertyName"
    .parameter "rawData"

    .prologue
    .line 1032
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    return-void
.end method

.method private appendBodyContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-ne v2, v3, :cond_1

    .line 1524
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    const-string v3, "UTF-8"

    if-ne v2, v3, :cond_4

    .line 1525
    const-string v2, "BEGIN"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v2, "body"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    const-string v2, "END"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "MMS"

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "EMAIL"

    if-ne v2, v3, :cond_3

    .line 1571
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :cond_3
    return-void

    .line 1532
    :cond_4
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v2, v2

    if-nez v2, :cond_6

    .line 1533
    :cond_5
    const-string v2, "BEGIN"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    const-string v2, "END"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1541
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    .line 1542
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 1543
    const-string v2, "BEGIN"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v3, v3, v1

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_2
    const-string v2, "END"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "bmessage.BMessageComposer"

    const-string v3, "byte[] to String: UTF-8 encoding is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1555
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    .line 1558
    iget v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    iget v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    if-ne v2, v3, :cond_1

    .line 1559
    const-string v2, "BEGIN"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    const-string v2, "END"

    const-string v3, "MSG"

    invoke-direct {p0, p1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private appendContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "BEGIN"

    const-string v5, "BBODY"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_1

    .line 1391
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    const-string v5, "UTF-8"

    if-ne v4, v5, :cond_4

    .line 1392
    const-string v4, "CHARSET"

    const-string v5, "UTF-8"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BEGIN:MSG\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "body"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MSG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, bodyContent:Ljava/lang/String;
    const-string v4, "LENGTH"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    .end local v0           #bodyContent:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_3

    .line 1443
    :cond_2
    const-string v4, "CHARSET"

    const-string v5, "UTF-8"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->buildEmailBody(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    .line 1448
    const-string v4, "LENGTH"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEmailBodycontent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBodyContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 1453
    const-string v4, "END"

    const-string v5, "BBODY"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    return-void

    .line 1411
    :cond_4
    const-string v4, "ENCODING"

    const-string v5, "C-8BIT"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->buildSmsPdus(Ljava/util/Map;)[[B

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    .line 1419
    const-string v4, "BEGIN:MSG\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "END:MSG\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 1421
    .local v3, msgDataMinLen:I
    const/4 v1, 0x0

    .line 1422
    .local v1, bodyLen:I
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v4, v4

    if-lez v4, :cond_7

    .line 1423
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v4, v4, v2

    if-eqz v4, :cond_5

    .line 1424
    add-int v4, v1, v3

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    aget-object v5, v5, v2

    array-length v5, v5

    add-int/2addr v4, v5

    const-string v5, "\r\n"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 1423
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1427
    :cond_5
    if-nez v1, :cond_6

    .line 1428
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 1434
    .end local v2           #i:I
    :cond_6
    :goto_2
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body length is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    const-string v4, "LENGTH"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    :cond_7
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_2
.end method

.method private appendEnvelope(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "BEGIN"

    const-string v1, "BENV"

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendRecipient(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 1251
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendContent(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 1252
    const-string v0, "END"

    const-string v1, "BENV"

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method private appendOriginator(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 17
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1138
    .local p2, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 1139
    .local v16, threadsCursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1143
    .local v14, recpCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v2, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v15, v3

    .line 1145
    .local v15, smsselectionArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v2, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v12, v3

    .line 1150
    .local v12, mmsselectionArgs:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "recipient_ids"

    aput-object v3, v4, v2

    .line 1152
    .local v4, sTHREADSPROJECTION:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1154
    .local v11, contactStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "MMS"

    if-ne v2, v3, :cond_a

    .line 1157
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    const-string v3, "Sms\\INBOX"

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "Mms\\INBOX"

    if-ne v2, v3, :cond_d

    .line 1168
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1174
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_CDMA"

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "SMS_GSM"

    if-ne v2, v3, :cond_3

    .line 1178
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    move-object/from16 v0, v16

    invoke-static {v2, v5, v6, v0, v14}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 1183
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "MMS"

    if-ne v2, v3, :cond_4

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    move-object/from16 v0, v16

    invoke-static {v2, v5, v6, v0, v14}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 1189
    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 1190
    :cond_5
    const-string v2, ""

    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    if-eqz v16, :cond_6

    .line 1193
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_6
    if-eqz v14, :cond_7

    .line 1196
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1236
    :cond_7
    :goto_0
    return-void

    .line 1201
    :cond_8
    const-string v2, ";"

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1202
    .local v13, numberList:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    if-eqz v16, :cond_9

    .line 1206
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_9
    if-eqz v14, :cond_a

    .line 1209
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1230
    .end local v13           #numberList:[Ljava/lang/String;
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v3, "EMAIL"

    if-ne v2, v3, :cond_7

    .line 1232
    const/4 v3, 0x0

    const-string v2, "_from"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :cond_b
    const-string v2, ""

    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    if-eqz v16, :cond_c

    .line 1217
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1219
    :cond_c
    if-eqz v14, :cond_a

    .line 1220
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1225
    :cond_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private appendProperty(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1050
    const-string v4, "VERSION"

    const-string v5, "1.0"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_5

    .line 1056
    :cond_0
    const-string v4, "read"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1057
    const-string v4, "STATUS"

    const-string v5, "READ"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_1
    :goto_0
    const-string v4, "TYPE"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_CDMA"

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "SMS_GSM"

    if-ne v4, v5, :cond_a

    .line 1088
    :cond_2
    const-string v4, "type"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1089
    .local v2, pathIndex:I
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    array-length v3, v4

    .line 1090
    .local v3, smsPathLength:I
    if-lt v2, v6, :cond_9

    if-ge v2, v3, :cond_9

    .line 1092
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->smsPath:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    .line 1100
    :goto_1
    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    .end local v2           #pathIndex:I
    .end local v3           #smsPathLength:I
    :cond_3
    :goto_2
    return-void

    .line 1060
    :cond_4
    const-string v4, "STATUS"

    const-string v5, "UNREAD"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    :cond_5
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-ne v4, v5, :cond_7

    .line 1064
    const-string v4, "read"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1065
    const-string v4, "STATUS"

    const-string v5, "READ"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_6
    const-string v4, "STATUS"

    const-string v5, "UNREAD"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_7
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_1

    .line 1072
    const-string v4, "status"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    .line 1073
    const-string v4, "STATUS"

    const-string v5, "0"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_8
    const-string v4, "STATUS"

    const-string v5, "1"

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1094
    .restart local v2       #pathIndex:I
    .restart local v3       #smsPathLength:I
    :cond_9
    :try_start_1
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Int pathIndex is outofBound at smsPath[pathIndex]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Folder is default set to draft box."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1121
    .end local v2           #pathIndex:I
    .end local v3           #smsPathLength:I
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when get pathIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "Folder path is default set to draft box."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1102
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "MMS"

    if-ne v4, v5, :cond_c

    .line 1103
    const-string v4, "msg_box"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1104
    .restart local v2       #pathIndex:I
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    array-length v1, v4

    .line 1105
    .local v1, mmsPathLength:I
    if-lt v2, v6, :cond_b

    if-ge v2, v1, :cond_b

    .line 1107
    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->mmsPath:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    .line 1115
    :goto_3
    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1109
    :cond_b
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Int pathIndex is outofBound at smsPath[pathIndex]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,Folder is default set to draft box."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_3

    .line 1117
    .end local v1           #mmsPathLength:I
    .end local v2           #pathIndex:I
    :cond_c
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v5, "EMAIL"

    if-ne v4, v5, :cond_3

    .line 1118
    const-string v4, "FOLDER"

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method private appendRecipient(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 26
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p2, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 1267
    .local v24, threadsCursor:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 1271
    .local v22, recpCursor:Landroid/database/Cursor;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    const-string v3, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v23, v4

    .line 1273
    .local v23, smsselectionArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v3, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v20, v4

    .line 1277
    .local v20, mmsselectionArgs:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "recipient_ids"

    aput-object v4, v5, v3

    .line 1280
    .local v5, sTHREADSPROJECTION:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 1282
    .local v15, contactStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_CDMA"

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_GSM"

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "MMS"

    if-ne v3, v4, :cond_2

    .line 1285
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    const-string v4, "Sms\\INBOX"

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "Mms\\INBOX"

    if-ne v3, v4, :cond_3

    .line 1287
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "EMAIL"

    if-ne v3, v4, :cond_8

    .line 1358
    const-string v3, "_to"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1359
    .local v25, toList:[Ljava/lang/String;
    move-object/from16 v12, v25

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    aget-object v17, v12, v18

    .line 1360
    .local v17, emailAddress:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1291
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #emailAddress:Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v25           #toList:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sALLTHREADSURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/motorola/android/bmessage/BMessageComposer;->sCanonicalAddress:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1296
    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v24, :cond_e

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_CDMA"

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_GSM"

    if-ne v3, v4, :cond_4

    .line 1305
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "MMS"

    if-ne v3, v4, :cond_5

    .line 1312
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 1313
    :cond_6
    const-string v3, ""

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    if-eqz v24, :cond_7

    .line 1316
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_7
    if-eqz v22, :cond_8

    .line 1319
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1374
    :cond_8
    return-void

    .line 1324
    :cond_9
    const-string v3, ";"

    throw v15

    move-result-object v21

    .line 1326
    .local v21, numberList:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 1327
    .local v16, count:I
    move-object/from16 v12, v21

    .restart local v12       #arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    aget-object v14, v12, v18

    .line 1328
    .local v14, contact:Ljava/lang/String;
    throw v14

    move-result v3

    if-eqz v3, :cond_a

    .line 1329
    add-int/lit8 v16, v16, 0x1

    .line 1330
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1334
    .end local v14           #contact:Ljava/lang/String;
    :cond_b
    if-nez v16, :cond_c

    .line 1335
    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_c
    if-eqz v24, :cond_d

    .line 1339
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1341
    :cond_d
    if-eqz v22, :cond_2

    .line 1342
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1345
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v16           #count:I
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v21           #numberList:[Ljava/lang/String;
    :cond_e
    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    if-eqz v24, :cond_f

    .line 1348
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1350
    :cond_f
    if-eqz v22, :cond_2

    .line 1351
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1363
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v19       #len$:I
    .restart local v25       #toList:[Ljava/lang/String;
    :cond_10
    const-string v3, "cc"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1364
    .local v13, ccList:[Ljava/lang/String;
    move-object v12, v13

    array-length v0, v12

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v17, v12, v18

    .line 1365
    .restart local v17       #emailAddress:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    add-int/lit8 v18, v18, 0x1

    goto :goto_3
.end method

.method private appendVCardInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "contactNum"
    .parameter "email"

    .prologue
    .line 1587
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v0, "VERSION"

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v0, "N"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mVCardType:Ljava/lang/String;

    const-string v1, "3.0"

    if-ne v0, v1, :cond_0

    .line 1597
    const-string v0, "FN"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_CDMA"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_GSM"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "MMS"

    if-ne v0, v1, :cond_2

    .line 1605
    :cond_1
    const-string v0, "TEL"

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :goto_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    return-void

    .line 1608
    :cond_2
    const-string v0, "EMAIL"

    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildEmailBody(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1617
    .local p1, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1618
    .local v0, emailBodyBuilder:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN"

    const-string v2, "MSG"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v2, :cond_5

    .line 1623
    const-string v2, "Date"

    new-instance v3, Ljava/util/Date;

    const-string v1, "date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v2, :cond_6

    .line 1634
    const-string v2, "Subject"

    const-string v1, "sub"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v2, :cond_7

    .line 1643
    const-string v2, "From"

    const-string v1, "_from"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v2, :cond_3

    .line 1653
    const-string v2, "To"

    const-string v1, "_to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v2, :cond_4

    .line 1659
    const-string v2, "Cc"

    const-string v1, "cc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    :cond_4
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    const-string v1, "Body"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    const-string v1, "END"

    const-string v2, "MSG"

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1625
    :cond_5
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v2, :cond_0

    .line 1628
    const-string v2, "Date"

    new-instance v3, Ljava/util/Date;

    const-string v1, "date_sent"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1636
    :cond_6
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "EMAIL"

    if-ne v1, v2, :cond_1

    .line 1637
    const-string v2, "Subject"

    const-string v1, "subject"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1645
    :cond_7
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "MMS"

    if-ne v1, v2, :cond_2

    .line 1647
    const-string v1, "From"

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private buildSmsPdus(Ljava/util/Map;)[[B
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[[B"
        }
    .end annotation

    .prologue
    .local p1, contentValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1471
    move-object v7, v5

    check-cast v7, [[B

    .line 1473
    .local v7, pdus:[[B
    const-string v1, "bmessage.BMessageComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v2, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " body: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "body"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v2, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const-string v1, "bmessage.BMessageComposer"

    const-string v2, " callback number is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const-string v2, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " priority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "priority"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    const-string v2, "Sms\\INBOX"

    if-ne v1, v2, :cond_2

    .line 1481
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "SMS_CDMA"

    if-ne v1, v2, :cond_1

    .line 1482
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "date"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v8, v9}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "priority"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v7

    .line 1503
    :cond_0
    :goto_0
    if-nez v7, :cond_4

    .line 1504
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " SMS pdus is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :goto_1
    return-object v7

    .line 1485
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "SMS_GSM"

    if-ne v1, v2, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "date"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v8, v9}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "priority"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v10

    invoke-static/range {v0 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v7

    goto :goto_0

    .line 1492
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "SMS_CDMA"

    if-ne v1, v2, :cond_3

    .line 1493
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "date"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v8, v9}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "priority"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v7

    goto :goto_0

    .line 1496
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v2, "SMS_GSM"

    if-ne v1, v2, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgSender:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/android/bmessage/BMessageComposer;->cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "date"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v8, v9}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v6, "priority"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v10

    invoke-static/range {v0 .. v6}, Lcom/motorola/android/bmessage/SmsUtils;->getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v7

    goto/16 :goto_0

    .line 1506
    :cond_4
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SMS pdu with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static cleanUpPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 1459
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1460
    :cond_0
    const-string v0, ""

    .line 1462
    :goto_0
    return-object v0

    :cond_1
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 51
    .parameter "msgId"

    .prologue
    .line 685
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 686
    .local v23, contentValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v47, "_id=?"

    .line 687
    .local v47, smsSelection:Ljava/lang/String;
    const-string v39, "_id=?"

    .line 688
    .local v39, mmsSelection:Ljava/lang/String;
    const-string v32, "_id=?"

    .line 689
    .local v32, emailSelection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    const-string v4, "message_id"

    aput-object v4, v29, v3

    const/4 v3, 0x1

    const-string v4, "sequence_id"

    aput-object v4, v29, v3

    .line 690
    .local v29, emailBodyPartsProjection:[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    .line 692
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v46, 0x0

    .line 693
    .local v46, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v40, 0x0

    .line 695
    .local v40, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const/16 v17, 0x0

    .line 697
    .local v17, buffer:[B
    const/16 v27, 0x0

    .line 698
    .local v27, dataExists:Z
    const/16 v36, 0x0

    .line 700
    .local v36, iCursor:Landroid/database/Cursor;
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " ---- Enter createOneEntryInternal() ----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_CDMA"

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "SMS_GSM"

    if-ne v3, v4, :cond_2

    .line 704
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 707
    if-eqz v36, :cond_1

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 708
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 709
    const/16 v27, 0x1

    .line 710
    sget-object v15, Lcom/motorola/android/bmessage/BMessageComposer;->smsProjection:[Ljava/lang/String;

    .local v15, arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v37, v0

    .local v37, len$:I
    const/16 v35, 0x0

    .local v35, i$:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_2

    aget-object v21, v15, v35

    .line 711
    .local v21, columnName:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 715
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v21           #columnName:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v37           #len$:I
    :cond_1
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " The numbers of rows in the iCursor is invalid and no sms data could be stored!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "MMS"

    if-ne v3, v4, :cond_5

    .line 722
    :try_start_0
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " Entry createOneEntryInternal() MMS offset."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v45

    .line 724
    .local v45, pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v3, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v38

    check-cast v38, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 729
    .local v38, mmsPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual/range {v38 .. v38}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v16

    .line 730
    .local v16, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v42

    .line 733
    .local v42, numParts:I
    const/16 v48, 0x0

    .line 735
    .local v48, text:Ljava/lang/String;
    const/16 v34, 0x0

    .local v34, i:I
    :goto_1
    move/from16 v0, v34

    move/from16 v1, v42

    if-ge v0, v1, :cond_3

    .line 736
    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v43

    .line 737
    .local v43, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 738
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v19

    .line 739
    .local v19, bytes:[B
    invoke-virtual/range {v43 .. v43}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v20

    .line 740
    .local v20, charset:I
    if-eqz v19, :cond_3

    .line 741
    new-instance v50, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v50

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 742
    .local v50, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v50 .. v50}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v48

    .line 747
    .end local v19           #bytes:[B
    .end local v20           #charset:I
    .end local v43           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v50           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Get MMS body text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v3, "Body"

    move-object/from16 v0, v23

    move-object/from16 v1, v48

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " CreateOneEntryInternal() query other MMS data in database."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mmsProjection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mmsSelection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selectionArgs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 761
    if-eqz v36, :cond_5

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 762
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 763
    const/16 v27, 0x1

    .line 765
    sget-object v15, Lcom/motorola/android/bmessage/BMessageComposer;->mmsProjection:[Ljava/lang/String;

    .restart local v15       #arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v37, v0

    .restart local v37       #len$:I
    const/16 v35, 0x0

    .restart local v35       #i$:I
    :goto_2
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_5

    aget-object v21, v15, v35

    .line 766
    .restart local v21       #columnName:Ljava/lang/String;
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MMS data, columnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v36

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    add-int/lit8 v35, v35, 0x1

    goto :goto_2

    .line 735
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v21           #columnName:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v37           #len$:I
    .restart local v43       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 772
    .end local v16           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v34           #i:I
    .end local v38           #mmsPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v42           #numParts:I
    .end local v43           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v45           #pduPersister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v48           #text:Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 773
    .local v28, e:Lcom/google/android/mms/MmsException;
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type of the message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    .end local v28           #e:Lcom/google/android/mms/MmsException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v4, "EMAIL"

    if-ne v3, v4, :cond_b

    .line 778
    sget-object v3, Landroid/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v49

    .line 779
    .local v49, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "message_id"

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 780
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v30

    .line 782
    .local v30, emailBodyUri:Landroid/net/Uri;
    const-string v22, "content_type=?"

    .line 783
    .local v22, contentTypeSelection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "text/plain"

    aput-object v4, v14, v3

    .line 794
    .local v14, ContentTypeSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "preview"

    aput-object v8, v5, v6

    const-string v6, "_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 797
    if-eqz v36, :cond_7

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 798
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 799
    const-string v3, "Body"

    const-string v4, "preview"

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :goto_3
    const/16 v24, 0x0

    .line 831
    .local v24, currentFolder:Ljava/lang/String;
    const/16 v26, 0x0

    .line 832
    .local v26, currentNodeParentId:Ljava/lang/String;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v31, emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "folder_type"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "parent_id"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "name"

    aput-object v4, v10, v3

    .line 834
    .local v10, emailPathProjection:[Ljava/lang/String;
    const-string v11, "_id=?"

    .line 835
    .local v11, emailPathSelection:Ljava/lang/String;
    const/16 v33, 0x0

    .line 838
    .local v33, getPath:Z
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->requery()Z

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "parent_id"

    aput-object v8, v5, v6

    const-string v6, "_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 842
    if-eqz v36, :cond_6

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 843
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 844
    const-string v3, "parent_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 846
    .local v25, currentFolderIndex:I
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->requery()Z

    .line 847
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 849
    if-eqz v36, :cond_6

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 850
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 851
    const-string v3, "folder_type"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 853
    const/16 v33, 0x1

    .line 854
    packed-switch v25, :pswitch_data_0

    .line 874
    const/16 v33, 0x0

    .line 879
    .end local v25           #currentFolderIndex:I
    :cond_6
    :goto_4
    if-nez v33, :cond_9

    if-eqz v36, :cond_9

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 881
    :goto_5
    const-string v3, "folder_type"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 883
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v44, pathBuilder:Ljava/lang/StringBuilder;
    const-string v3, "telecom\\msg"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-static/range {v31 .. v31}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 886
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 887
    .local v41, nodeName:Ljava/lang/String;
    const/16 v3, 0x5c

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 801
    .end local v10           #emailPathProjection:[Ljava/lang/String;
    .end local v11           #emailPathSelection:Ljava/lang/String;
    .end local v24           #currentFolder:Ljava/lang/String;
    .end local v26           #currentNodeParentId:Ljava/lang/String;
    .end local v31           #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33           #getPath:Z
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v41           #nodeName:Ljava/lang/String;
    .end local v44           #pathBuilder:Ljava/lang/StringBuilder;
    :cond_7
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, "empty email body"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v3, "Body"

    const-string v4, ""

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 856
    .restart local v10       #emailPathProjection:[Ljava/lang/String;
    .restart local v11       #emailPathSelection:Ljava/lang/String;
    .restart local v24       #currentFolder:Ljava/lang/String;
    .restart local v25       #currentFolderIndex:I
    .restart local v26       #currentNodeParentId:Ljava/lang/String;
    .restart local v31       #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v33       #getPath:Z
    :pswitch_0
    const-string v3, "telecom\\msg"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    .line 859
    :pswitch_1
    const-string v3, "telecom\\msg\\deleted"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    .line 862
    :pswitch_2
    const-string v3, "telecom\\msg\\drafts"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    .line 865
    :pswitch_3
    const-string v3, "telecom\\msg\\inbox"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    .line 868
    :pswitch_4
    const-string v3, "telecom\\msg\\outbox"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto :goto_4

    .line 871
    :pswitch_5
    const-string v3, "telecom\\msg\\sent"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    goto/16 :goto_4

    .line 891
    .end local v25           #currentFolderIndex:I
    .restart local v35       #i$:Ljava/util/Iterator;
    .restart local v44       #pathBuilder:Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgFolder:Ljava/lang/String;

    .line 893
    const/16 v33, 0x1

    .line 910
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v44           #pathBuilder:Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v33, :cond_b

    .line 912
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->requery()Z

    .line 913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 916
    if-eqz v36, :cond_b

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_b

    .line 917
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    .line 918
    const/16 v27, 0x1

    .line 919
    sget-object v15, Lcom/motorola/android/bmessage/BMessageComposer;->emailProjection:[Ljava/lang/String;

    .restart local v15       #arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v37, v0

    .restart local v37       #len$:I
    const/16 v35, 0x0

    .local v35, i$:I
    :goto_7
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    aget-object v21, v15, v35

    .line 920
    .restart local v21       #columnName:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 897
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v21           #columnName:Ljava/lang/String;
    .end local v35           #i$:I
    .end local v37           #len$:I
    :cond_a
    const-string v3, "name"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    const-string v3, "parent_id"

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 900
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->requery()Z

    .line 901
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailFolderUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v26, v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 903
    if-eqz v36, :cond_9

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_9

    .line 906
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_5

    .line 927
    .end local v10           #emailPathProjection:[Ljava/lang/String;
    .end local v11           #emailPathSelection:Ljava/lang/String;
    .end local v14           #ContentTypeSelectionArgs:[Ljava/lang/String;
    .end local v22           #contentTypeSelection:Ljava/lang/String;
    .end local v24           #currentFolder:Ljava/lang/String;
    .end local v26           #currentNodeParentId:Ljava/lang/String;
    .end local v30           #emailBodyUri:Landroid/net/Uri;
    .end local v31           #emailFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33           #getPath:Z
    .end local v49           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_b
    if-eqz v36, :cond_c

    .line 928
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_c
    if-nez v27, :cond_d

    .line 932
    const/4 v3, 0x0

    .line 959
    :goto_8
    return-object v3

    .line 935
    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v18, builder:Ljava/lang/StringBuilder;
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " [1]. Start to append \'BEGIN:BMSG\' to string builder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v3, "BEGIN"

    const-string v4, "BMSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " ################ [1]. Builder String: ################ "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " [2]. Start to append \'property\' to string builder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendProperty(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 944
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " ################ [2]. Builder String: ################ "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " [3]. Start to append \'originator\' to string builder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendOriginator(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 949
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " ################ [3]. Builder String: ################ "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " [4]. Start to append \'envelope\' to string builder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageComposer;->appendEnvelope(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 954
    const-string v3, "END"

    const-string v4, "BMSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v4}, Lcom/motorola/android/bmessage/BMessageComposer;->appendBMessageLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " ################ [4]. Builder String: ################ "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v3, "bmessage.BMessageComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " **** compose bmessage string finished and return by createOneEntryInternal(). ****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addHandler(Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public createOneEntry()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 617
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, " ==== Enter createOneEntry() ===="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 619
    :cond_0
    const-string v5, "The BMessage composer object is not correctly initialized"

    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    .line 620
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "mCursor point to invalid entry."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "==== createOneEntry() exit and return fail. ===="

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return v4

    .line 625
    :cond_1
    const/4 v0, 0x0

    .line 628
    .local v0, bmessage:Ljava/lang/String;
    :try_start_0
    iget v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    if-ltz v5, :cond_2

    .line 629
    const-string v5, "bmessage.BMessageComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The SMS message \'_id\' string value is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    iget v8, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, " Start to call createOneEntryInternal() to get msg info and do encode."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/bmessage/BMessageComposer;->createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 645
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 649
    if-nez v0, :cond_3

    .line 650
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, " bmessage encoded string returned from createOneEntryInternal() is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_2
    :try_start_1
    const-string v5, "bmessage.BMessageComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect mIDColumn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 637
    :catch_0
    move-exception v1

    .line 640
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 645
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    throw v4

    .line 657
    :cond_3
    iget-boolean v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    if-eqz v5, :cond_5

    .line 658
    iget-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 659
    .local v2, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "Start to call onEntryCreated() to write bmessage encoded string."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-interface {v2, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 661
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "onEntryCreated() return fail."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v5, "bmessage.BMessageComposer"

    const-string v6, "==== createOneEntry() exit and return fail. ==== "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 667
    .end local v2           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 668
    .restart local v2       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "Start to call onEntryCreated() to write bmessage encoded string."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-interface {v2, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    .line 670
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "onEntryCreated() return."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 673
    .end local v2           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_6
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, "==== createOneEntry() exit and return successful. ==== "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 991
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " Enter finalize()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 993
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " Start run terminate()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageComposer;->terminate()V

    .line 996
    :cond_0
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " Exit finalize()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    .line 1003
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "msgType"
    .parameter "charSet"

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/motorola/android/bmessage/BMessageComposer;->init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "msgType"
    .parameter "charSet"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 489
    iput-object p3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    .line 491
    if-nez p4, :cond_0

    .line 492
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init(), null charset ===="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 606
    :goto_0
    return v0

    .line 496
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    .line 505
    :goto_1
    iput v10, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    .line 506
    iput v10, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    move-object v0, v5

    .line 507
    check-cast v0, [[B

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    .line 509
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init(), input para is: ===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-eqz p2, :cond_4

    .line 511
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_2
    iget-boolean v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_6

    .line 519
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 520
    .local v8, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 522
    .local v7, finished:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onTerminate()V

    goto :goto_3

    .line 498
    .end local v7           #finished:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v0, "NATIVE"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    const-string v0, "NATIVE"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCharSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 501
    :cond_3
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, " ==== Enter init() , non-support charset: charSet ===="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 502
    goto/16 :goto_0

    .line 514
    :cond_4
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " charSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .restart local v8       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_5
    move v0, v10

    .line 524
    goto/16 :goto_0

    .line 529
    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 530
    .restart local v8       #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_4

    .line 534
    .end local v8           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_7
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_CDMA"

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "SMS_GSM"

    if-ne v0, v1, :cond_9

    .line 536
    :cond_8
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz p2, :cond_c

    .line 538
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_5
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "MMS"

    if-ne v0, v1, :cond_a

    .line 549
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz p2, :cond_d

    .line 551
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_6
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 562
    :cond_a
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mMsgType:Ljava/lang/String;

    const-string v1, "EMAIL"

    if-ne v0, v1, :cond_b

    .line 563
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to do mContentResolver.query(), input para is:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    if-eqz p2, :cond_e

    .line 565
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_7
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailDataRequestUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 577
    :cond_b
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_f

    .line 578
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Failed to query the requested Msg info."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return fail. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    move v0, v10

    .line 581
    goto/16 :goto_0

    .line 541
    :cond_c
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sSMSProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 554
    :cond_d
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sMMSProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 568
    :cond_e
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Projection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/bmessage/BMessageComposer;->sEmailProjection:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionArgs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 584
    :cond_f
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mContentResolver.query() returned successfully, and mCursor has the entry queried."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Start to move mCursor to the first row entry."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_11

    .line 588
    :cond_10
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "Failed to move mCursor to the first Entry position."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor is set to null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 597
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    .line 599
    :goto_8
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return fail. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 600
    goto/16 :goto_0

    .line 591
    :catch_0
    move-exception v6

    .line 592
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor is set to null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 597
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_8

    .line 595
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "bmessage.BMessageComposer"

    const-string v2, "mCursor is set to null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 597
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 602
    :cond_11
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "mCursor moved to the first entry successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    .line 604
    const-string v0, "bmessage.BMessageComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Msg message \'_id\' column index is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mIdColumn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "bmessage.BMessageComposer"

    const-string v1, "==== init() exit and return successfully. ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1008
    const/4 v0, 0x0

    .line 1010
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 963
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " Enter terminate()."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;

    .line 966
    .local v1, handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " Start run handler.onTerminate() ."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-interface {v1}, Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 970
    .end local v1           #handler:Lcom/motorola/android/bmessage/BMessageComposer$OneEntryHandler;
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    .line 972
    :try_start_0
    const-string v4, "bmessage.BMessageComposer"

    const-string v5, " mCursor.close() ."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_1
    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mCursor:Landroid/database/Cursor;

    .line 981
    :cond_1
    iput v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mBegPos:I

    .line 982
    iput v7, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mEndPos:I

    .line 983
    check-cast v3, [[B

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mSmsPdus:[[B

    .line 985
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/android/bmessage/BMessageComposer;->mTerminateIsCalled:Z

    .line 986
    const-string v3, "bmessage.BMessageComposer"

    const-string v4, " Exit terminate()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "bmessage.BMessageComposer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteException on Cursor#close(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
