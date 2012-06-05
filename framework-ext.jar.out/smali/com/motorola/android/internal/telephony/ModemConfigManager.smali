.class public Lcom/motorola/android/internal/telephony/ModemConfigManager;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ModemConfigManager"

.field public static final MC_FROM_FILE_SYSTEM:I = 0x1

.field public static final MC_FROM_XML:I

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

.field private static mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;


# instance fields
.field private isMCFileLoaded:Z

.field mHandler:Landroid/os/Handler;

.field private mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

.field private mMCFileSource:I

.field private mModemInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "c"
    .parameter "phoneNotifier"

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFileSource:I

    .line 342
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    .line 681
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mHandler:Landroid/os/Handler;

    .line 350
    sput-object p1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    .line 351
    sput-object p2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    .line 354
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfig()V

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .locals 1
    .parameter "c"
    .parameter "phoneNotifier"

    .prologue
    .line 358
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    .line 364
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    return-object v0

    .line 361
    :cond_0
    sput-object p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    .line 362
    sput-object p1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    goto :goto_0
.end method

.method private getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .locals 2
    .parameter "mcInfoId"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRadioModuleInfo(II)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .locals 4
    .parameter "mcInfoId"
    .parameter "rmInfoId"

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v0

    .line 570
    .local v0, mcInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    if-eqz v0, :cond_0

    .line 571
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    .line 577
    :cond_0
    return-object v1
.end method

.method private getRadioModuleInfo(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .locals 2
    .parameter "mcInfo"
    .parameter "rmInfoId"

    .prologue
    .line 557
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    .line 560
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadModemConfig()V
    .locals 13

    .prologue
    .line 585
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_cdma_subscription"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 591
    .local v6, cdmaSubscriptionSource:I
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromXml()V

    .line 593
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    if-lez v1, :cond_1

    .line 594
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    if-ge v10, v1, :cond_2

    .line 595
    invoke-direct {p0, v10}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v8

    .line 599
    .local v8, curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mPreferNetModeName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 601
    .local v5, networkMode:I
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoId:I

    iget v7, v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRadioModuleNum:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 603
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    iget v1, v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRadioModuleNum:I

    if-ge v11, v1, :cond_0

    .line 604
    invoke-direct {p0, v8, v11}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getRadioModuleInfo(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    move-result-object v9

    .line 605
    .local v9, curRM:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    iget v2, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mRMInfoId:I

    iget v3, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mPhoneType:I

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 603
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 607
    .end local v9           #curRM:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 612
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v8           #curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v10           #i:I
    .end local v11           #j:I
    :cond_1
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 616
    .local v12, networkModeFromSystem:I
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 619
    .restart local v5       #networkMode:I
    packed-switch v12, :pswitch_data_0

    .line 660
    :pswitch_0
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 662
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 663
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v12           #networkModeFromSystem:I
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 671
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isDualMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 672
    const-string v1, "persist.radio.world_mode"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_3
    return-void

    .line 623
    .end local v10           #i:I
    .restart local v5       #networkMode:I
    .restart local v12       #networkModeFromSystem:I
    :pswitch_1
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 625
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 626
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 627
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 634
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :pswitch_2
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 636
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 637
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 642
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 643
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 645
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 646
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 648
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_4
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 650
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 651
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 676
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v12           #networkModeFromSystem:I
    .restart local v10       #i:I
    :cond_5
    const-string v1, "persist.radio.world_mode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private loadModemConfigFileFromFileSystem()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method private loadModemConfigFileFromXml()V
    .locals 23

    .prologue
    .line 439
    const/16 v19, 0x0

    .line 440
    .local v19, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v22, 0x0

    .line 441
    .local v22, stream:Ljava/io/FileInputStream;
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 443
    .local v20, r:Landroid/content/res/Resources;
    const v1, 0x10f0003

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 446
    :try_start_0
    const-string v1, "ModemConfigFile"

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    const/4 v2, 0x0

    const-string v8, "NumberOfModemEntries"

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    .line 450
    const/16 v17, 0x0

    .line 452
    .local v17, parsedMCEntries:I
    :cond_0
    :goto_0
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 453
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 454
    .local v16, mcName:Ljava/lang/String;
    if-nez v16, :cond_4

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    move/from16 v0, v17

    if-eq v0, v1, :cond_1

    .line 456
    const-string v1, "ModemConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing ModemConfig File: ModemConfig "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v8, v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " defined, "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " parsed!"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    const-string v1, "ModemConfigManager"

    const-string v2, "loadModemConfigFileFromXml: ModemConfig parsing successful, file loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    move-object/from16 v0, v19

    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_2

    .line 512
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 515
    :cond_2
    if-eqz v22, :cond_3

    .line 516
    :try_start_1
    throw v22
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    .end local v16           #mcName:Ljava/lang/String;
    .end local v17           #parsedMCEntries:I
    :cond_3
    :goto_1
    return-void

    .line 460
    .restart local v16       #mcName:Ljava/lang/String;
    .restart local v17       #parsedMCEntries:I
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_2
    const-string v1, "ModemConfigInfo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/4 v1, 0x0

    const-string v2, "Id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 462
    .local v3, mcInfoId:I
    const/4 v1, 0x0

    const-string v2, "Name"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, mcInfoName:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "NumberOfRadioModuleEntries"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 465
    .local v5, radioModuleNum:I
    const/4 v1, 0x0

    const-string v2, "PreferredNetworkModeKeyName"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, preferNetModeName:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "IccCardSlotNum"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 470
    .local v7, iccCardSlotNum:I
    add-int/lit8 v17, v17, 0x1

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v8, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v18, 0x0

    .line 475
    .local v18, parsedRMEntries:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    .line 476
    .local v14, currentMCInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    if-eqz v14, :cond_0

    .line 478
    :cond_5
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 479
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 480
    .local v21, rmName:Ljava/lang/String;
    if-nez v21, :cond_7

    .line 481
    move/from16 v0, v18

    if-eq v0, v5, :cond_0

    .line 482
    const-string v1, "ModemConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing ModemConfig File: ModemConfig ID["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]: RadioModule "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " defined, "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " parsed!"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 508
    .end local v3           #mcInfoId:I
    .end local v4           #mcInfoName:Ljava/lang/String;
    .end local v5           #radioModuleNum:I
    .end local v6           #preferNetModeName:Ljava/lang/String;
    .end local v7           #iccCardSlotNum:I
    .end local v14           #currentMCInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v16           #mcName:Ljava/lang/String;
    .end local v17           #parsedMCEntries:I
    .end local v18           #parsedRMEntries:I
    .end local v21           #rmName:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 509
    .local v15, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ModemConfigManager"

    const-string v2, "Got exception while loading ModemConfig file."

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    move-object/from16 v0, v19

    instance-of v1, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_6

    .line 512
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 515
    :cond_6
    if-eqz v22, :cond_3

    .line 516
    :try_start_4
    throw v22
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 518
    .end local v15           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 487
    .restart local v3       #mcInfoId:I
    .restart local v4       #mcInfoName:Ljava/lang/String;
    .restart local v5       #radioModuleNum:I
    .restart local v6       #preferNetModeName:Ljava/lang/String;
    .restart local v7       #iccCardSlotNum:I
    .restart local v14       #currentMCInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .restart local v16       #mcName:Ljava/lang/String;
    .restart local v17       #parsedMCEntries:I
    .restart local v18       #parsedRMEntries:I
    .restart local v19       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21       #rmName:Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string v1, "RadioModule"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    const/4 v1, 0x0

    const-string v2, "Id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 490
    .local v10, rmInfoId:I
    const/4 v1, 0x0

    const-string v2, "Name"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 491
    .local v11, rmInfoName:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "PhoneType"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 493
    .local v12, phoneType:I
    const/4 v1, 0x0

    const-string v2, "Active"

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 495
    .local v13, activeMode:Ljava/lang/String;
    add-int/lit8 v18, v18, 0x1

    .line 496
    iget-object v1, v14, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v8, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 511
    .end local v3           #mcInfoId:I
    .end local v4           #mcInfoName:Ljava/lang/String;
    .end local v5           #radioModuleNum:I
    .end local v6           #preferNetModeName:Ljava/lang/String;
    .end local v7           #iccCardSlotNum:I
    .end local v10           #rmInfoId:I
    .end local v11           #rmInfoName:Ljava/lang/String;
    .end local v12           #phoneType:I
    .end local v13           #activeMode:Ljava/lang/String;
    .end local v14           #currentMCInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v16           #mcName:Ljava/lang/String;
    .end local v17           #parsedMCEntries:I
    .end local v18           #parsedRMEntries:I
    .end local v21           #rmName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_8

    .line 512
    check-cast v19, Landroid/content/res/XmlResourceParser;

    .end local v19           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 515
    :cond_8
    if-eqz v22, :cond_9

    .line 516
    :try_start_6
    throw v22
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 511
    :cond_9
    :goto_3
    throw v1

    .line 518
    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 723
    const-string v0, "ModemConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method


# virtual methods
.method public getModemConfigNumberOfEntries()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    return v0
.end method

.method public getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .locals 3
    .parameter "modemId"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 383
    .local v1, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getModemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 387
    .end local v1           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .locals 3

    .prologue
    .line 376
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 377
    .local v1, size:I
    new-array v0, v1, [Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 378
    .local v0, modems:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    return-object v2
.end method

.method public getPrimaryPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneProxy()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initModems()V
    .locals 6

    .prologue
    .line 400
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 401
    .local v1, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->initPhoneInstances()V

    goto :goto_0

    .line 406
    .end local v1           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_1
    const-string v2, "registerForIccChanged, ModemConfigManager"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 408
    return-void
.end method

.method public isModemConfigFileLoaded()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    return v0
.end method

.method public loadModemConfigFile()V
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 419
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromXml()V

    .line 422
    :goto_0
    return-void

    .line 414
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromFileSystem()V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method updateIccAvailability()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 696
    const-string v6, "updateIccAvailability"

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 697
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 698
    .local v4, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget-object v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 699
    .local v5, r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    iget v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    if-ne v6, v9, :cond_2

    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    if-eq v6, v8, :cond_1

    .line 701
    :cond_2
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v3

    .line 702
    .local v3, iccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;
    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    iget v7, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    invoke-virtual {v3, v6, v7}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 705
    .local v0, app:Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_3

    iget v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    if-ne v6, v9, :cond_3

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v6, :cond_3

    .line 708
    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-virtual {v3, v6, v8}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 712
    :cond_3
    const-string v6, "ModemConfigManager"

    const-string v7, "assign icc card at power up"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    if-eq v6, v0, :cond_1

    .line 714
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneObj:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/PhoneBase;->updateIccAvailability(Lcom/android/internal/telephony/IccCard;)V

    .line 715
    iput-object v0, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    goto :goto_0

    .line 720
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;
    .end local v4           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :cond_4
    return-void
.end method
