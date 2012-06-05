.class public Lcom/motorola/android/internal/telephony/IccCardManager;
.super Ljava/lang/Object;
.source "IccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;,
        Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;


# instance fields
.field private mClientRadioCardAssociations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mInitializedFromRIL:Z

.field private mLogTag:Ljava/lang/String;

.field private mOwnerModemCardAssociations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "RIL_IccCardManager"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInitializedFromRIL:Z

    .line 258
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    const-string v1, "Creating"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mOwnerModemCardAssociations:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    .line 262
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mContext:Landroid/content/Context;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/IccCardManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/telephony/IccCardManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInitializedFromRIL:Z

    return p1
.end method

.method private findIndexForModemId(II)I
    .locals 3
    .parameter "phoneType"
    .parameter "uniqueSlotId"

    .prologue
    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, i:I
    const/4 v0, 0x0

    .line 373
    .local v0, a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    check-cast v0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    .line 375
    .restart local v0       #a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getUniqueSlotId()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getPhoneType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 381
    .end local v1           #i:I
    :goto_1
    return v1

    .line 373
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findIndexForUniqueSlotId(II)I
    .locals 3
    .parameter "modemId"
    .parameter "phoneType"

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, i:I
    const/4 v0, 0x0

    .line 359
    .local v0, a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    check-cast v0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    .line 361
    .restart local v0       #a:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getModemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getPhoneType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 367
    .end local v1           #i:I
    :goto_1
    return v1

    .line 359
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findUniqueSlotIdOfServiceCard(II)I
    .locals 3
    .parameter "modemId"
    .parameter "phoneType"

    .prologue
    .line 295
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->findIndexForUniqueSlotId(II)I

    move-result v0

    .line 296
    .local v0, index:I
    const/4 v1, -0x1

    .line 297
    .local v1, uniqueSlotId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getUniqueSlotId()I

    move-result v1

    .line 301
    :cond_0
    return v1
.end method

.method public static generateSlotId(II)I
    .locals 1
    .parameter "modemId"
    .parameter "uniqueSlotId"

    .prologue
    .line 484
    mul-int/lit8 v0, p0, 0xa

    sub-int v0, p1, v0

    return v0
.end method

.method public static generateUniqueSlotId(II)I
    .locals 1
    .parameter "modemId"
    .parameter "slotId"

    .prologue
    .line 479
    mul-int/lit8 v0, p0, 0xa

    add-int/2addr v0, p1

    return v0
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/IccCardManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 241
    sget-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 246
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    return-object v0

    .line 244
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInstance:Lcom/motorola/android/internal/telephony/IccCardManager;

    iput-object p0, v0, Lcom/motorola/android/internal/telephony/IccCardManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getUnusedApplication(II)Lcom/android/internal/telephony/IccCard;
    .locals 10
    .parameter "modemId"
    .parameter "phoneType"

    .prologue
    .line 411
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mOwnerModemCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    .line 412
    .local v5, m:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    if-eqz v5, :cond_0

    .line 414
    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->getIccPhysicalCards()[Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v6

    .line 415
    .local v6, physicalCards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v6, :cond_0

    .line 417
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    .line 418
    aget-object v2, v6, v3

    .line 420
    .local v2, c:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v7, v8, :cond_2

    .line 417
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    :cond_2
    const/4 v7, 0x1

    if-ne p2, v7, :cond_4

    .line 423
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getGsmUmtsSubscriptionAppIndex()I

    move-result v1

    .line 428
    .local v1, appIndex:I
    :goto_2
    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardApplication(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 429
    .local v0, app:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isAssigned()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 433
    :cond_3
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v0, :cond_5

    const-string v7, "null"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    .end local v1           #appIndex:I
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCdmaSubscriptionAppIndex()I

    move-result v1

    .restart local v1       #appIndex:I
    goto :goto_2

    .line 433
    .restart local v0       #app:Lcom/android/internal/telephony/IccCard;
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->isAssigned()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_3

    .line 437
    :cond_6
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getUniqueSlotId()I

    move-result v7

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/motorola/android/internal/telephony/IccCardManager;->updateClientRadioCardAssociation(IIILcom/android/internal/telephony/IccCard;)V

    .line 439
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCard;->assign(I)V

    .line 448
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    .end local v1           #appIndex:I
    .end local v2           #c:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .end local v3           #i:I
    .end local v5           #m:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    .end local v6           #physicalCards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    :goto_4
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private updateClientRadioCardAssociation(IIILcom/android/internal/telephony/IccCard;)V
    .locals 9
    .parameter "modemId"
    .parameter "phoneType"
    .parameter "uniqueSlotId"
    .parameter "iccCardApp"

    .prologue
    const/4 v1, -0x1

    .line 388
    const/4 v7, 0x0

    .line 390
    .local v7, updated:Z
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->findIndexForUniqueSlotId(II)I

    move-result v6

    .line 391
    .local v6, index:I
    if-eq v6, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    invoke-virtual {v0, p3}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->setUniqueSlotId(I)V

    .line 393
    const/4 v7, 0x1

    .line 395
    :cond_0
    if-eqz v7, :cond_3

    move v6, v1

    .line 396
    :goto_0
    if-eq v6, v1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->setModemId(I)V

    .line 398
    const/4 v7, 0x1

    .line 400
    :cond_1
    if-nez v7, :cond_2

    .line 403
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;-><init>(Lcom/motorola/android/internal/telephony/IccCardManager;IIILcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_2
    return-void

    .line 395
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/motorola/android/internal/telephony/IccCardManager;->findIndexForModemId(II)I

    move-result v6

    goto :goto_0
.end method


# virtual methods
.method public addOwnerModemCardAssociation(ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "modemId"
    .parameter "ci"

    .prologue
    .line 266
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mOwnerModemCardAssociations:Ljava/util/ArrayList;

    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;-><init>(Lcom/motorola/android/internal/telephony/IccCardManager;Lcom/motorola/android/internal/telephony/IccCardManager;ILandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public declared-synchronized getApplication(II)Lcom/android/internal/telephony/IccCard;
    .locals 7
    .parameter "modemId"
    .parameter "phoneType"

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->findIndexForUniqueSlotId(II)I

    move-result v3

    .line 320
    .local v3, index:I
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplication modemId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getUnusedApplication(II)Lcom/android/internal/telephony/IccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 353
    .local v0, app:Lcom/android/internal/telephony/IccCard;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 327
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getServiceIccPhysicalCard(II)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v2

    .line 328
    .local v2, card:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v2, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v4, v5, :cond_3

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->unassign()V

    .line 332
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getUnusedApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #app:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 336
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    :cond_3
    const/4 v1, -0x1

    .line 337
    .local v1, appIndex:I
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 338
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getGsmUmtsSubscriptionAppIndex()I

    move-result v1

    .line 342
    :goto_1
    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardApplication(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 343
    .restart local v0       #app:Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_0

    .line 346
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->unassign()V

    .line 347
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getUnusedApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_0

    .line 340
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    :cond_4
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCdmaSubscriptionAppIndex()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 318
    .end local v1           #appIndex:I
    .end local v2           #card:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .end local v3           #index:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 6
    .parameter "modemId"

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mOwnerModemCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    .line 494
    .local v2, mc:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->getModemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 495
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->getIccPhysicalCards()[Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v0

    .line 497
    .local v0, cards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 498
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 507
    .end local v0           #cards:[Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .end local v2           #mc:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    :cond_0
    :goto_0
    return-object v3

    .line 503
    .restart local v2       #mc:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    const-string v5, "there is no card is associated with this modem."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getServiceIccPhysicalCard(II)Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 5
    .parameter "modemId"
    .parameter "phoneType"

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->findUniqueSlotIdOfServiceCard(II)I

    move-result v3

    .line 273
    .local v3, uniqueSlotId:I
    const/4 v0, 0x0

    .line 274
    .local v0, card:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mOwnerModemCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    .line 275
    .local v2, mc:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->getIccPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v0

    goto :goto_0

    .line 281
    .end local v2           #mc:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;
    :cond_0
    return-object v0
.end method

.method public getServiceModemId(II)I
    .locals 3
    .parameter "uniqueSlotId"
    .parameter "phoneType"

    .prologue
    .line 286
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    .line 287
    .local v1, r:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getUniqueSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getPhoneType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 288
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->getModemId()I

    move-result v2

    .line 291
    .end local v1           #r:Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public notifyIccStatusChanged()V
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 474
    monitor-exit v1

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 453
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 454
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 456
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    const-string v2, "registerForIccChanged "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mInitializedFromRIL:Z

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 462
    :cond_0
    return-void

    .line 456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeClientRadioCardAssociation(II)V
    .locals 2
    .parameter "phoneType"
    .parameter "uniquleSlotId"

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardManager;->findIndexForModemId(II)I

    move-result v0

    .line 307
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;

    iget-object v1, v1, Lcom/motorola/android/internal/telephony/IccCardManager$ClientRadioCardAssociation;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->unassign()V

    .line 310
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mClientRadioCardAssociations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 312
    :cond_0
    return-void
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mLogTag:Ljava/lang/String;

    const-string v2, "unregisterForIccChanged "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardManager;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 467
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
