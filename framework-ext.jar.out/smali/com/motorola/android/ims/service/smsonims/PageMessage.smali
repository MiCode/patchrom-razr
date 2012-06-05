.class public Lcom/motorola/android/ims/service/smsonims/PageMessage;
.super Ljava/lang/Object;
.source "PageMessage.java"


# static fields
.field public static final RESPONSE_CODE_BAD_REQUEST:I = 0x0

.field public static final RESPONSE_CODE_BUSY_EVERYWHERE:I = 0x2

.field public static final RESPONSE_CODE_BUSY_HERE:I = 0x1

.field public static final RESPONSE_CODE_DECLINE:I = 0x3

.field public static final RESPONSE_CODE_EVENT_MISSING:I = 0x4

.field public static final RESPONSE_CODE_FORBIDDEN:I = 0x5

.field public static final RESPONSE_CODE_GONE:I = 0x6

.field public static final RESPONSE_CODE_INTERNAL_ERROR:I = 0x7

.field public static final RESPONSE_CODE_LOCAL_FAILURE:I = 0x8

.field public static final RESPONSE_CODE_NOT_ACCEPTABLE:I = 0xa

.field public static final RESPONSE_CODE_NOT_ACCEPTABLE_HERE:I = 0xb

.field public static final RESPONSE_CODE_NOT_FOUND:I = 0xc

.field public static final RESPONSE_CODE_NO_TRANSAC:I = 0x9

.field public static final RESPONSE_CODE_OK:I = 0xd

.field public static final RESPONSE_CODE_PROXY_AUTH_REQUIRED:I = 0xe

.field public static final RESPONSE_CODE_REMOTE_FAILURE:I = 0xf

.field public static final RESPONSE_CODE_REQ_TIMEOUT:I = 0x10

.field public static final RESPONSE_CODE_TEMP_UNAVAIL:I = 0x11

.field public static final RESPONSE_CODE_UNAUTHORIZED:I = 0x12

.field public static final RESPONSE_CODE_UNKNOWN_REASON:I = -0x1

.field public static final RESPONSE_CODE_UNSUPPORTED_MEDIA:I = 0x13

.field public static final SMS_PROTOCOL_3GPP:I = 0x1

.field public static final SMS_PROTOCOL_3GPP2:I = 0x0

.field public static final SMS_PROTOCOL_TRANS:I = 0x2


# instance fields
.field private mBody:[B

.field private mFormat:I

.field private mFromAddr:Ljava/lang/String;

.field private mListener:Lcom/motorola/android/ims/service/smsonims/PageMessageListener;

.field private mMsgID:J

.field private mService:Lcom/motorola/android/ims/IMSService;

.field private mToAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/IMSService;Ljava/lang/String;I[BJ)V
    .locals 1
    .parameter "service"
    .parameter "toAddr"
    .parameter "format"
    .parameter "body"
    .parameter "msgId"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFormat:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mListener:Lcom/motorola/android/ims/service/smsonims/PageMessageListener;

    .line 82
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mService:Lcom/motorola/android/ims/IMSService;

    .line 83
    iput-object p2, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mToAddr:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFormat:I

    .line 85
    iput-object p4, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mBody:[B

    .line 86
    iput-wide p5, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mMsgID:J

    .line 87
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mBody:[B

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFormat:I

    return v0
.end method

.method public getFromAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFromAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/motorola/android/ims/service/smsonims/PageMessageListener;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mListener:Lcom/motorola/android/ims/service/smsonims/PageMessageListener;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mMsgID:J

    return-wide v0
.end method

.method public getToAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mToAddr:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mService:Lcom/motorola/android/ims/IMSService;

    check-cast v0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0, p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->send(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V

    .line 94
    return-void
.end method

.method public sendResponse(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mService:Lcom/motorola/android/ims/IMSService;

    check-cast v0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->sendResponse(Lcom/motorola/android/ims/service/smsonims/PageMessage;I)V

    .line 103
    return-void
.end method

.method public setBody([B)V
    .locals 0
    .parameter "body"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mBody:[B

    .line 119
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 134
    iput p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFormat:I

    .line 135
    return-void
.end method

.method public setFromAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mFromAddr:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mListener:Lcom/motorola/android/ims/service/smsonims/PageMessageListener;

    .line 193
    return-void
.end method

.method public setMsgId(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mMsgID:J

    .line 178
    return-void
.end method

.method public setToAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/PageMessage;->mToAddr:Ljava/lang/String;

    .line 149
    return-void
.end method
