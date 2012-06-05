.class public final Lcom/motorola/android/telephony/SUPForAssistedDialing;
.super Ljava/lang/Object;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/SUPForAssistedDialing$1;,
        Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_MOT_SETTING_UPDATE:I = 0x1

.field public static final mADLock:Ljava/lang/Object;

.field private static mCurrentMcc:I

.field static mCurrentSid:I

.field private static mMccTable:Lcom/motorola/android/telephony/MCCTables;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 28
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 29
    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "SUPForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 92
    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    .line 93
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->start()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V

    return-void
.end method

.method private updateCountryDetailsFromUserTable()V
    .locals 2

    .prologue
    .line 337
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 339
    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 345
    :cond_0
    return-void
.end method

.method private updateCountryDetailsFromVZWTable(I)V
    .locals 2
    .parameter "mcc"

    .prologue
    .line 321
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 323
    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 329
    :cond_0
    return-void
.end method

.method private updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    const-string v1, "cur_country_mcc"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    const-string v1, "cur_country_code"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    const-string v1, "cur_country_name"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    const-string v1, "cur_country_idd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    const-string v1, "cur_country_ndd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    const-string v1, "cur_country_area_code"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    const-string v1, "cur_country_mdn_len"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 267
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 274
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnknownMcc(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, isUnknownMccNotified:I
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 173
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    .line 174
    const-string v3, "SUPForAssistedDialing"

    const-string v4, " MCC lookup table not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 225
    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .line 178
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v2

    .line 182
    .local v2, tempMcc:I
    if-lez v2, :cond_1

    .line 184
    const/4 v0, 0x1

    .line 185
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 187
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 188
    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromVZWTable(I)V

    :goto_1
    move v1, v0

    .line 225
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 191
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 195
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_2

    .line 197
    const/4 v0, 0x2

    goto :goto_1

    .line 204
    :cond_2
    const/4 v0, 0x1

    .line 205
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 206
    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromUserTable()V

    goto :goto_1

    .line 213
    :cond_3
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-eq v3, p2, :cond_4

    .line 217
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 220
    :cond_4
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 221
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkUnknownMcc(III)I
    .locals 1
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTflag"

    .prologue
    .line 255
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v0

    goto :goto_0
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 243
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryName"

    .prologue
    .line 307
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->isUnknownCountryExist()Z

    move-result v0

    goto :goto_0
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    goto :goto_0
.end method

.method public updateCurrentCountryDetails(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 104
    .local v0, isUnknownMccNotified:I
    const/4 v2, 0x0

    .line 114
    .local v2, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    move v1, v0

    .line 159
    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .line 121
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-ne v3, p1, :cond_1

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_1

    .line 123
    const/4 v0, 0x2

    move v1, v0

    .line 124
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 127
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_3

    .line 133
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-eq p1, v3, :cond_2

    .line 134
    const/4 v0, 0x1

    .line 135
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 136
    const-string v3, "SUPForAssistedDialing"

    const-string v4, "Updating the Current country"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 139
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 146
    :goto_1
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :goto_2
    move v1, v0

    .line 159
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 144
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->checkAndUpdateUnknownMcc(IIII)I

    move-result v0

    goto :goto_2
.end method
