.class public Lcom/vzw/location/VzwGpsPerformance;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsPerformance;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VzwGpsPerformance"


# instance fields
.field private mHorAccuracy:J

.field private mPrefRespTime:J

.field private mVertAccuracy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsPerformance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    .line 31
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    .line 32
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsPerformance$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsPerformance;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 7
    .parameter "perf"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vzw/location/VzwGpsPerformance;->setPerformance(JJJ)V

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/vzw/location/VzwGpsPerformance;

    .line 80
    .local v0, other:Lcom/vzw/location/VzwGpsPerformance;
    iget-wide v3, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 83
    iget-wide v3, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 86
    iget-wide v3, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public getHorizontalAccuracy()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    return-wide v0
.end method

.method public getPreferredResponseTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    return-wide v0
.end method

.method public getVerticalAccuracy()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 95
    const/4 v0, 0x1

    .line 96
    .local v0, hash:I
    iget-wide v1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    iget-wide v3, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v0, v1, 0x1f

    .line 97
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    iget-wide v4, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 98
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    iget-wide v4, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 99
    return v0
.end method

.method public setHorizontalAccuracy(J)V
    .locals 0
    .parameter "mHorAccuracy"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    .line 68
    return-void
.end method

.method public setPerformance(JJJ)V
    .locals 3
    .parameter "vertAccuracy"
    .parameter "horAccuracy"
    .parameter "prefRespTime"

    .prologue
    .line 42
    const-string v0, "VzwGpsPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPerformance() horAccuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prefRespTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    .line 45
    iput-wide p3, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    .line 46
    iput-wide p5, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    .line 47
    return-void
.end method

.method public setPreferredResponseTime(J)V
    .locals 0
    .parameter "mPrefRespTime"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    .line 65
    return-void
.end method

.method public setVerticalAccuracy(J)V
    .locals 0
    .parameter "mVertAccuracy"

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mVertAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mHorAccuracy:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsPerformance;->mPrefRespTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    return-void
.end method
