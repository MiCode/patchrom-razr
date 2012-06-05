.class Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
.super Ljava/lang/Object;
.source "IccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IccCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OwnerModemCardAssociation"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_ERROR:I = 0x6

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private mIccPhysicalCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/IccPhysicalCard;",
            ">;"
        }
    .end annotation
.end field

.field private mModemId:I

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/IccCardManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/IccCardManager;Lcom/motorola/android/internal/telephony/IccCardManager;ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter
    .parameter "iccCardManager"
    .parameter "modemId"
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation$1;-><init>(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 64
    iput p3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mModemId:I

    .line 65
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mContext:Landroid/content/Context;

    .line 66
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 68
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mContext:Landroid/content/Context;

    invoke-static {p5, v0, p3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->activate()V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->onGetIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    .line 176
    .local v2, status:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v6, 0x1

    .line 178
    .local v6, cardsFromRil:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, updated:Z
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccCardStatusDone mIccPhysicalCards size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0, v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->update(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 185
    const/4 v8, 0x1

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccCardStatusDone updated = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez v8, :cond_2

    .line 190
    iget-object v9, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mModemId:I

    invoke-static {v1, v7}, Lcom/motorola/android/internal/telephony/IccCardManager;->generateUniqueSlotId(II)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;-><init>(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;Lcom/android/internal/telephony/IccCardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    .end local v8           #updated:Z
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mInitializedFromRIL:Z
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$302(Lcom/motorola/android/internal/telephony/IccCardManager;Z)Z

    .line 196
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifying IccChangedRegistrants"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->notifyIccStatusChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 165
    .end local v2           #status:Lcom/android/internal/telephony/IccCardStatus;
    .end local v6           #cardsFromRil:I
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCardError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCardError(Landroid/os/Handler;)V

    .line 85
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 87
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 88
    return-void
.end method

.method public getIccPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 3
    .parameter "uniqueSlotId"

    .prologue
    .line 104
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 105
    .local v0, c:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getUniqueSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 109
    .end local v0           #c:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPhysicalCards()[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 93
    .local v1, size:I
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->this$0:Lcom/motorola/android/internal/telephony/IccCardManager;

    #getter for: Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/IccCardManager;->access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccPhysicalCards size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-lez v1, :cond_0

    .line 95
    new-array v0, v1, [Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 96
    .local v0, iccCards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mIccPhysicalCards:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 98
    .end local v0           #iccCards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getModemId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mModemId:I

    return v0
.end method

.method public triggerIccStatusChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method
