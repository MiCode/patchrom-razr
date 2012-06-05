.class public final Lcom/motorola/android/internal/telephony/Mcc;
.super Ljava/lang/Object;
.source "Mcc.java"


# instance fields
.field private mcc:Ljava/lang/String;

.field private mncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mcc"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Mcc;->mcc:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addMnc(Ljava/lang/String;)V
    .locals 1
    .parameter "mnc"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Mcc;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMncs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 39
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    return-object v0
.end method

.method public hasMnc(Ljava/lang/String;)Z
    .locals 2
    .parameter "mnc"

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Mcc;->mncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 49
    :goto_1
    return v1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
