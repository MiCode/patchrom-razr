.class public Landroid/telephony/CellsInfo;
.super Ljava/lang/Object;
.source "CellsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BSIC:I = -0x1

.field public static final UNKNOWN_PSC:I = -0x1

.field public static final UNKNOWN_RSSI:I = 0x63

.field public static final UNKNOWN_UARFCN:I = -0x1


# instance fields
.field private mBsic:I

.field private mPsc:I

.field private mRssi:I

.field private mUarfcn:I

.field private neighbor:[Landroid/telephony/NeighboringCell;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/telephony/CellsInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Landroid/telephony/CellsInfo;->mPsc:I

    .line 40
    iput v1, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    .line 41
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/CellsInfo;->mRssi:I

    .line 42
    iput v1, p0, Landroid/telephony/CellsInfo;->mBsic:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    .line 44
    return-void
.end method

.method public constructor <init>(IIII[Landroid/telephony/NeighboringCell;)V
    .locals 0
    .parameter "psc"
    .parameter "uarfcn"
    .parameter "rssi"
    .parameter "bsic"
    .parameter "info"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/telephony/CellsInfo;->mPsc:I

    .line 51
    iput p2, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    .line 52
    iput p3, p0, Landroid/telephony/CellsInfo;->mRssi:I

    .line 53
    iput p4, p0, Landroid/telephony/CellsInfo;->mBsic:I

    .line 54
    iput-object p5, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellsInfo;->mPsc:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellsInfo;->mRssi:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/CellsInfo;->mBsic:I

    .line 65
    const-class v1, Landroid/telephony/NeighboringCell;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 67
    .local v0, array:[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 68
    array-length v1, v0

    new-array v1, v1, [Landroid/telephony/NeighboringCell;

    iput-object v1, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    .line 69
    iget-object v1, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getBsic()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/CellsInfo;->mBsic:I

    return v0
.end method

.method public getNeighboringCellInfo()[Landroid/telephony/NeighboringCell;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    return-object v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/telephony/CellsInfo;->mPsc:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/telephony/CellsInfo;->mRssi:I

    return v0
.end method

.method public getUarfcn()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    return v0
.end method

.method public setBsic(I)V
    .locals 0
    .parameter "bsic"

    .prologue
    .line 144
    iput p1, p0, Landroid/telephony/CellsInfo;->mBsic:I

    .line 145
    return-void
.end method

.method public setNeighboringCellInfo([Landroid/telephony/NeighboringCell;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 151
    iput-object p1, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    .line 152
    return-void
.end method

.method public setPsc(I)V
    .locals 0
    .parameter "psc"

    .prologue
    .line 123
    iput p1, p0, Landroid/telephony/CellsInfo;->mPsc:I

    .line 124
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 137
    iput p1, p0, Landroid/telephony/CellsInfo;->mRssi:I

    .line 138
    return-void
.end method

.method public setUarfcn(I)V
    .locals 0
    .parameter "uarfcn"

    .prologue
    .line 130
    iput p1, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ psc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellsInfo;->mPsc:I

    if-ne v0, v3, :cond_0

    const-string v0, "/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uarfcn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    if-ne v0, v3, :cond_1

    const-string v0, "/"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellsInfo;->mRssi:I

    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    const-string v0, "/"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bsic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellsInfo;->mBsic:I

    if-ne v0, v3, :cond_3

    const-string v0, "/"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " neighbor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    if-nez v0, :cond_4

    const-string v0, "/"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/telephony/CellsInfo;->mPsc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/telephony/CellsInfo;->mRssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/telephony/CellsInfo;->mBsic:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 168
    iget v0, p0, Landroid/telephony/CellsInfo;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/telephony/CellsInfo;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/telephony/CellsInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/telephony/CellsInfo;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/telephony/CellsInfo;->neighbor:[Landroid/telephony/NeighboringCell;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 173
    return-void
.end method
