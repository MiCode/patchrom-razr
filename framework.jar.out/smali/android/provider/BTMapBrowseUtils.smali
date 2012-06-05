.class public final Landroid/provider/BTMapBrowseUtils;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BTMapBrowseUtils$MmsAttributes;,
        Landroid/provider/BTMapBrowseUtils$Message;,
        Landroid/provider/BTMapBrowseUtils$MessageListingParams;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_NOTIFICATION:Ljava/lang/String; = "com.motorola.blur.conversations.notification.ACTION_CLEAR_NOTIFICATION"

.field public static ATTACHMENT_SIZE:B = 0x0t

.field private static final CANONICAL_ADDRESS_URI:Landroid/net/Uri; = null

.field private static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_FOLDER_NAME:I = 0x1

.field private static final EMAIL_FOLDER_PARENT:I = 0x2

.field private static final EMAIL_FOLDER_TYPE:I = 0x3

.field private static EM_BCC:I = 0x0

.field private static EM_CC:I = 0x0

.field private static EM_DOWNSTATUS:I = 0x0

.field private static EM_FROM:I = 0x0

.field private static EM_PRIORITY:I = 0x0

.field private static EM_RECVD:I = 0x0

.field private static EM_REPLYTO:I = 0x0

.field private static EM_SENT:I = 0x0

.field private static EM_STATUS:I = 0x0

.field private static EM_SUBJECT:I = 0x0

.field private static EM_SYNC:I = 0x0

.field private static EM_TO:I = 0x0

.field private static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.motorola.blur.conversations.notification.EXTRA_NOTIFICATION_ID"

.field public static HANDLE:B = 0x0t

.field private static final INVALID:I = -0x1

.field private static final LOG_DEV:Z = true

.field private static MMS_DATE:I = 0x0

.field private static MMS_MESSAGETYPE:I = 0x0

.field private static MMS_PRIORITY:I = 0x0

.field private static MMS_PUSHED_VIA_MAP:Z = false

.field private static MMS_READ:I = 0x0

.field private static MMS_RESPONSESTATUS:I = 0x0

.field private static MMS_RETRIEVESTATUS:I = 0x0

.field private static MMS_STATUS:I = 0x0

.field private static MMS_SUBJECT:I = 0x0

.field private static MMS_SUBJECT_CHARSET:I = 0x0

.field private static MMS_TID:I = 0x0

.field public static final MSG:Ljava/lang/String; = "msg"

.field private static final MSG_CLR_NOTIFICATION_ID:I = 0x379ab

.field private static NO:Ljava/lang/String; = null

.field public static PRIORITY:B = 0x0t

.field public static PROTECTED_FIELD:B = 0x0t

.field public static READ:B = 0x0t

.field public static RECEPTION_STATUS:B = 0x0t

.field public static RECP_ADDRESS:B = 0x0t

.field public static RECP_NAME:B = 0x0t

.field public static REPLYTO_ADDRESS:B = 0x0t

.field public static SENDER_ADDRESS:B = 0x0t

.field public static SENDER_NAME:B = 0x0t

.field public static SENT:B = 0x0t

.field public static SIZE:B = 0x0t

.field private static SMS_ADDRESS:I = 0x0

.field private static SMS_BODY:I = 0x0

.field private static SMS_DATE:I = 0x0

.field private static SMS_PRIORITY:I = 0x0

.field private static SMS_READ:I = 0x0

.field private static SMS_STATUS:I = 0x0

.field private static SMS_TID:I = 0x0

.field public static SUBJECT:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "BTMapBrowseUtils"

.field public static final TELECOM:Ljava/lang/String; = "telecom"

.field public static TEXT:B = 0x0t

.field private static THREADS_RECP:I = 0x0

.field public static TYPE:B = 0x0t

.field private static YES:Ljava/lang/String; = null

.field private static _ID:I = 0x0

.field private static final sACCOUNT_ID_NOT_SET:J = -0x1L

.field private static final sALLTHREADSURI:Landroid/net/Uri; = null

.field private static sDEFAULT_EMAIL_ACCOUNT:J = 0x0L

.field public static final sDELETEDFOLDER:Ljava/lang/String; = "deleted"

.field public static final sDRAFTSFOLDER:Ljava/lang/String; = "drafts"

.field private static sEMAILPROJ:[Ljava/lang/String; = null

.field public static final sFAILEDFOLDER:Ljava/lang/String; = "failed"

.field private static sFOLDERPROJ:[Ljava/lang/String; = null

.field public static final sINBOXFOLDER:Ljava/lang/String; = "inbox"

.field private static sMMSPROJECTION:[Ljava/lang/String; = null

.field public static final sOUTBOXFOLDER:Ljava/lang/String; = "outbox"

.field public static final sQUEUEDFOLDER:Ljava/lang/String; = "queued"

.field public static final sSENTFOLDER:Ljava/lang/String; = "sent"

.field private static sSMSPROJECTION:[Ljava/lang/String;

.field private static final sTHREADSPROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 55
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "simple"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    .line 67
    sput v3, Landroid/provider/BTMapBrowseUtils;->THREADS_RECP:I

    .line 68
    sput-boolean v4, Landroid/provider/BTMapBrowseUtils;->MMS_PUSHED_VIA_MAP:Z

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    .line 76
    sput v4, Landroid/provider/BTMapBrowseUtils;->_ID:I

    .line 77
    sput v3, Landroid/provider/BTMapBrowseUtils;->SMS_ADDRESS:I

    .line 78
    sput v5, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    .line 79
    sput v6, Landroid/provider/BTMapBrowseUtils;->SMS_READ:I

    .line 80
    sput v7, Landroid/provider/BTMapBrowseUtils;->SMS_STATUS:I

    .line 81
    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_BODY:I

    .line 82
    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_TID:I

    .line 83
    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_PRIORITY:I

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string/jumbo v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    .line 98
    sput v3, Landroid/provider/BTMapBrowseUtils;->MMS_TID:I

    .line 99
    sput v5, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    .line 100
    sput v6, Landroid/provider/BTMapBrowseUtils;->MMS_PRIORITY:I

    .line 101
    sput v7, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT:I

    .line 102
    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_READ:I

    .line 103
    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_STATUS:I

    .line 104
    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_RETRIEVESTATUS:I

    .line 105
    const/16 v0, 0x8

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_RESPONSESTATUS:I

    .line 106
    const/16 v0, 0x9

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_MESSAGETYPE:I

    .line 107
    const/16 v0, 0xa

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT_CHARSET:I

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "pri"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "st"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_type"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    .line 124
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    .line 140
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "parent_id"

    aput-object v1, v0, v5

    const-string v1, "folder_type"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    .line 147
    sput v3, Landroid/provider/BTMapBrowseUtils;->EM_BCC:I

    .line 148
    sput v5, Landroid/provider/BTMapBrowseUtils;->EM_CC:I

    .line 149
    sput v6, Landroid/provider/BTMapBrowseUtils;->EM_RECVD:I

    .line 150
    sput v7, Landroid/provider/BTMapBrowseUtils;->EM_SENT:I

    .line 151
    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_DOWNSTATUS:I

    .line 152
    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_FROM:I

    .line 153
    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_PRIORITY:I

    .line 154
    const/16 v0, 0x8

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_REPLYTO:I

    .line 155
    const/16 v0, 0x9

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    .line 156
    const/16 v0, 0xa

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_SUBJECT:I

    .line 157
    const/16 v0, 0xb

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_TO:I

    .line 158
    const/16 v0, 0xc

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_SYNC:I

    .line 160
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "bcc"

    aput-object v1, v0, v3

    const-string v1, "cc"

    aput-object v1, v0, v5

    const-string v1, "date_received"

    aput-object v1, v0, v6

    const-string v1, "date_sent"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "download_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sync_status"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    .line 177
    sput-byte v4, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    .line 178
    sput-byte v3, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    .line 180
    sput-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    .line 181
    sput-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    .line 182
    sput-byte v7, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    .line 183
    const/4 v0, 0x5

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    .line 184
    const/4 v0, 0x6

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    .line 185
    const/4 v0, 0x7

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    .line 186
    const/16 v0, 0x8

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    .line 187
    const/16 v0, 0x9

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    .line 188
    const/16 v0, 0xa

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    .line 189
    const/16 v0, 0xb

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    .line 190
    const/16 v0, 0xc

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->READ:B

    .line 191
    const/16 v0, 0xd

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->SENT:B

    .line 192
    const/16 v0, 0xe

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    .line 193
    const/16 v0, 0xf

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    .line 195
    const-string/jumbo v0, "yes"

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    .line 196
    const-string v0, "no"

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    .line 933
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    return-void
.end method

.method private static encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 831
    .local v0, count:I
    if-lez v0, :cond_0

    .line 832
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 833
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 834
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 838
    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "thread_id"
    .parameter "threadsCursor"
    .parameter "recpCursor"

    .prologue
    const/4 v7, 0x0

    .line 559
    const-wide/16 v5, 0x0

    .line 560
    .local v5, tid:J
    const/4 v4, 0x0

    .line 561
    .local v4, recps:Ljava/lang/String;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 562
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_0

    .line 563
    sget v8, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 564
    cmp-long v8, v5, p1

    if-nez v8, :cond_2

    .line 565
    sget v8, Landroid/provider/BTMapBrowseUtils;->THREADS_RECP:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    :cond_0
    cmp-long v8, v5, p1

    if-eqz v8, :cond_3

    .line 588
    :cond_1
    :goto_1
    return-object v7

    .line 568
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 572
    :cond_3
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, recp_ids:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, addr_builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_4

    aget-object v8, v3, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 575
    :cond_4
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 576
    :goto_3
    invoke-interface {p4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_8

    .line 577
    const/4 v2, 0x0

    .local v2, k:I
    :goto_4
    array-length v7, v3

    if-ge v2, v7, :cond_7

    .line 578
    aget-object v7, v3, v2

    sget v8, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 579
    const/4 v7, 0x1

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 581
    aget-object v7, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 582
    :cond_6
    aget-object v7, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 585
    :cond_7
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 587
    .end local v2           #k:I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getAndSetDefaultEmailAccount(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1187
    const-wide/16 v6, -0x1

    .line 1188
    .local v6, account_id:J
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndSetDefaultEmailAccount, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    .line 1199
    :goto_0
    return-wide v0

    .line 1190
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.motorola.blur.setupprovider/app_settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v5

    const-string v3, "name = \'com.motorola.blur.email.pref_default_email_account\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1194
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1195
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 1196
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1198
    :cond_2
    invoke-static {v6, v7}, Landroid/provider/BTMapBrowseUtils;->setDefaultEmailAccount(J)V

    move-wide v0, v6

    .line 1199
    goto :goto_0

    .line 1196
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEmailMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 31
    .parameter "context"
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1365
    const/4 v13, 0x0

    .local v13, list_size:I
    const/16 v19, 0x0

    .line 1367
    .local v19, msg_size:I
    invoke-static/range {p1 .. p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v21

    .line 1368
    .local v21, parent:J
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1510
    :goto_0
    return-object v3

    .line 1369
    :cond_0
    const/4 v12, 0x1

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v12, v3, :cond_2

    .line 1370
    aget-object v3, p2, v12

    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v21

    .line 1371
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 1369
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1373
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1375
    .local v6, selection:Ljava/lang/String;
    const-string v3, "EMAIL"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1377
    .local v28, temp_string:Ljava/lang/String;
    if-eqz v28, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1378
    :cond_3
    const-string v3, "date_received"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1379
    if-eqz v28, :cond_5

    .line 1380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1381
    const-string v3, "date_sent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1382
    if-eqz v28, :cond_4

    .line 1383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1386
    :cond_4
    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1389
    :cond_5
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date_received DESC, modified DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1392
    .local v18, msgListCursor:Landroid/database/Cursor;
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    if-eqz v18, :cond_19

    .line 1395
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1396
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1397
    if-nez v13, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1398
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v15, messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_18

    .line 1401
    const-wide/16 v16, 0x0

    .line 1402
    .local v16, msgId:J
    const/16 v25, 0x0

    .line 1403
    .local v25, skip:Z
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    and-int/lit8 v27, v3, 0x4

    .line 1404
    .local v27, temp_int:I
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->readStatusFilter()I

    move-result v23

    .line 1405
    .local v23, readStatusFilter:I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    if-gtz v27, :cond_e

    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    if-gtz v27, :cond_e

    .line 1407
    :cond_8
    new-instance v14, Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    .line 1408
    .local v14, message:Landroid/provider/BTMapBrowseUtils$Message;
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    if-lez v27, :cond_f

    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1412
    :goto_3
    sget v3, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1413
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    const-string v4, "EMAIL"

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1415
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_SUBJECT:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1416
    .local v26, subject:Ljava/lang/String;
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Subject : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1418
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-gt v3, v4, :cond_10

    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object/from16 v0, v26

    invoke-virtual {v14, v3, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1422
    :goto_4
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_SENT:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    .line 1424
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_FROM:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1425
    .local v11, from:Ljava/lang/String;
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_REPLYTO:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1427
    .local v24, replyTo:Ljava/lang/String;
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_CC:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1428
    .local v10, cc:Ljava/lang/String;
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_BCC:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1430
    .local v9, bcc:Ljava/lang/String;
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_TO:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1431
    .local v30, toFromDb:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1432
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1438
    :cond_9
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1439
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1446
    :cond_a
    :goto_6
    const-string v3, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1447
    .local v29, to:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1450
    .local v20, namesAndEmails:[Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 1451
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v3}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1452
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1453
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    const/4 v4, 0x1

    aget-object v4, v20, v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1455
    :cond_b
    if-eqz v29, :cond_c

    .line 1456
    invoke-static/range {v29 .. v29}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1457
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1458
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    const/4 v4, 0x1

    aget-object v4, v20, v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1460
    :cond_c
    if-eqz v24, :cond_d

    .line 1461
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v24, v3, v4

    invoke-static {v3}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1462
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    const/4 v4, 0x0

    aget-object v4, v20, v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1467
    :cond_d
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sender address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    invoke-virtual {v14, v5}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nsender names : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    invoke-virtual {v14, v5}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nrecp address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    invoke-virtual {v14, v5}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nrecp names : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    invoke-virtual {v14, v5}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nreply to addr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    invoke-virtual {v14, v5}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    const-string v4, "EMAIL"

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1475
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_SYNC:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1476
    move-object/from16 v0, p1

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromId(Landroid/content/Context;J)J

    move-result-wide v3

    const-wide/16 v7, 0x6

    cmp-long v3, v3, v7

    if-nez v3, :cond_14

    if-nez v27, :cond_14

    .line 1478
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1479
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v4, "complete"

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1480
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getEmailTextSize(Landroid/content/Context;J)I

    move-result v19

    .line 1489
    :goto_7
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1490
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v4, "0"

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1491
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-lez v19, :cond_16

    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1495
    :goto_8
    sget v3, Landroid/provider/BTMapBrowseUtils;->EM_PRIORITY:I

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1496
    const/4 v3, 0x3

    move/from16 v0, v27

    if-le v0, v3, :cond_17

    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1499
    :goto_9
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1500
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Email : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    .end local v9           #bcc:Ljava/lang/String;
    .end local v10           #cc:Ljava/lang/String;
    .end local v11           #from:Ljava/lang/String;
    .end local v14           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v20           #namesAndEmails:[Ljava/lang/String;
    .end local v24           #replyTo:Ljava/lang/String;
    .end local v26           #subject:Ljava/lang/String;
    .end local v29           #to:[Ljava/lang/String;
    .end local v30           #toFromDb:Ljava/lang/String;
    :cond_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 1400
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1410
    .restart local v14       #message:Landroid/provider/BTMapBrowseUtils$Message;
    :cond_f
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1419
    .restart local v26       #subject:Ljava/lang/String;
    :cond_10
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1420
    :cond_11
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const-string v4, ""

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1435
    .restart local v9       #bcc:Ljava/lang/String;
    .restart local v10       #cc:Ljava/lang/String;
    .restart local v11       #from:Ljava/lang/String;
    .restart local v24       #replyTo:Ljava/lang/String;
    .restart local v30       #toFromDb:Ljava/lang/String;
    :cond_12
    move-object/from16 v30, v10

    goto/16 :goto_5

    .line 1442
    :cond_13
    move-object/from16 v30, v9

    goto/16 :goto_6

    .line 1482
    .restart local v20       #namesAndEmails:[Ljava/lang/String;
    .restart local v29       #to:[Ljava/lang/String;
    :cond_14
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1483
    if-nez v27, :cond_15

    .line 1484
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v4, "complete"

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 1485
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getEmailTextSize(Landroid/content/Context;J)I

    move-result v19

    goto/16 :goto_7

    .line 1486
    :cond_15
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v4, "notification"

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1493
    :cond_16
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 1498
    :cond_17
    sget-byte v3, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v4, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1505
    .end local v9           #bcc:Ljava/lang/String;
    .end local v10           #cc:Ljava/lang/String;
    .end local v11           #from:Ljava/lang/String;
    .end local v14           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v16           #msgId:J
    .end local v20           #namesAndEmails:[Ljava/lang/String;
    .end local v23           #readStatusFilter:I
    .end local v24           #replyTo:Ljava/lang/String;
    .end local v25           #skip:Z
    .end local v26           #subject:Ljava/lang/String;
    .end local v27           #temp_int:I
    .end local v29           #to:[Ljava/lang/String;
    .end local v30           #toFromDb:Ljava/lang/String;
    :cond_18
    const-string v3, "BTMapBrowseUtils"

    const-string v4, "Emails done"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1507
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/provider/BTMapBrowseUtils$Message;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/provider/BTMapBrowseUtils$Message;

    goto/16 :goto_0

    .line 1510
    .end local v15           #messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private static getEmailTextSize(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1514
    const/4 v7, -0x1

    .line 1515
    .local v7, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'text/plain%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$BodyParts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "size"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1519
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1520
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1523
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1525
    :cond_1
    return v7
.end method

.method public static getFolderFromMessageId(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1311
    const-wide/16 v7, -0x1

    .line 1312
    .local v7, fid:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "parent_id"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1315
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1316
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1319
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_1
    return-wide v7
.end method

.method private static getFolderId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 1252
    const-wide/16 v7, -0x1

    .line 1253
    .local v7, id:J
    const-wide/16 v9, 0xff

    .line 1254
    .local v9, type:J
    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromName(Ljava/lang/String;)J

    move-result-wide v9

    .line 1255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folder_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, selection:Ljava/lang/String;
    const-wide/16 v0, 0xff

    cmp-long v0, v9, v0

    if-nez v0, :cond_1

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND name LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1263
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1265
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1266
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1267
    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1269
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1271
    :cond_3
    return-wide v7
.end method

.method private static getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1205
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1209
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1211
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v7, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1213
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1214
    .local v11, type:J
    const-wide/16 v0, 0xff

    cmp-long v0, v11, v0

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1216
    .local v9, name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1217
    .local v10, size:I
    if-lez v10, :cond_2

    .line 1218
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 1219
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1220
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1221
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "added at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    .end local v8           #i:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #size:I
    :cond_0
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1218
    .restart local v8       #i:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1225
    .end local v8           #i:I
    :cond_2
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1229
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #size:I
    .end local v11           #type:J
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1233
    .end local v7           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-object v7

    :cond_4
    move-object v7, v4

    goto :goto_3
.end method

.method private static getFolderNameFromId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1298
    const/4 v7, 0x0

    .line 1299
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1301
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1302
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1305
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1307
    :cond_1
    return-object v7
.end method

.method public static getFolderPathForFolder(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "folder_id"

    .prologue
    const-wide/16 v6, 0x1

    .line 1345
    const-wide/16 v0, 0x0

    .line 1346
    .local v0, folder_type:J
    const/4 v2, 0x0

    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1348
    .local v3, path:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 1349
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    .line 1360
    :cond_1
    :goto_0
    return-object v3

    .line 1350
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderNameFromId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1351
    if-eqz v2, :cond_3

    .line 1352
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1353
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1358
    :cond_3
    :goto_1
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getParentFolder(Landroid/content/Context;J)J

    move-result-wide p1

    .line 1359
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1355
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getFolderPathFromMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1325
    const-wide/16 v0, 0x0

    .line 1326
    .local v0, folder_id:J
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderFromMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 1327
    invoke-static {p0, v0, v1}, Landroid/provider/BTMapBrowseUtils;->getFolderPathForFolder(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFolderTypeFromId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    .line 1285
    const-wide/16 v7, -0x1

    .line 1286
    .local v7, type:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1288
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1289
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1292
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1294
    :cond_1
    return-wide v7
.end method

.method private static getFolderTypeFromName(Ljava/lang/String;)J
    .locals 3
    .parameter "name"

    .prologue
    .line 1275
    const-wide/16 v0, 0xff

    .line 1276
    .local v0, type:J
    const-string v2, "inbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x4

    .line 1281
    :cond_0
    :goto_0
    return-wide v0

    .line 1277
    :cond_1
    const-string v2, "outbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x5

    goto :goto_0

    .line 1278
    :cond_2
    const-string/jumbo v2, "sent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x6

    goto :goto_0

    .line 1279
    :cond_3
    const-string v2, "drafts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1280
    :cond_4
    const-string v2, "deleted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method private getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;
    .locals 7
    .parameter "charset"
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    .line 908
    const/4 v2, 0x0

    .line 910
    .local v2, text:Ljava/lang/String;
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessageBody: charset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v3, "native"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageType()I

    move-result v1

    .line 915
    .local v1, msgType:I
    if-nez v1, :cond_1

    .line 916
    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyDataBytes()[[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/android/bmessage/SmsUtils;->newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 921
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 922
    const-string v3, "BTMapBrowseUtils"

    const-string v4, "SmsUtils.newFromTLPDU returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    new-instance v2, Ljava/lang/String;

    .end local v2           #text:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 930
    .end local v0           #msg:Landroid/telephony/SmsMessage;
    .end local v1           #msgType:I
    .restart local v2       #text:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 917
    .restart local v0       #msg:Landroid/telephony/SmsMessage;
    .restart local v1       #msgType:I
    :cond_1
    if-ne v1, v6, :cond_0

    .line 918
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyDataBytes()[[B

    move-result-object v3

    invoke-static {v6, v3}, Lcom/motorola/android/bmessage/SmsUtils;->newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0

    .line 925
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 928
    .end local v0           #msg:Landroid/telephony/SmsMessage;
    .end local v1           #msgType:I
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getMmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 38
    .parameter "context"
    .parameter "folder"
    .parameter "params"
    .parameter "isShowNetworkTimestamp"

    .prologue
    .line 593
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .local v8, selection:Ljava/lang/String;
    const/16 v33, 0x0

    .line 594
    .local v33, temp_string:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, list_size:I
    const/16 v25, 0x0

    .line 595
    .local v25, msg_size:I
    const-string v5, "inbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 596
    const-string v8, "msg_box = 1"

    .line 606
    :goto_0
    const-string v5, "MMS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 607
    if-eqz v33, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForReadStatus()Ljava/lang/String;

    move-result-object v33

    .line 609
    if-eqz v33, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 610
    :cond_1
    const-string v5, "date"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 611
    if-eqz v33, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 614
    :cond_2
    if-eqz p4, :cond_7

    .line 615
    sget-object v5, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    sget v6, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    const-string v7, "date"

    aput-object v7, v5, v6

    .line 620
    :goto_1
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 623
    .local v22, msgListCursor:Landroid/database/Cursor;
    if-eqz v22, :cond_17

    .line 624
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 627
    .local v37, threadsCursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 630
    .local v29, recpCursor:Landroid/database/Cursor;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threads : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recipients : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 634
    if-nez v17, :cond_8

    const/4 v5, 0x0

    .line 724
    .end local v22           #msgListCursor:Landroid/database/Cursor;
    .end local v29           #recpCursor:Landroid/database/Cursor;
    .end local v37           #threadsCursor:Landroid/database/Cursor;
    :goto_2
    return-object v5

    .line 597
    :cond_3
    const-string v5, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 598
    const-string v8, "msg_box = 4"

    goto/16 :goto_0

    .line 599
    :cond_4
    const-string/jumbo v5, "sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 600
    const-string v8, "msg_box = 2"

    goto/16 :goto_0

    .line 601
    :cond_5
    const-string v5, "drafts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 602
    const-string v8, "msg_box = 3"

    goto/16 :goto_0

    .line 603
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 617
    :cond_7
    sget-object v5, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    sget v6, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    const-string/jumbo v7, "sort_index"

    aput-object v7, v5, v6

    goto/16 :goto_1

    .line 635
    .restart local v22       #msgListCursor:Landroid/database/Cursor;
    .restart local v29       #recpCursor:Landroid/database/Cursor;
    .restart local v37       #threadsCursor:Landroid/database/Cursor;
    :cond_8
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v19, messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 637
    const-wide/16 v35, 0x0

    .local v35, thread_id:J
    const-wide/16 v20, 0x0

    .line 638
    .local v20, msgId:J
    const/16 v32, 0x0

    .line 639
    .local v32, temp_int:I
    const/16 v30, 0x0

    .line 640
    .local v30, skip:Z
    new-instance v18, Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    .line 641
    .local v18, message:Landroid/provider/BTMapBrowseUtils$Message;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget v5, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 643
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    const-string v6, "MMS"

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v6}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 645
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 646
    .local v31, subject:Ljava/lang/String;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Subject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 648
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    add-int v25, v25, v5

    .line 649
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_b

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 653
    :goto_4
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    .line 654
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v26

    .line 655
    .local v26, myNumber:Ljava/lang/String;
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_TID:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 656
    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v27

    .line 660
    .local v27, otherNumber:Ljava/lang/String;
    if-eqz v26, :cond_9

    .line 661
    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 663
    :cond_9
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 665
    const-string v5, "inbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 666
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 667
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 672
    :goto_5
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    const-string v6, "MMS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 674
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 676
    .local v24, msgUri:Landroid/net/Uri;
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_RESPONSESTATUS:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 677
    const/16 v5, 0x80

    move/from16 v0, v32

    if-ne v0, v5, :cond_e

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 681
    :goto_6
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_PRIORITY:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 682
    const/16 v5, 0x81

    move/from16 v0, v32

    if-le v0, v5, :cond_f

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 685
    :goto_7
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_READ:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 686
    const/4 v5, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_10

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 689
    :goto_8
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 690
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_MESSAGETYPE:I

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 691
    const/16 v5, 0x82

    move/from16 v0, v32

    if-ne v0, v5, :cond_11

    .line 692
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v6, "notification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 709
    :goto_9
    if-lez v25, :cond_15

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 711
    :goto_a
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 712
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v6, "0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 713
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-nez v30, :cond_a

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    .line 636
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 650
    .end local v24           #msgUri:Landroid/net/Uri;
    .end local v26           #myNumber:Ljava/lang/String;
    .end local v27           #otherNumber:Ljava/lang/String;
    :cond_b
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 651
    :cond_c
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const-string v6, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 669
    .restart local v26       #myNumber:Ljava/lang/String;
    .restart local v27       #otherNumber:Ljava/lang/String;
    :cond_d
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 670
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 679
    .restart local v24       #msgUri:Landroid/net/Uri;
    :cond_e
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 683
    :cond_f
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 687
    :cond_10
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 693
    :cond_11
    const/16 v5, 0x84

    move/from16 v0, v32

    if-eq v0, v5, :cond_12

    const/16 v5, 0x80

    move/from16 v0, v32

    if-ne v0, v5, :cond_14

    .line 696
    :cond_12
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v28

    .line 697
    .local v28, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 698
    .local v23, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils;->getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;

    move-result-object v34

    .line 699
    .local v34, text:Ljava/lang/String;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS Text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 701
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int v25, v25, v5

    .line 703
    :cond_13
    const/16 v30, 0x0

    .line 707
    .end local v23           #msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v28           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v34           #text:Ljava/lang/String;
    :goto_b
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v6, "complete"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 704
    :catch_0
    move-exception v15

    .line 705
    .local v15, e:Lcom/google/android/mms/MmsException;
    const-string v5, "BTMapBrowseUtils"

    const-string v6, "Unknown type of the message:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 708
    .end local v15           #e:Lcom/google/android/mms/MmsException;
    :cond_14
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 710
    :cond_15
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 717
    .end local v18           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v20           #msgId:J
    .end local v24           #msgUri:Landroid/net/Uri;
    .end local v26           #myNumber:Ljava/lang/String;
    .end local v27           #otherNumber:Ljava/lang/String;
    .end local v30           #skip:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v32           #temp_int:I
    .end local v35           #thread_id:J
    :cond_16
    const-string v5, "BTMapBrowseUtils"

    const-string v6, "MMS done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 719
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 720
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/provider/BTMapBrowseUtils$Message;

    goto/16 :goto_2

    .line 724
    .end local v16           #i:I
    .end local v19           #messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    .end local v29           #recpCursor:Landroid/database/Cursor;
    .end local v37           #threadsCursor:Landroid/database/Cursor;
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_2
.end method

.method private static getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "addresses"

    .prologue
    const/4 v9, 0x0

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, concatAddr:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    .local v2, concatName:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_8

    .line 1538
    const/4 v0, 0x0

    .local v0, addr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1539
    .local v5, name:Ljava/lang/String;
    aget-object v7, p0, v3

    invoke-static {v7}, Landroid/provider/BTMapBrowseUtils;->isEmailAddressFromRegex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v0, p0, v3

    .line 1551
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1541
    :cond_5
    aget-object v7, p0, v3

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1542
    .local v6, temp:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_0

    .line 1543
    aget-object v7, v6, v4

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1544
    aget-object v7, v6, v4

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    aput-object v7, v6, v4

    .line 1545
    aget-object v7, v6, v4

    invoke-static {v7}, Landroid/provider/BTMapBrowseUtils;->isEmailAddressFromRegex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v0, v6, v4

    .line 1542
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1547
    :cond_7
    aget-object v5, v6, v4

    goto :goto_2

    .line 1560
    .end local v0           #addr:Ljava/lang/String;
    .end local v4           #j:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #temp:[Ljava/lang/String;
    :cond_8
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    return-object v7
.end method

.method public static getParentFolder(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1331
    const-wide/16 v7, -0x1

    .line 1332
    .local v7, pid:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "parent_id"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1335
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1336
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1339
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1341
    :cond_1
    return-wide v7
.end method

.method private static getPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 1173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getReportingEmailAccount()J
    .locals 2

    .prologue
    .line 1202
    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    return-wide v0
.end method

.method private static getRootFolderId(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    .line 1237
    const-wide/16 v7, -0x1

    .line 1238
    .local v7, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1243
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1246
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_1
    return-wide v7
.end method

.method private getSmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 28
    .parameter "context"
    .parameter "folder"
    .parameter "params"
    .parameter "isShowNetworkTimestamp"

    .prologue
    .line 445
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .local v8, selection:Ljava/lang/String;
    const/16 v23, 0x0

    .line 446
    .local v23, temp_string:Ljava/lang/String;
    const/16 v16, 0x0

    .line 447
    .local v16, list_size:I
    const-string v5, "inbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 448
    const-string/jumbo v8, "type = 1"

    .line 464
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForReadStatus()Ljava/lang/String;

    move-result-object v23

    .line 465
    if-eqz v23, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 466
    :cond_0
    const-string v5, "date"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 467
    if-eqz v23, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 468
    :cond_1
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query string : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz p4, :cond_8

    .line 472
    sget-object v5, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    sget v6, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    const-string v7, "date"

    aput-object v7, v5, v6

    .line 477
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 479
    .local v18, msgListCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_12

    .line 480
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 483
    .local v27, threadsCursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 486
    .local v21, recpCursor:Landroid/database/Cursor;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threads : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recipients : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 490
    if-nez v16, :cond_9

    const/16 v17, 0x0

    .line 554
    .end local v18           #msgListCursor:Landroid/database/Cursor;
    .end local v21           #recpCursor:Landroid/database/Cursor;
    .end local v27           #threadsCursor:Landroid/database/Cursor;
    :goto_2
    return-object v17

    .line 449
    :cond_2
    const-string v5, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 450
    const-string/jumbo v8, "type = 4"

    goto/16 :goto_0

    .line 451
    :cond_3
    const-string/jumbo v5, "sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 452
    const-string/jumbo v8, "type = 2"

    goto/16 :goto_0

    .line 453
    :cond_4
    const-string v5, "failed"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 454
    const-string/jumbo v8, "type = 5"

    goto/16 :goto_0

    .line 455
    :cond_5
    const-string v5, "queued"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 456
    const-string/jumbo v8, "type = 6"

    goto/16 :goto_0

    .line 457
    :cond_6
    const-string v5, "drafts"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 458
    const-string/jumbo v8, "type = 3"

    goto/16 :goto_0

    .line 459
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 474
    :cond_8
    sget-object v5, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    sget v6, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    const-string/jumbo v7, "sort_index"

    aput-object v7, v5, v6

    goto/16 :goto_1

    .line 491
    .restart local v18       #msgListCursor:Landroid/database/Cursor;
    .restart local v21       #recpCursor:Landroid/database/Cursor;
    .restart local v27       #threadsCursor:Landroid/database/Cursor;
    :cond_9
    move/from16 v0, v16

    new-array v0, v0, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v17, v0

    .line 492
    .local v17, messageListing:[Landroid/provider/BTMapBrowseUtils$Message;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 493
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 v22, 0x0

    .line 495
    .local v22, temp_int:I
    new-instance v5, Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    aput-object v5, v17, v15

    .line 496
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_BODY:I

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 497
    .local v24, text:Ljava/lang/String;
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    sget v7, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 499
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_TID:I

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 500
    .local v25, thread_id:J
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 502
    aget-object v5, v17, v15

    sget v6, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    .line 505
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v19

    .line 506
    .local v19, myNumber:Ljava/lang/String;
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    .line 510
    .local v20, otherNumber:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 511
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 513
    :cond_a
    if-eqz v20, :cond_b

    .line 514
    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 516
    :cond_b
    const-string v5, "inbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 517
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 518
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 523
    :goto_4
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 525
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 526
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 528
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_STATUS:I

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 529
    if-nez v22, :cond_d

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 533
    :goto_5
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_PRIORITY:I

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 534
    if-lez v22, :cond_e

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 537
    :goto_6
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_READ:I

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 538
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_f

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 541
    :goto_7
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 542
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v7, "complete"

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 543
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_10

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 545
    :goto_8
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 492
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 520
    :cond_c
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    .line 521
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 531
    :cond_d
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 535
    :cond_e
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 539
    :cond_f
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto :goto_7

    .line 544
    :cond_10
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v7, 0x0

    const/16 v9, 0xff

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto :goto_8

    .line 548
    .end local v19           #myNumber:Ljava/lang/String;
    .end local v20           #otherNumber:Ljava/lang/String;
    .end local v22           #temp_int:I
    .end local v24           #text:Ljava/lang/String;
    .end local v25           #thread_id:J
    :cond_11
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 549
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 550
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 554
    .end local v15           #i:I
    .end local v17           #messageListing:[Landroid/provider/BTMapBrowseUtils$Message;
    .end local v21           #recpCursor:Landroid/database/Cursor;
    .end local v27           #threadsCursor:Landroid/database/Cursor;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method private isDraftMessageOnThread(Landroid/content/Context;J)Z
    .locals 17
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 936
    const/16 v16, 0x0

    .line 937
    .local v16, smsDraftCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 938
    .local v15, mmsDraftCursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 940
    .local v14, isDraftMessageOnThread:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 942
    .local v6, smsSelection:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 944
    if-eqz v16, :cond_1

    .line 945
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v14, 0x1

    .line 946
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 948
    :cond_1
    if-eqz v14, :cond_2

    const/4 v2, 0x1

    .line 957
    :goto_0
    return v2

    .line 950
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 951
    .local v11, mmsSelection:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "date DESC"

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 953
    if-eqz v15, :cond_4

    .line 954
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v14, 0x1

    .line 955
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v14

    .line 957
    goto :goto_0
.end method

.method private static isEmailAccountSet()Z
    .locals 4

    .prologue
    .line 1180
    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmailAddressFromRegex(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 1529
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1531
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmailDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1167
    const-string v0, "pref_key_btmap_email_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmailPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1164
    const-string v0, "pref_key_btmap_email_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMmsDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1158
    const-string v0, "pref_key_btmap_mms_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMmsPushedViaMap()Z
    .locals 1

    .prologue
    .line 1146
    sget-boolean v0, Landroid/provider/BTMapBrowseUtils;->MMS_PUSHED_VIA_MAP:Z

    return v0
.end method

.method public static isMmsPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1148
    const-string v0, "pref_key_btmap_mms_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmsDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1161
    const-string v0, "pref_key_btmap_sms_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmsPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1153
    const-string v0, "pref_key_btmap_sms_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final messageClearNotification(I)Landroid/content/Intent;
    .locals 2
    .parameter "notificationID"

    .prologue
    .line 1636
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.conversations.notification.ACTION_CLEAR_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.blur.conversations.notification.EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "value"

    .prologue
    .line 1176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1177
    return-void
.end method

.method public static setDefaultEmailAccount(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1183
    sput-wide p0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    .line 1184
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultEmailAccount, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void
.end method

.method public static setOrResetPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1171
    return-void
.end method

.method public static storeAndSendEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 2
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 1579
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/provider/BTMapBrowseUtils;->uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static storeDraftEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 2
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 1583
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/BTMapBrowseUtils;->uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static updateInbox(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1564
    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    .line 1565
    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "inbox"

    invoke-static {p0, v3, v4, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 1566
    .local v0, inboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 1567
    const-string v3, "BTMapBrowseUtils"

    const-string/jumbo v4, "updateInbox : failed, folder id invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    return-void

    .line 1569
    :cond_0
    const-string v3, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInbox : folder id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.bt.update_inbox"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "folder"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1572
    const-string v3, "account"

    sget-wide v4, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1573
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J
    .locals 19
    .parameter "context"
    .parameter "charset"
    .parameter "params"
    .parameter "needToSend"

    .prologue
    .line 1587
    const-wide/16 v11, 0x0

    .line 1588
    .local v11, folderId:J
    const/16 v17, 0x1

    .line 1589
    .local v17, toFolder:I
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v10

    .line 1590
    .local v10, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailCcList()Ljava/util/List;

    move-result-object v8

    .line 1591
    .local v8, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailBccList()Ljava/util/List;

    move-result-object v7

    .line 1592
    .local v7, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v16

    .line 1593
    .local v16, text:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object v15

    .line 1594
    .local v15, subject:Ljava/lang/String;
    const-string v1, "BTMapBrowseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pushing email text : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "subject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1596
    .local v18, values:Landroid/content/ContentValues;
    const-string v1, "account_id"

    sget-wide v2, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1597
    const-string/jumbo v1, "subject"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v1, "flags"

    const-string/jumbo v2, "visible"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const-string v1, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1600
    const-string v1, "message_uuid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    if-eqz p3, :cond_2

    .line 1602
    const/16 v17, 0x8

    .line 1608
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "folder_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1611
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 1612
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1613
    sget v1, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1614
    const-string v1, "parent_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1615
    const/4 v14, 0x0

    .line 1616
    .local v14, res:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 1617
    const-string v1, "BTMapBrowseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email stored : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.motorola.bt.push_email_message"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v13, intent:Landroid/content/Intent;
    const-string/jumbo v1, "send"

    move/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1620
    const-string/jumbo v1, "uri"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    const-string/jumbo v1, "text"

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string v1, "dests"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1623
    if-eqz v8, :cond_0

    const-string v1, "cc"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1624
    :cond_0
    if-eqz v7, :cond_1

    const-string v1, "bcc"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1625
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1626
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1627
    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "EMAIL"

    invoke-static {v1, v2, v3}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v1

    .line 1631
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #res:Landroid/net/Uri;
    :goto_1
    return-wide v1

    .line 1604
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    const/16 v17, 0x3

    goto/16 :goto_0

    .line 1631
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_3
    const-wide/16 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getFolderListing(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    .line 385
    if-nez p2, :cond_1

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "telecom"

    aput-object v5, v4, v7

    .line 411
    :cond_0
    :goto_0
    return-object v4

    .line 386
    :cond_1
    aget-object v5, p2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "telecom"

    aput-object v5, v4, v7

    goto :goto_0

    .line 387
    :cond_2
    aget-object v5, p2, v7

    const-string/jumbo v6, "telecom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    array-length v5, p2

    if-ne v5, v8, :cond_3

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "msg"

    aput-object v5, v4, v7

    goto :goto_0

    .line 389
    :cond_3
    aget-object v5, p2, v8

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    array-length v5, p2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 391
    const-string v4, "inbox"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v4, "outbox"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string/jumbo v4, "sent"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v4, "failed"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v4, "queued"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v4, "drafts"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 399
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_4
    :goto_1
    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_5
    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 402
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v2

    .line 403
    .local v2, parent:J
    const/4 v1, 0x2

    .local v1, i:I
    :goto_2
    array-length v5, p2

    if-ge v1, v5, :cond_6

    .line 404
    aget-object v5, p2, v1

    invoke-static {p1, v2, v3, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    .line 405
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 407
    :cond_6
    invoke-static {p1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public getMMSFields(Landroid/content/Context;Landroid/net/Uri;)Landroid/provider/BTMapBrowseUtils$MmsAttributes;
    .locals 24
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 868
    const/4 v8, 0x0

    .local v8, priority:I
    const/16 v19, 0x0

    .local v19, msg_type:I
    const/4 v9, 0x0

    .line 869
    .local v9, read_status:I
    const-wide/16 v10, 0x0

    .line 870
    .local v10, date:J
    const/16 v21, 0x0

    .local v21, subject:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, to:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, body:Ljava/lang/String;
    const/4 v12, 0x0

    .line 871
    .local v12, box:Ljava/lang/String;
    const/16 v22, 0x0

    .line 872
    .local v22, temp_to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v18, 0x0

    .line 875
    .local v18, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v20

    .line 876
    .local v20, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v18, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 884
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getMessageType()I

    move-result v19

    .line 885
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v8

    .line 886
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    .line 887
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    .line 888
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils;->getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;

    move-result-object v13

    .line 889
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    aget-object v2, v22, v17

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 877
    .end local v17           #i:I
    .end local v20           #p:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v15

    .line 878
    .local v15, e:Lcom/google/android/mms/MmsException;
    const-string v2, "BTMapBrowseUtils"

    const-string v3, "Not a fully downloaded MMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v2, 0x0

    .line 902
    .end local v15           #e:Lcom/google/android/mms/MmsException;
    :goto_1
    return-object v2

    .line 880
    :catch_1
    move-exception v16

    .line 881
    .local v16, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "BTMapBrowseUtils"

    const-string v3, "Unknown type of the message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v2, 0x0

    goto :goto_1

    .line 891
    .end local v16           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v17       #i:I
    .restart local v20       #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 893
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 894
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    const-string v2, "read"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 896
    const-string v2, "date"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 897
    const/4 v2, 0x1

    const-string v3, "msg_box"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/provider/BTMapUtils;->getFolderName(ZI)Ljava/lang/String;

    move-result-object v12

    .line 901
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 902
    new-instance v2, Landroid/provider/BTMapBrowseUtils$MmsAttributes;

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    move-object/from16 v5, v21

    move-object v6, v13

    move/from16 v7, v19

    invoke-direct/range {v2 .. v12}, Landroid/provider/BTMapBrowseUtils$MmsAttributes;-><init>(Landroid/provider/BTMapBrowseUtils;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;)V

    goto :goto_1

    .line 900
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 4
    .parameter "context"
    .parameter "path"
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 360
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message listing path[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0, p1, p2, p3, v3}, Landroid/provider/BTMapBrowseUtils;->getMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "params"
    .parameter "isShowNetworkTimestamp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message listing path[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isShowNetworkTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    aget-object v0, p2, v3

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/provider/BTMapBrowseUtils;->getSmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 373
    :cond_0
    aget-object v0, p2, v3

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/provider/BTMapBrowseUtils;->getMmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;Z)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_1
    aget-object v0, p2, v3

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    .line 377
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/BTMapBrowseUtils;->getEmailMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;
    .locals 10
    .parameter "pdu"

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 729
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 731
    .local v4, numParts:I
    const/4 v6, 0x0

    .line 732
    .local v6, text:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 733
    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 734
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 735
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 736
    .local v1, bytes:[B
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 737
    .local v2, charset:I
    if-eqz v1, :cond_0

    .line 738
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, v2, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 739
    .local v7, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 744
    .end local v1           #bytes:[B
    .end local v2           #charset:I
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v6

    .line 732
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isLegalPath(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, currentPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    aget-object v5, p2, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v5, "BTMapBrowseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLegalPath, path[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    aget-object v5, p2, v6

    const-string/jumbo v7, "telecom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, p2, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 440
    :goto_0
    return v5

    .line 420
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_4

    .line 421
    const-string v5, "BTMapBrowseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLegalPath, path["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, list:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 424
    .local v2, isPresent:Z
    if-eqz v4, :cond_1

    .line 425
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 426
    const-string v5, "BTMapBrowseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLegalPath, list["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    aget-object v5, p2, v1

    aget-object v7, v4, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    const/4 v2, 0x1

    .line 429
    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v3           #j:I
    :cond_1
    if-nez v2, :cond_3

    .line 435
    const-string v5, "BTMapBrowseUtils"

    const-string v7, "isLegalPath : returning FALSE"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 436
    goto :goto_0

    .line 425
    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 420
    .end local v3           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 439
    .end local v2           #isPresent:Z
    .end local v4           #list:[Ljava/lang/String;
    :cond_4
    const-string v5, "BTMapBrowseUtils"

    const-string v6, "isLegalPath : returning TRUE"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public setDeletedStatus(Landroid/content/Context;JLjava/lang/String;Z)Z
    .locals 10
    .parameter "context"
    .parameter "handle"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 796
    const/4 v2, 0x0

    .line 797
    .local v2, msgUri:Landroid/net/Uri;
    if-nez p5, :cond_0

    .line 825
    :goto_0
    return v4

    .line 798
    :cond_0
    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 799
    const-string v6, "BTMapBrowseUtils"

    const-string v7, "Deleting SMS"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v6, "com.motorola.bt.del_sms_warn"

    invoke-static {p1, v6, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 801
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    const-string v6, "com.motorola.bt.del_sms_warn"

    invoke-static {p1, v6, v4}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    move v4, v5

    .line 825
    goto :goto_0

    .line 804
    :cond_2
    const-string v6, "MMS"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 805
    const-string v6, "BTMapBrowseUtils"

    const-string v7, "Deleting MMS"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v6, "com.motorola.bt.del_mms_warn"

    invoke-static {p1, v6, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 807
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 808
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    const-string v6, "com.motorola.bt.del_mms_warn"

    invoke-static {p1, v6, v4}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 810
    const-string v4, "BTMapBrowseUtils"

    const-string v6, "Deleted MMS"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 811
    :cond_3
    const-string v6, "EMAIL"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 812
    const-string v6, "BTMapBrowseUtils"

    const-string v7, "Deleting Email"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v6, "com.motorola.bt.del_email_warn"

    invoke-static {p1, v6, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 814
    sget-object v6, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 817
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v6

    const-string v8, "deleted"

    invoke-static {p1, v6, v7, v8}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .line 818
    .local v0, deletedId:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 819
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "parent_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 820
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 822
    const-string v6, "com.motorola.bt.del_email_warn"

    invoke-static {p1, v6, v4}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 823
    const-string v4, "BTMapBrowseUtils"

    const-string v6, "Deleted Email"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setReadStatus(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "handle"
    .parameter "type"
    .parameter "value"

    .prologue
    const v9, 0x379ab

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, msgUri:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 750
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 751
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 752
    .local v8, values:Landroid/content/ContentValues;
    const-string v5, "read"

    if-eqz p5, :cond_2

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    const-string/jumbo v0, "seen"

    if-eqz p5, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 758
    if-eqz p5, :cond_0

    .line 759
    invoke-direct {p0, v9}, Landroid/provider/BTMapBrowseUtils;->messageClearNotification(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 761
    :cond_0
    const-string v0, "BTMapBrowseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marked SMS read unread status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_2
    return-void

    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_2
    move v0, v4

    .line 752
    goto :goto_0

    :cond_3
    move v2, v4

    .line 753
    goto :goto_1

    .line 762
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_4
    const-string v0, "MMS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 763
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 764
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 765
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v5, "read"

    if-eqz p5, :cond_6

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string/jumbo v0, "seen"

    if-eqz p5, :cond_7

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 771
    if-eqz p5, :cond_5

    .line 772
    invoke-direct {p0, v9}, Landroid/provider/BTMapBrowseUtils;->messageClearNotification(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    :cond_5
    const-string v0, "BTMapBrowseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marked MMS read unread status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v0, v4

    .line 765
    goto :goto_3

    :cond_7
    move v2, v4

    .line 766
    goto :goto_4

    .line 775
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_8
    const-string v0, "EMAIL"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    sget-object v0, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 779
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 780
    .local v7, status:I
    if-eqz v6, :cond_1

    .line 781
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 782
    sget v0, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 785
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 786
    if-eqz p5, :cond_a

    or-int/lit8 v7, v7, 0x4

    .line 788
    :goto_5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 789
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 791
    const-string v0, "BTMapBrowseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marked Email read unread status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 787
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_a
    and-int/lit8 v7, v7, -0x5

    goto :goto_5
.end method

.method public storeAndSendMms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 16
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 1041
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v1

    .line 1042
    .local v1, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v11

    .line 1043
    .local v11, text:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object v10

    .line 1044
    .local v10, subject:Ljava/lang/String;
    new-instance v9, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1045
    .local v9, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v1}, Landroid/provider/BTMapBrowseUtils;->encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 1046
    .local v3, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_0

    .line 1047
    invoke-virtual {v9, v3}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1050
    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v12, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1051
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1052
    new-instance v7, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 1053
    .local v7, pb:Lcom/google/android/mms/pdu/PduBody;
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1054
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v12, "text/plain"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1055
    const/16 v12, 0x6a

    invoke-virtual {v6, v12}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1056
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1057
    const-string/jumbo v12, "text_0.txt"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1058
    invoke-virtual {v7, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 1059
    invoke-virtual {v9, v7}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1060
    const-string v12, "BTMapBrowseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "text : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " subject : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const-string v12, "com.motorola.bt.push_mms_warn"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1062
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 1063
    .local v5, mPersister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v8, 0x0

    .line 1065
    .local v8, res:Landroid/net/Uri;
    :try_start_0
    sget-object v12, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v12}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1069
    const-string v12, "com.motorola.bt.push_mms_warn"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1071
    :goto_0
    const-string v12, "BTMapBrowseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MMS stored : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.motorola.contracts.messaging.intent.SEND_MMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1074
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1075
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "MMS"

    invoke-static {v12, v13, v14}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v12

    return-wide v12

    .line 1066
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1067
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v12, "BTMapBrowseUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error e = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    const-string v12, "com.motorola.bt.push_mms_warn"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    const-string v13, "com.motorola.bt.push_mms_warn"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v12
.end method

.method public storeAndSendSms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 19
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 1020
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1021
    .local v18, values:Landroid/content/ContentValues;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageReceiverDataList()Ljava/util/List;

    move-result-object v13

    .line 1022
    .local v13, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v16, msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, text:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1025
    .local v11, date:J
    const-string v3, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing SMS body : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DATE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1027
    .local v4, address:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, -0x42

    invoke-static/range {v3 .. v10}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v17

    .line 1030
    .local v17, uri:Landroid/net/Uri;
    const/4 v3, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1032
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    const-string v3, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SMS Pushed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1035
    .end local v4           #address:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.motorola.contracts.messaging.intent.SEND_SMS"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v6

    return-wide v6
.end method

.method public storeDraftMms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 20
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 1087
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v3

    .line 1088
    .local v3, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v16, "BTMapBrowseUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "storeDraftMms: no. of dests = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    const-wide/16 v16, 0x0

    .line 1141
    :goto_0
    return-wide v16

    .line 1091
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1092
    .local v9, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1094
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v13

    .line 1095
    .local v13, text:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object v12

    .line 1097
    .local v12, subject:Ljava/lang/String;
    const-string v16, "BTMapBrowseUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "text : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " subject : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-wide/16 v14, -0x1

    .line 1101
    .local v14, threadId:J
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 1108
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gtz v16, :cond_1

    const-wide/16 v16, 0x0

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v4

    .line 1104
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v16, "BTMapBrowseUtils"

    const-string v17, "Unable to create/get thread id"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 1110
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Landroid/provider/BTMapBrowseUtils;->isDraftMessageOnThread(Landroid/content/Context;J)Z

    move-result v16

    if-eqz v16, :cond_2

    const-wide/16 v16, 0x0

    goto :goto_0

    .line 1112
    :cond_2
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1113
    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v3}, Landroid/provider/BTMapBrowseUtils;->encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1114
    .local v5, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_3

    .line 1115
    invoke-virtual {v11, v5}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1118
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    new-instance v16, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1119
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1120
    new-instance v8, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 1121
    .local v8, pb:Lcom/google/android/mms/pdu/PduBody;
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1122
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v16, "text/plain"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1123
    const/16 v16, 0x6a

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1124
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1125
    const-string/jumbo v16, "text_0.txt"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1126
    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 1127
    invoke-virtual {v11, v8}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1129
    const-string v16, "com.motorola.bt.push_mms_warn"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1130
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 1131
    .local v6, mPersister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v10, 0x0

    .line 1133
    .local v10, res:Landroid/net/Uri;
    :try_start_1
    sget-object v16, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1137
    const-string v16, "com.motorola.bt.push_mms_warn"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1139
    :goto_1
    const-string v16, "BTMapBrowseUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MMS stored : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v18, "MMS"

    invoke-static/range {v16 .. v18}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_0

    .line 1134
    :catch_1
    move-exception v4

    .line 1135
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    const-string v16, "BTMapBrowseUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error e = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1137
    const-string v16, "com.motorola.bt.push_mms_warn"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    const-string v17, "com.motorola.bt.push_mms_warn"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v16
.end method

.method public storeDraftSms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 15
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    .line 967
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageReceiverDataList()Ljava/util/List;

    move-result-object v2

    .line 968
    .local v2, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "BTMapBrowseUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "storeDraftSms: no. of dests = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    const-wide/16 v11, 0x0

    .line 1015
    :goto_0
    return-wide v11

    .line 971
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 972
    .local v5, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 974
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Landroid/provider/BTMapBrowseUtils;->getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, text:Ljava/lang/String;
    const-string v11, "BTMapBrowseUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Storing SMS body : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-wide/16 v7, -0x1

    .line 980
    .local v7, threadId:J
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 987
    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-gtz v11, :cond_1

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v3

    .line 983
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v11, "BTMapBrowseUtils"

    const-string v12, "Unable to create/get thread id"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 989
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7, v8}, Landroid/provider/BTMapBrowseUtils;->isDraftMessageOnThread(Landroid/content/Context;J)Z

    move-result v11

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 991
    :cond_2
    const/4 v9, 0x0

    .line 992
    .local v9, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 993
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v11, "thread_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 994
    const-string v11, "body"

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v11, "type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string v11, "com.motorola.bt.push_sms_warn"

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 999
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 1011
    const-string v11, "com.motorola.bt.push_sms_warn"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1014
    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1015
    .local v4, msgId:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v11

    goto/16 :goto_0

    .line 1000
    .end local v4           #msgId:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1001
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v11, "BTMapBrowseUtils"

    const-string v12, "Caught a SQLiteException on insert: "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    const-wide/16 v11, 0x0

    .line 1011
    const-string v13, "com.motorola.bt.push_sms_warn"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1003
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v3

    .line 1004
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v11, "BTMapBrowseUtils"

    const-string v12, "Caught a SQLiteException on insert: "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1006
    const-wide/16 v11, 0x0

    .line 1011
    const-string v13, "com.motorola.bt.push_sms_warn"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1007
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v3

    .line 1008
    .local v3, e:Ljava/lang/Throwable;
    :try_start_4
    const-string v11, "BTMapBrowseUtils"

    const-string v12, "Caught an exception on insert: "

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1009
    const-wide/16 v11, 0x0

    .line 1011
    const-string v13, "com.motorola.bt.push_sms_warn"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v3           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    const-string v12, "com.motorola.bt.push_sms_warn"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v11
.end method
