.class public Landroid/telephony/NeighboringCell;
.super Ljava/lang/Object;
.source "NeighboringCell.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/NeighboringCell;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BSIC:I = -0x1

.field public static final UNKNOWN_CID:I = -0x1

.field public static final UNKNOWN_RSSI:I = 0x63

.field public static final UNKNOWN_UARFCN:I = -0x1


# instance fields
.field private mBsic:I

.field private mCid:I

.field private mRssi:I

.field private mUarfcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/telephony/NeighboringCell$1;

    invoke-direct {v0}, Landroid/telephony/NeighboringCell$1;-><init>()V

    sput-object v0, Landroid/telephony/NeighboringCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    .line 39
    iput v1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    .line 40
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    .line 41
    iput v1, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    .line 42
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "cid"
    .parameter "uarfcn"
    .parameter "rssi"
    .parameter "bsic"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    .line 49
    iput p2, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    .line 50
    iput p3, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    .line 51
    iput p4, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getBsic()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    return v0
.end method

.method public getUarfcn()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    return v0
.end method

.method public setBsic(I)V
    .locals 0
    .parameter "bsic"

    .prologue
    .line 119
    iput p1, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    .line 120
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 98
    iput p1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    .line 99
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 112
    iput p1, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    .line 113
    return-void
.end method

.method public setUarfcn(I)V
    .locals 0
    .parameter "uarfcn"

    .prologue
    .line 105
    iput p1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    if-ne v0, v3, :cond_0

    const-string v0, "/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Uarfcn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    if-ne v0, v3, :cond_1

    const-string v0, "/"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    const-string v0, "/"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BSIC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    if-ne v0, v3, :cond_3

    const-string v0, "/"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 135
    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
