.class public Lcom/vzw/location/VzwCriteria;
.super Landroid/location/Criteria;
.source "VzwCriteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_OPTIMAL:I = 0x6

.field public static final AFLT:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwCriteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_OPTIMAL:I = 0x7

.field public static final FIX_PRIORITY:[I = null

.field public static final MS_ASSISTED:I = 0x1

.field public static final MS_BASED:I = 0x2

.field public static final SPEED_OPTIMAL:I = 0x5

.field public static final STANDALONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VzwCriteria"


# instance fields
.field private mAssistanceHost:Ljava/lang/String;

.field private mAssistancePort:I

.field private mFixMode:I

.field private mFixRate:Lcom/vzw/location/VzwGpsFixRate;

.field private mPerformance:Lcom/vzw/location/VzwGpsPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vzw/location/VzwCriteria;->FIX_PRIORITY:[I

    .line 213
    new-instance v0, Lcom/vzw/location/VzwCriteria$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwCriteria$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 43
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    .line 66
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 67
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 207
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    invoke-direct {p0, v0}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    .line 209
    const-class v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwGpsFixRate;

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 210
    const-class v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwGpsPerformance;

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwCriteria$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwCriteria;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwCriteria;)V
    .locals 2
    .parameter "crit"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    .line 73
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Lcom/vzw/location/VzwGpsFixRate;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 74
    new-instance v0, Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsPerformance;-><init>(Lcom/vzw/location/VzwGpsPerformance;)V

    iput-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 75
    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistanceHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vzw/location/VzwCriteria;->getAssistancePort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwCriteria;->setAssistanceHost(Ljava/lang/String;I)V

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 150
    check-cast v0, Lcom/vzw/location/VzwCriteria;

    .line 152
    .local v0, other:Lcom/vzw/location/VzwCriteria;
    iget v3, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 156
    iget-object v3, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    if-nez v3, :cond_5

    .line 157
    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v3

    if-nez v3, :cond_0

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    if-nez v3, :cond_6

    .line 167
    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 176
    goto :goto_0

    .line 162
    :cond_5
    iget-object v3, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vzw/location/VzwGpsFixRate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 172
    :cond_6
    iget-object v3, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v0}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vzw/location/VzwGpsPerformance;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method getAssistanceHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/lang/String;

    return-object v0
.end method

.method getAssistancePort()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mAssistancePort:I

    return v0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    return v0
.end method

.method public getFixRate()Lcom/vzw/location/VzwGpsFixRate;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public getPerformance()Lcom/vzw/location/VzwGpsPerformance;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/vzw/location/VzwCriteria;->FIX_PRIORITY:[I

    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, hash:I
    iget v1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    add-int/lit8 v0, v1, 0x1f

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 185
    return v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->hashCode()I

    move-result v1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsPerformance;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method setAssistanceHost(Ljava/lang/String;I)V
    .locals 0
    .parameter "assistanceHost"
    .parameter "assistancePort"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mAssistanceHost:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/vzw/location/VzwCriteria;->mAssistancePort:I

    .line 84
    return-void
.end method

.method public setFixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 102
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    .line 106
    :goto_0
    const-string v0, "VzwCriteria"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixMode() mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFixMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 91
    :pswitch_1
    iput p1, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 0
    .parameter "fixRate"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    .line 111
    return-void
.end method

.method public setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V
    .locals 0
    .parameter "performance"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    iget v0, p0, Lcom/vzw/location/VzwCriteria;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mFixRate:Lcom/vzw/location/VzwGpsFixRate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Lcom/vzw/location/VzwCriteria;->mPerformance:Lcom/vzw/location/VzwGpsPerformance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 201
    return-void
.end method
