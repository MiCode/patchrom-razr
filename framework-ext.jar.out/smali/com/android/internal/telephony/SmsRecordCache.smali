.class public final Lcom/android/internal/telephony/SmsRecordCache;
.super Ljava/lang/Object;
.source "SmsRecordCache.java"


# instance fields
.field public mOldSmsDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getOldSmsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setOldSmsList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    .line 33
    return-void
.end method
