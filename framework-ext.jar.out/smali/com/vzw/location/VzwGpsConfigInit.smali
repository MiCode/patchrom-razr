.class public Lcom/vzw/location/VzwGpsConfigInit;
.super Ljava/lang/Object;
.source "VzwGpsConfigInit.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsConfigInit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsConfigInit"


# instance fields
.field private mAppId:J

.field private mAppPasswd:Ljava/lang/String;

.field private mLastMpcHost:Ljava/lang/String;

.field private mLastMpcPort:I

.field private mMpcHost:Ljava/lang/String;

.field private mMpcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/vzw/location/VzwGpsConfigInit$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsConfigInit$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    .line 35
    iput v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 36
    iput-object v3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsConfigInit$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    return-wide v0
.end method

.method public getApplicationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMpcPort()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    return v0
.end method

.method public getSmsPrefixInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method

.method public resetMpc()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    .line 69
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 70
    return-void
.end method

.method public setCredentials(JLjava/lang/String;)V
    .locals 0
    .parameter "appId"
    .parameter "appPasswd"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    .line 43
    iput-object p3, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setMpc(Ljava/lang/String;I)V
    .locals 0
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 54
    return-void
.end method

.method public setMpc(Ljava/net/InetAddress;I)V
    .locals 1
    .parameter "mpcHost"
    .parameter "mpcPort"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcHost(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsConfigInit;->setMpcPort(I)V

    .line 49
    return-void
.end method

.method public setMpcHost(Ljava/lang/String;)V
    .locals 1
    .parameter "mpcHost"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcHost:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMpcPort(I)V
    .locals 1
    .parameter "mpcPort"

    .prologue
    .line 62
    iget v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    iput v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mLastMpcPort:I

    .line 63
    iput p1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    .line 64
    return-void
.end method

.method public setSmsPrefixInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appPrefix"
    .parameter "fqan"

    .prologue
    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 102
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mAppPasswd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 105
    .local v0, hostAddr:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v1, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void

    .line 104
    .end local v0           #hostAddr:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsConfigInit;->mMpcHost:Ljava/lang/String;

    goto :goto_0
.end method
