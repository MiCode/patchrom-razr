.class Lcom/vzw/location/VzwGpsAppSession;
.super Ljava/lang/Object;
.source "VzwGpsAppSession.java"


# instance fields
.field private mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

.field private mGpsReq:Lcom/vzw/location/VzwGpsRequest;

.field private mPendingBroadcasts:I

.field private mPid:I

.field private mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field private mUid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mUid:I

    .line 23
    iput p2, p0, Lcom/vzw/location/VzwGpsAppSession;->mPid:I

    .line 24
    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    .line 25
    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    .line 26
    iput-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    .line 28
    return-void
.end method


# virtual methods
.method public getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    return-object v0
.end method

.method public getGpsRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    return-object v0
.end method

.method public getPendingBroadcasts()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mPid:I

    return v0
.end method

.method public getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vzw/location/VzwGpsAppSession;->mUid:I

    return v0
.end method

.method public setAuthRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 0
    .parameter "authReq"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mAuthReq:Lcom/vzw/location/VzwGpsAuthRequest;

    .line 37
    return-void
.end method

.method public setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V
    .locals 0
    .parameter "gpsReq"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mGpsReq:Lcom/vzw/location/VzwGpsRequest;

    .line 41
    return-void
.end method

.method public setPendingBroadcasts(I)V
    .locals 0
    .parameter "pendingBroadcases"

    .prologue
    .line 44
    iput p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mPendingBroadcasts:I

    .line 45
    return-void
.end method

.method public setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 0
    .parameter "sl"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vzw/location/VzwGpsAppSession;->mStatusListener:Lcom/vzw/location/IVzwGpsStatusListener;

    .line 33
    return-void
.end method
