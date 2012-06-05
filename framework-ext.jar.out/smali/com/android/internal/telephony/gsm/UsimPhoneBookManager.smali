.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    }
.end annotation


# static fields
.field static final ADN_FOOTER_SIZE_BYTES:I = 0xe

.field static final ADN_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_MAX_NUMBER_BYTES:I = 0xa

.field static final ANR_NUMBER_EXT1_OFFSET:I = 0xe

.field static final ANR_NUMBER_LENGTH_OFFSET:I = 0x1

.field static final ANR_NUMBER_OFFSET:I = 0x2

.field static final ANR_TON_OFFSET:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x7

.field private static final EVENT_EFANR_LINEAR_RECORD_SIZE_DONE:I = 0x1b

.field private static final EVENT_EFEMAIL_LINEAR_RECORD_SIZE_DONE:I = 0x18

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT1_LOAD_DONE:I = 0x14

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_LINEAR_RECORD_SIZE_DONE:I = 0x1c

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x11

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0xe

.field private static final EVENT_UPDATE_EXT_DONE:I = 0x12

.field private static final EVENT_UPDATE_IAP_DONE:I = 0xd

.field private static final EVENT_UPDATE_USIM_ADN_DONE:I = 0xc

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT1_MAX_RECORD:I = 0xa

.field static final EXT_MAX_NUMBER_BYTES:I = 0xa

.field static final EXT_RECORD_SIZE:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PROPERTY_USIM_SUPPORT_ANR:Ljava/lang/String; = "gsm.mot.usim.support.anr"

.field static final PROPERTY_USIM_SUPPORT_EMAIL:Ljava/lang/String; = "gsm.mot.usim.support.email"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnBase:I

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnSizeInfo:[I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExt1FileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mExt1Record:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExt1Set:Ljava/util/BitSet;

.field private mExt1Size:I

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateSuccess:Z

.field private mallEmailFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mallIapFileRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    .line 612
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 67
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    .line 612
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 128
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 133
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private addAnrToPhoneBookRecord(II)V
    .locals 11
    .parameter "adnGroup"
    .parameter "adnBase"

    .prologue
    .line 1187
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1192
    .local v6, numAdnRecs:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size of adn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1198
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v5, v8, p2

    .line 1201
    .local v5, len:I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(I)V

    .line 1203
    move v4, p2

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 1204
    const/4 v0, 0x0

    .line 1206
    .local v0, anr:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anr:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .restart local v0       #anr:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1203
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1207
    .end local v0           #anr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1224
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    goto :goto_0

    .line 1212
    .restart local v0       #anr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 1214
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    sub-int v9, v4, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1215
    .local v1, anrRec:[B
    const/16 v8, 0xe

    aget-byte v8, v1, v8

    and-int/lit16 v3, v8, 0xff

    .line 1216
    .local v3, extRecord:I
    if-lez v3, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v3, v8, :cond_3

    .line 1217
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtRecord(I)V

    .line 1218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    :cond_3
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    .line 1221
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private buildExtString(Ljava/lang/String;I)[B
    .locals 9
    .parameter "extNumber"
    .parameter "recordSize"

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 616
    new-array v1, p2, [B

    .line 618
    .local v1, extData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 619
    aput-byte v5, v1, v2

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_0
    aput-byte v4, v1, v4

    .line 623
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 624
    :cond_1
    const-string v3, "[buildExtString] Empty number"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 641
    :goto_1
    return-object v1

    .line 627
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    .line 628
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 631
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 632
    .local v0, bcdNumber:[B
    if-eqz v0, :cond_4

    .line 633
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    :cond_4
    aput-byte v7, v1, v4

    .line 637
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 638
    add-int/lit8 v3, p2, -0x1

    aput-byte v5, v1, v3

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1743
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1745
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1749
    :goto_0
    return-void

    .line 1748
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAvailableExtIndex()I
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 206
    .local v0, index:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v0, v1, :cond_0

    .end local v0           #index:I
    :goto_0
    return v0

    .restart local v0       #index:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xc4

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 324
    :goto_0
    return-object v3

    .line 299
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 300
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 304
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 306
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 309
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 320
    const-string v3, "verifyAnr failed get EFANR Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 321
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 9
    .parameter "pbrIndex"

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xca

    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 480
    :goto_0
    return-object v3

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 452
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 457
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 460
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 463
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 467
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 476
    const-string v3, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 477
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in verifyEmail"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 480
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .locals 7
    .parameter "pbrIndex"
    .parameter "efTag"

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 245
    :goto_0
    return-object v3

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 221
    .local v2, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 225
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 230
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1c

    invoke-virtual {p0, v6, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_4
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 241
    const-string v3, "failed get EF Info"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 242
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in getEfInfo"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 245
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    goto :goto_0
.end method

.method private getFreeEmailLocation(I)I
    .locals 8
    .parameter "pbrIndex"

    .prologue
    const/4 v5, -0x1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v1

    .line 419
    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v1, :cond_1

    .line 420
    const-string v6, "getFreeEmailLocation failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 440
    :cond_0
    :goto_0
    return v4

    .line 424
    :cond_1
    const/4 v4, -0x1

    .line 425
    .local v4, recordIndexInEF:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 426
    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v4, v5

    .line 428
    goto :goto_0

    .line 431
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v6, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    if-ge v3, v6, :cond_0

    .line 432
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 433
    .local v2, emailrecord:[B
    if-nez v2, :cond_3

    move v4, v5

    goto :goto_0

    .line 434
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEmptyEFRecord([B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 435
    add-int/lit8 v4, v3, 0x1

    .line 436
    goto :goto_0

    .line 431
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getMaxANRNumberLength()I
    .locals 1

    .prologue
    .line 290
    const/16 v0, 0x14

    return v0
.end method

.method private isEmptyEFRecord([B)Z
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x3

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 404
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 409
    :cond_0
    if-eq v0, v3, :cond_2

    .line 410
    const/4 v1, 0x0

    .line 413
    :goto_1
    return v1

    .line 403
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2047
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2051
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USIMPB] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    return-void
.end method

.method private parseANR([BZ)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "isType2"

    .prologue
    .line 1151
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v2, v5, 0xff

    .line 1152
    .local v2, numberLength:I
    const/4 v5, 0x2

    invoke-static {p1, v5, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, number:Ljava/lang/String;
    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    .line 1155
    .local v0, extRecord:I
    const/16 v5, 0xff

    if-ne v0, v5, :cond_0

    const/4 v0, 0x0

    .line 1157
    :cond_0
    if-eqz p2, :cond_1

    .line 1158
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p1, v5

    and-int/lit16 v4, v5, 0xff

    .line 1159
    .local v4, sfi:I
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 1160
    .local v3, recID:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type2 ANR,(sfi-rec#):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1162
    .end local v3           #recID:I
    .end local v4           #sfi:I
    :cond_1
    return-object v1
.end method

.method private readANRFileAndWait(II)V
    .locals 6
    .parameter "recNum"
    .parameter "adnBase"

    .prologue
    const/16 v5, 0xc4

    .line 1230
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1233
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1238
    .local v1, efid:I
    const-string v3, "Just support TYPE1 ANR"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1243
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1246
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 1253
    const-string v3, "Error: Anr file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readANRFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1257
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v3, "gsm.mot.usim.support.anr"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToPhoneBookRecord(II)V

    .line 1261
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private readAdnFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v6, 0xc2

    const/16 v5, 0xc0

    .line 1712
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1716
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1719
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1721
    const/4 v1, 0x0

    .line 1722
    .local v1, efExtId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1723
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1726
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1735
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1728
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1729
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "NullPointerException in readAdnFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc1

    const/16 v6, 0xca

    .line 1464
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1468
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1470
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1476
    .local v1, efid:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v3, :cond_4

    .line 1479
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1480
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 1484
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1485
    const-string v3, "Error: IAP file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1501
    const-string v3, "gsm.mot.usim.support.email"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1506
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 1512
    const-string v3, "Error: Email file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1517
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    .line 1684
    const/4 v3, 0x0

    .line 1686
    .local v3, emailRec:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    const/4 v4, 0x0

    .line 1693
    .local v4, recSize:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v5, :cond_0

    .line 1695
    array-length v4, v3

    .line 1703
    :goto_0
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1706
    .end local v4           #recSize:I
    :goto_1
    return-object v2

    .line 1687
    :catch_0
    move-exception v1

    .line 1688
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_1

    .line 1699
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #recSize:I
    :cond_0
    array-length v5, v3

    add-int/lit8 v4, v5, -0x2

    goto :goto_0
.end method

.method private readExt1AndWait()V
    .locals 9

    .prologue
    const/16 v8, 0xc2

    const/4 v6, 0x0

    .line 1269
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 1296
    :cond_0
    return-void

    .line 1271
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1272
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 1274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1276
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1278
    .local v1, extensionEF:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1281
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1288
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    .line 1289
    new-instance v5, Ljava/util/BitSet;

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    invoke-direct {v5, v7}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    .line 1290
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Size:I

    if-ge v3, v5, :cond_0

    .line 1291
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/AdnRecord;->parseExt1([B)Ljava/lang/String;

    move-result-object v4

    .line 1292
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v7, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 1290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1282
    .end local v3           #i:I
    .end local v4           #number:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1283
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v5, "Interrupted Exception in readExt1AndWait:"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #i:I
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 1293
    goto :goto_2
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1528
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readIapFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1455
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    :goto_0
    return-void

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 198
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private stringCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 882
    if-ne p1, p2, :cond_0

    .line 883
    const/4 v0, 0x1

    .line 891
    :goto_0
    return v0

    .line 885
    :cond_0
    if-nez p1, :cond_1

    .line 886
    const-string p1, ""

    .line 888
    :cond_1
    if-nez p2, :cond_2

    .line 889
    const-string p2, ""

    .line 891
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 14
    .parameter "adnGroup"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1537
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1538
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1540
    .local v6, numAdnRecs:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v10, :cond_5

    .line 1548
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1550
    const/4 v9, 0x0

    .line 1552
    .local v9, record:[B
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    .restart local v9       #record:[B
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .line 1561
    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 1563
    and-int/lit16 v5, v8, 0xff

    .line 1564
    .local v5, n1:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " adn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", email index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1565
    const/16 v10, 0xff

    if-ne v5, v10, :cond_3

    .line 1566
    const-string v10, "oops,unused entry for email"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1548
    .end local v5           #n1:I
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1553
    .end local v8           #recNum:I
    .end local v9           #record:[B
    :catch_0
    move-exception v1

    .line 1554
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1570
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v5       #n1:I
    .restart local v8       #recNum:I
    .restart local v9       #record:[B
    :cond_3
    new-array v3, v13, [Ljava/lang/String;

    .line 1572
    .local v3, emails:[Ljava/lang/String;
    add-int/lit8 v10, v8, -0x1

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v12

    .line 1574
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v4, v10

    .line 1575
    .local v0, adnIndex:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";for adn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1577
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 1579
    .local v7, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v7, :cond_4

    .line 1580
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1586
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1583
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v7, v10, v11, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v7       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_3

    .line 1596
    .end local v0           #adnIndex:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #n1:I
    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 1597
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 1598
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1596
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1601
    :cond_6
    new-array v3, v13, [Ljava/lang/String;

    .line 1602
    .restart local v3       #emails:[Ljava/lang/String;
    aput-object v2, v3, v12

    .line 1603
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    add-int v0, v4, v10

    .line 1604
    .restart local v0       #adnIndex:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update email:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";for adn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1605
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/AdnRecord;

    .line 1606
    .restart local v7       #rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v7, :cond_7

    .line 1607
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1612
    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1610
    :cond_7
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    .end local v7           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v7, v10, v11, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v7       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_6
.end method

.method private updatelocalEmailRecord(II[B)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "recordIndexInEF"
    .parameter "newEmailRecord"

    .prologue
    const/16 v8, 0xca

    const/4 v5, 0x0

    .line 1003
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1004
    .local v3, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v3, :cond_0

    .line 1028
    :goto_0
    return v5

    .line 1006
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1007
    const-string v6, "verifyEmail failed get EFEMAIL Info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    .line 1013
    .local v1, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1014
    .local v0, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_2

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "don\'t get email file record for PBR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1021
    .local v2, emailrecord:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v5, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    if-ge v4, v5, :cond_3

    .line 1022
    aget-byte v5, p3, v4

    aput-byte v5, v2, v4

    .line 1021
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1025
    :cond_3
    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private verifyAdn(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 12
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/16 v11, 0xc0

    const/16 v10, 0x28

    const/16 v9, 0x14

    const/4 v6, 0x0

    .line 249
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, tag:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, number:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v6

    .line 256
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 257
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 259
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    invoke-direct {p0, p1, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfInfo(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .line 262
    .local v0, adnInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-eqz v0, :cond_0

    .line 266
    iget v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    add-int/lit8 v3, v7, -0xe

    .line 268
    .local v3, maxNameLength:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 269
    invoke-virtual {v4, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {p3, v4}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 273
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_3

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New adn length too long, adn length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .line 276
    .local v1, extIndex:I
    if-gez v1, :cond_4

    .line 277
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 284
    .end local v1           #extIndex:I
    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 279
    .restart local v1       #extIndex:I
    :cond_4
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setExtRecord(I)V

    .line 280
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAdnExtNumber(Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1
.end method

.method private verifyAnr(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 9
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 329
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, newanr:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, oldanr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 336
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    const-string v6, "same anr. doesn\'t need change"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v7, :cond_4

    :cond_3
    move v5, v6

    goto :goto_0

    .line 346
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 347
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_5

    move v5, v6

    goto :goto_0

    .line 350
    :cond_5
    const/16 v7, 0xc4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v0

    .line 353
    .local v0, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v0, :cond_6

    move v5, v6

    .line 354
    goto :goto_0

    .line 357
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x14

    if-le v7, v8, :cond_7

    .line 358
    const/16 v7, 0x28

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    .line 362
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New anr length too long, newanr length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",limit is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAvailableExtIndex()I

    move-result v1

    .line 366
    .local v1, extIndex:I
    if-gez v1, :cond_8

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setANR(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_8
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtRecord(I)V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getMaxANRNumberLength()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/android/internal/telephony/AdnRecord;->setAnrExtNumber(Ljava/lang/String;)V

    .line 371
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 378
    .end local v0           #anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v1           #extIndex:I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This PBR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "doesn\'t support ANR"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v5, v6

    .line 380
    goto/16 :goto_0
.end method

.method private verifyEmail(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 19
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 486
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 487
    .local v11, newemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 489
    .local v10, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 490
    .local v15, oldemails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v15, v17

    .line 492
    .local v14, oldemail:Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 493
    const-string v17, "email is same, not need update"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 494
    const/16 v17, 0x1

    .line 574
    :goto_0
    return v17

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 502
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 503
    .local v6, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v6, :cond_3

    const/16 v17, 0x0

    goto :goto_0

    .line 507
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 508
    .local v5, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_4

    const/16 v17, 0x0

    goto :goto_0

    .line 510
    :cond_4
    const/16 v17, 0xca

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 519
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 520
    .local v9, newEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v8, v9, v17

    .line 522
    .local v8, newEmail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    .line 523
    .local v13, oldEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v12, v13, v17

    .line 526
    .local v12, oldEmail:Ljava/lang/String;
    const/16 v16, 0x0

    .line 528
    .local v16, recLen:I
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v3

    .line 529
    .local v3, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v3, :cond_5

    const/16 v17, 0x0

    goto :goto_0

    .line 531
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 533
    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    .line 534
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type1 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 557
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 559
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    .line 560
    .local v2, clipEmails:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 561
    .local v7, newCharEmail:[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v7, v0, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    .line 562
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 564
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New email length too long, newemail length"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",limit is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 568
    .end local v2           #clipEmails:[Ljava/lang/String;
    .end local v7           #newCharEmail:[C
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 539
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_8

    .line 541
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v17

    if-gez v17, :cond_8

    .line 542
    const-string v17, "don\'t have free email record, and reset email"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 544
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 545
    .local v4, emptyEmails:[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v4, v17

    .line 546
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v11

    .line 548
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 552
    .end local v4           #emptyEmails:[Ljava/lang/String;
    :cond_8
    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x2

    .line 553
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Email type2 ... emailInfo.recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " recLen="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    .end local v3           #emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v8           #newEmail:Ljava/lang/String;
    .end local v9           #newEmails:[Ljava/lang/String;
    .end local v12           #oldEmail:Ljava/lang/String;
    .end local v13           #oldEmails:[Ljava/lang/String;
    .end local v16           #recLen:I
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "This PBR: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "doesn\'t support EMAIL"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 574
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private verifyIap(ILcom/android/internal/telephony/AdnRecord;)Z
    .locals 4
    .parameter "pbrIndex"
    .parameter "newAdn"

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 390
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 393
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    const/4 v1, 0x1

    goto :goto_0

    .line 397
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This PBR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doesn\'t have EFIAP, so doesn\'t support type2 ef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyInput(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 5
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/4 v3, 0x0

    .line 579
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    const/4 v1, 0x1

    .line 608
    :goto_0
    return v1

    .line 583
    :cond_0
    const/4 v1, 0x1

    .line 585
    .local v1, finalVerifyResult:Z
    const/4 v2, 0x1

    .line 587
    .local v2, tmpVerifyResult:Z
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAdn(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 591
    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    .line 593
    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 594
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyAnr(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 597
    :cond_3
    if-nez v2, :cond_4

    move v1, v3

    .line 600
    :cond_4
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, emails:[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 602
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyEmail(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v2

    .line 605
    :cond_5
    if-nez v2, :cond_6

    move v1, v3

    .line 608
    :cond_6
    goto :goto_0
.end method

.method private writeADNFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 17
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 667
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, newname:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 670
    .local v12, newnumber:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    .line 671
    .local v13, oldname:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v14

    .line 673
    .local v14, oldnumber:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    const/4 v2, 0x1

    .line 713
    :goto_0
    return v2

    .line 679
    :cond_0
    const/4 v2, 0x0

    aget v4, p1, v2

    .line 680
    .local v4, usimAdnEf:I
    const/4 v2, 0x1

    aget v5, p1, v2

    .line 681
    .local v5, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v16, p1, v2

    .line 682
    .local v16, recordIndexInEF:I
    const/4 v2, 0x3

    aget v10, p1, v2

    .line 684
    .local v10, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .line 687
    .local v15, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_3

    .line 688
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 697
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 700
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 705
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 706
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAdnExtNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    .line 710
    :cond_1
    :goto_3
    const-string v2, "update adn sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 713
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    .line 692
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    add-int/lit8 v6, v16, 0x1

    const/16 v3, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 701
    :catch_0
    move-exception v9

    .line 702
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeADNFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 707
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 708
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getExtRecord()I

    move-result v2

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_3
.end method

.method private writeANRFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 20
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 718
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v13

    .line 719
    .local v13, newanr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v14

    .line 721
    .local v14, oldanr:Ljava/lang/String;
    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    :cond_0
    const/4 v2, 0x1

    .line 778
    :goto_0
    return v2

    .line 726
    :cond_1
    const/4 v2, 0x0

    aget v18, p1, v2

    .line 727
    .local v18, usimAdnEf:I
    const/4 v2, 0x1

    aget v19, p1, v2

    .line 728
    .local v19, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v17, p1, v2

    .line 729
    .local v17, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 731
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v15, p1, v2

    .line 736
    .local v15, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 738
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 739
    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 740
    :cond_4
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 744
    .local v3, efid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 745
    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 747
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfAnrInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v8

    .line 748
    .local v8, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v8, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 750
    :cond_6
    iget v0, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v16, v0

    .line 751
    .local v16, recSize:I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getANR()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(Ljava/lang/String;I)[B

    move-result-object v5

    .line 754
    .local v5, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    add-int/lit8 v4, v17, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 760
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_9

    .line 766
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    .line 771
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_8

    .line 772
    const-string v2, "failed update AnrT1 file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 776
    :cond_8
    const-string v2, "update anr sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 778
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    .line 761
    :catch_0
    move-exception v9

    .line 762
    .local v9, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeANRFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 767
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const/16 v4, 0xff

    if-eq v2, v4, :cond_7

    .line 768
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getAnrExtRecord()I

    move-result v2

    const-string v4, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeExt1FileAndWait(IILjava/lang/String;)Z

    goto :goto_2
.end method

.method private writeEmailFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 898
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v14

    .line 899
    .local v14, newemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v13, v14, v2

    .line 901
    .local v13, newemail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v16

    .line 902
    .local v16, oldemails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v15, v16, v2

    .line 905
    .local v15, oldemail:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->stringCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    const-string v2, "stringCompare: email is same, not need update"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 911
    const/4 v2, 0x1

    .line 996
    :goto_0
    return v2

    .line 914
    :cond_0
    const/4 v2, 0x0

    aget v21, p1, v2

    .line 915
    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .line 916
    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .line 917
    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 919
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v17, p1, v2

    .line 922
    .local v17, pbrIndex:I
    const/4 v4, -0x1

    .line 923
    .local v4, emailRecordNumber:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_1

    .line 924
    invoke-direct/range {p0 .. p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeIapFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I

    move-result v4

    .line 929
    :goto_1
    const/4 v2, -0x1

    if-ne v4, v2, :cond_2

    .line 930
    const/4 v2, 0x0

    goto :goto_0

    .line 926
    :cond_1
    add-int/lit8 v4, v19, 0x1

    goto :goto_1

    .line 933
    :cond_2
    if-nez v4, :cond_3

    .line 934
    const-string v2, "should not run at here, needn\'t write email"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 935
    const/4 v2, 0x1

    goto :goto_0

    .line 941
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 943
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 944
    .local v11, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-nez v11, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 948
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 949
    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v10, :cond_7

    const/4 v2, 0x0

    goto :goto_0

    .line 951
    :cond_7
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 952
    .local v3, efid:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfEmailInfo(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    move-result-object v9

    .line 953
    .local v9, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    if-nez v9, :cond_8

    .line 954
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 957
    :cond_8
    iget v0, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    move/from16 v18, v0

    .line 960
    .local v18, recSize:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(Ljava/lang/String;IZ)[B

    move-result-object v5

    .line 963
    .local v5, data:[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_9

    .line 966
    const/16 v20, 0xff

    .line 967
    .local v20, sfi:I
    add-int/lit8 v2, v18, -0x2

    move/from16 v0, v20

    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 969
    add-int/lit8 v2, v18, -0x1

    add-int/lit8 v6, v19, 0x1

    int-to-byte v6, v6

    and-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 974
    .end local v20           #sfi:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 977
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 980
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_a

    .line 987
    const-string v2, "failed update EMAIL file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 992
    :cond_a
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatelocalEmailRecord(II[B)Z

    .line 994
    const-string v2, "update EMAIL sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto/16 :goto_0

    .line 981
    :catch_0
    move-exception v8

    .line 982
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeEmailFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private writeExt1FileAndWait(IILjava/lang/String;)Z
    .locals 8
    .parameter "efid"
    .parameter "index"
    .parameter "extNumber"

    .prologue
    const/4 v7, 0x0

    .line 645
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v7

    .line 662
    :goto_0
    return v0

    .line 647
    :cond_1
    const/16 v0, 0xd

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildExtString(Ljava/lang/String;I)[B

    move-result-object v3

    .line 648
    .local v3, data:[B
    aget-byte v0, v3, v7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x0

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 654
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    goto :goto_0

    .line 658
    :catch_0
    move-exception v6

    .line 659
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted Exception in writeExt1FileAndWait"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeIapFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)I
    .locals 23
    .parameter "adnLocationInfo"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"

    .prologue
    .line 783
    const/16 v20, 0x0

    .line 785
    .local v20, recordNumber:I
    const/4 v2, 0x0

    aget v21, p1, v2

    .line 786
    .local v21, usimAdnEf:I
    const/4 v2, 0x1

    aget v22, p1, v2

    .line 787
    .local v22, usimAdnExtentionEf:I
    const/4 v2, 0x2

    aget v19, p1, v2

    .line 788
    .local v19, recordIndexInEF:I
    const/4 v2, 0x3

    aget v12, p1, v2

    .line 790
    .local v12, indexInPhoneBookRecords:I
    const/4 v2, 0x4

    aget v18, p1, v2

    .line 795
    .local v18, pbrIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 877
    :goto_0
    return v2

    .line 797
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 798
    .local v9, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v9, :cond_2

    const/4 v2, -0x1

    goto :goto_0

    .line 801
    :cond_2
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 802
    const/4 v2, -0x1

    goto :goto_0

    .line 805
    :cond_3
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 807
    .local v3, efid:I
    const/4 v13, -0x1

    .line 808
    .local v13, location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 809
    .local v11, iaprecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v11, :cond_4

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t get email file record for PBR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 811
    const/4 v2, -0x1

    goto :goto_0

    .line 814
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v0, v2, :cond_5

    .line 815
    const/4 v2, -0x1

    goto :goto_0

    .line 818
    :cond_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 820
    .local v5, iaprecode:[B
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 821
    .local v15, newEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v14, v15, v2

    .line 823
    .local v14, newEmail:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v17

    .line 824
    .local v17, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v16, v17, v2

    .line 828
    .local v16, oldEmail:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 830
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 832
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    const/4 v4, -0x1

    aput-byte v4, v5, v2

    .line 857
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    add-int/lit8 v4, v19, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 862
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 865
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    if-nez v2, :cond_6

    .line 871
    const-string v2, "failed update IAP file:"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 875
    :cond_6
    const-string v2, "update iap sucessfully"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move/from16 v2, v20

    .line 877
    goto/16 :goto_0

    .line 833
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 835
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getFreeEmailLocation(I)I

    move-result v10

    .line 836
    .local v10, freeEmailLocation:I
    if-gez v10, :cond_8

    .line 837
    const-string v2, "no empty email location"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 838
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 841
    :cond_8
    move/from16 v20, v10

    .line 843
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    and-int/lit16 v4, v10, 0xff

    int-to-byte v4, v4

    aput-byte v4, v5, v2

    goto :goto_1

    .line 847
    .end local v10           #freeEmailLocation:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v2, v5, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t write iap, get email record:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 850
    const/16 v2, 0xff

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    .line 851
    const-string v2, "something wrong"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v2, v20

    .line 854
    goto/16 :goto_0

    .line 866
    :catch_0
    move-exception v8

    .line 867
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v2, "Interrupted Exception in writeIapFileAndWait"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;)[I
    .locals 13
    .parameter "adn"

    .prologue
    .line 1362
    const/4 v9, 0x0

    .line 1363
    .local v9, results:[I
    const/4 v0, -0x1

    .line 1364
    .local v0, efid:I
    const/4 v1, -0x1

    .line 1365
    .local v1, extensionEF:I
    const/4 v4, 0x0

    .line 1366
    .local v4, index:I
    const/4 v6, -0x1

    .line 1369
    .local v6, location:I
    const/4 v7, 0x0

    .line 1371
    .local v7, pbrIndex:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1375
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p1, v11}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1381
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v4, v11, :cond_2

    .line 1382
    const-string v11, "oops,usim adn full"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1387
    const-string v11, "gsm.mot.sim.update.error"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 1438
    .end local v9           #results:[I
    .local v10, results:[I
    :goto_1
    return-object v10

    .line 1371
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    move v6, v4

    .line 1392
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    array-length v11, v11

    if-ge v3, v11, :cond_5

    .line 1393
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v8, v11, v3

    .line 1394
    .local v8, recNum:I
    if-ge v4, v8, :cond_7

    .line 1397
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v11, :cond_3

    .line 1398
    const-string v11, "mPbrFile is null now"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v10, v9

    .line 1399
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_1

    .line 1402
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1403
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_4

    move-object v10, v9

    .line 1404
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto :goto_1

    .line 1408
    .end local v10           #results:[I
    .restart local v9       #results:[I
    :cond_4
    move v7, v3

    .line 1414
    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1415
    const/16 v11, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1416
    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1417
    const/16 v11, 0xc2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1427
    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8           #recNum:I
    :cond_5
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findAdnRecordInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v0, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",extention:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v1, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",location:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1431
    const/4 v11, 0x5

    new-array v9, v11, [I

    .line 1432
    const/4 v11, 0x0

    aput v0, v9, v11

    .line 1433
    const/4 v11, 0x1

    aput v1, v9, v11

    .line 1434
    const/4 v11, 0x2

    aput v4, v9, v11

    .line 1435
    const/4 v11, 0x3

    aput v6, v9, v11

    .line 1436
    const/4 v11, 0x4

    aput v7, v9, v11

    move-object v10, v9

    .line 1438
    .end local v9           #results:[I
    .restart local v10       #results:[I
    goto/16 :goto_1

    .line 1419
    .end local v10           #results:[I
    .restart local v2       #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v8       #recNum:I
    .restart local v9       #results:[I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 1425
    .end local v2           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_7
    sub-int/2addr v4, v8

    .line 1392
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1755
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1936
    :goto_0
    :pswitch_0
    return-void

    .line 1757
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1758
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1759
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1761
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1762
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1763
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1766
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v8, "Loading USIM ADN records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1767
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1768
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    .line 1769
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1770
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current number of records: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1772
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1773
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1774
    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 1777
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v8, "Loading USIM IAP records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1779
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    .line 1780
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1782
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1783
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1784
    monitor-exit v9

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    .line 1787
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v8, "Loading USIM Email records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1788
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1789
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 1790
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1793
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1794
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1795
    monitor-exit v9

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v8

    .line 1800
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v8, "Loading USIM ANR records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1801
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1802
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_4

    .line 1803
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 1806
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1807
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1808
    monitor-exit v9

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v8

    .line 1811
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v8, "Loading USIM Ext1 records done"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1813
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    .line 1814
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 1817
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1818
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1819
    monitor-exit v9

    goto/16 :goto_0

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v8

    .line 1824
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1825
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1826
    .local v6, pbrIndex:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1828
    .local v2, efTag:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_6

    .line 1829
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "get record size failed"

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1833
    :cond_6
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 1839
    .local v7, recordSize:[I
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1840
    .local v1, efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 1841
    aget v8, v7, v10

    iput v8, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 1844
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1845
    .local v5, fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_7

    .line 1846
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1850
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1851
    monitor-exit v9

    goto/16 :goto_0

    :catchall_6
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v8

    .line 1856
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #efInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v2           #efTag:I
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1857
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1859
    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_8

    .line 1860
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "get EFANR record size failed"

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1864
    :cond_8
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 1870
    .restart local v7       #recordSize:[I
    new-instance v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1871
    .local v3, efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 1872
    aget v8, v7, v10

    iput v8, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 1875
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1876
    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_9

    .line 1877
    const/16 v8, 0xc4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1881
    :try_start_7
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1882
    monitor-exit v9

    goto/16 :goto_0

    :catchall_7
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v8

    .line 1887
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #efanrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_9
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    .line 1888
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1890
    .restart local v6       #pbrIndex:I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_a

    .line 1891
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "get EFANR record size failed"

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1895
    :cond_a
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 1901
    .restart local v7       #recordSize:[I
    new-instance v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    .line 1902
    .local v4, efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    aget v8, v7, v9

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recLen:I

    .line 1903
    aget v8, v7, v10

    iput v8, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;->recNum:I

    .line 1906
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileInfos:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1907
    .restart local v5       #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    if-eqz v5, :cond_b

    .line 1908
    const/16 v8, 0xca

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1912
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1913
    monitor-exit v9

    goto/16 :goto_0

    :catchall_8
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v8

    .line 1921
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #efemailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;
    .end local v5           #fileInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$UiccEfInfo;>;"
    .end local v6           #pbrIndex:I
    .end local v7           #recordSize:[I
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1922
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_c

    .line 1923
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 1929
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1930
    :try_start_9
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1931
    monitor-exit v9

    goto/16 :goto_0

    :catchall_9
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v8

    .line 1925
    :cond_c
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mUpdateSuccess:Z

    .line 1926
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",exception is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1300
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1301
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 1355
    :goto_0
    return-object v3

    .line 1302
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 1354
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1306
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 1307
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1311
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v5, :cond_4

    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 1315
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1AndWait()V

    .line 1317
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 1320
    .local v2, numRecs:I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    .line 1323
    const/4 v0, 0x0

    .line 1325
    .local v0, adnBase:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    .line 1327
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1328
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 1331
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    aput v5, v3, v1

    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adn size of rec "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1334
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v3, v3, v1

    if-nez v3, :cond_5

    .line 1335
    const-string v3, "Read 0 ADN, no need to read Email, ANR..."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1327
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1343
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 1345
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readANRFileAndWait(II)V

    .line 1347
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1348
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnSizeInfo:[I

    aget v5, v5, v1

    add-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAdnBase:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnBase:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1354
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1AnrFile(I)V
    .locals 6
    .parameter "numRecs"

    .prologue
    .line 1166
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    .line 1167
    const/4 v1, 0x0

    .line 1168
    .local v1, anrRec:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_2

    .line 1170
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anrRec:[B
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .restart local v1       #anrRec:[B
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseANR([BZ)Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1179
    :cond_0
    const-string v0, ""

    .line 1182
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1171
    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #anrRec:[B
    :catch_0
    move-exception v2

    .line 1172
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Improper ICC card: No anr record for ADN, break,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 1184
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .parameter "numRecs"

    .prologue
    .line 1651
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 1652
    const/4 v3, 0x0

    .line 1653
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 1655
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    .restart local v3       #emailRec:[B
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    .line 1662
    .local v0, adnRecNum:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 1653
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1656
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 1657
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loge(Ljava/lang/String;)V

    .line 1681
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 1666
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1673
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1674
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 1675
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/ArrayList;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallIapFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mallEmailFileRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    const-string v0, "gsm.mot.usim.support.anr"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "gsm.mot.usim.support.email"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Set:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1Record:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1FileRecord:Ljava/util/ArrayList;

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 2
    .parameter "index"
    .parameter "newAdn"

    .prologue
    .line 1442
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1443
    :cond_0
    const-string v0, "oops,invalid index"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1448
    :goto_0
    return-void

    .line 1446
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnByindex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 21
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1038
    const/16 p4, 0x0

    .line 1039
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findAdnRecordInfo(Lcom/android/internal/telephony/AdnRecord;)[I

    move-result-object v4

    .line 1040
    .local v4, adnLocationInfo:[I
    if-nez v4, :cond_0

    .line 1041
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Adn record don\'t exist for "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1042
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Adn record don\'t exist for "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1043
    monitor-exit v19

    .line 1138
    :goto_0
    return-void

    .line 1045
    :cond_0
    const/16 v18, 0x0

    aget v16, v4, v18

    .line 1046
    .local v16, usimAdnEf:I
    const/16 v18, 0x1

    aget v17, v4, v18

    .line 1047
    .local v17, usimAdnExtentionEf:I
    const/16 v18, 0x2

    aget v13, v4, v18

    .line 1048
    .local v13, recordIndexInEF:I
    const/16 v18, 0x3

    aget v9, v4, v18

    .line 1051
    .local v9, indexInPhoneBookRecords:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 p2, v0

    .line 1054
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1055
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 1056
    .local v7, emails:[Ljava/lang/String;
    const-string v6, ""

    .line 1057
    .local v6, email:Ljava/lang/String;
    const/16 v18, 0x0

    aput-object v6, v7, v18

    .line 1058
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1061
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    :cond_1
    const/16 v18, 0x4

    aget v11, v4, v18

    .line 1063
    .local v11, pbrIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got expected info from usim:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ",extention"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x10

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ",pbrIndex:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ",recordIndexInEF within file:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ",indexInPhoneBookRecords:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1069
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    .line 1070
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Adn record don\'t exist for "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1071
    monitor-exit v19

    goto/16 :goto_0

    .line 1136
    .end local v4           #adnLocationInfo:[I
    .end local v9           #indexInPhoneBookRecords:I
    .end local v11           #pbrIndex:I
    .end local v13           #recordIndexInEF:I
    .end local v16           #usimAdnEf:I
    .end local v17           #usimAdnExtentionEf:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 1075
    .restart local v4       #adnLocationInfo:[I
    .restart local v9       #indexInPhoneBookRecords:I
    .restart local v11       #pbrIndex:I
    .restart local v13       #recordIndexInEF:I
    .restart local v16       #usimAdnEf:I
    .restart local v17       #usimAdnExtentionEf:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->verifyInput(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v10

    .line 1076
    .local v10, isValidData:Z
    if-nez v10, :cond_3

    .line 1077
    const-string v18, "invalid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1078
    const-string v18, "newAdn is invalid"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1079
    monitor-exit v19

    goto/16 :goto_0

    .line 1081
    :cond_3
    const-string v18, "valid input data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 1086
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_4

    .line 1087
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Have pending update for EF:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1088
    monitor-exit v19

    goto/16 :goto_0

    .line 1091
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    const/4 v8, 0x1

    .line 1098
    .local v8, finalWriteResult:Z
    const/4 v15, 0x0

    .line 1102
    .local v15, tmpWriteResult:Z
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeADNFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1103
    if-nez v15, :cond_5

    const/4 v8, 0x0

    .line 1106
    :cond_5
    if-eqz v8, :cond_7

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeANRFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1109
    if-nez v15, :cond_6

    const/4 v8, 0x0

    .line 1111
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->writeEmailFileAndWait([ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;)Z

    move-result v15

    .line 1112
    if-nez v15, :cond_7

    const/4 v8, 0x0

    .line 1117
    :cond_7
    if-eqz v8, :cond_8

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1126
    :cond_8
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .line 1127
    .local v14, response1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 1129
    if-eqz v8, :cond_9

    .line 1130
    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1131
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1136
    :goto_2
    monitor-exit v19

    goto/16 :goto_0

    .line 1122
    .end local v14           #response1:Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 1123
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "interrupted while trying to update by search"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v14       #response1:Landroid/os/Message;
    :cond_9
    const-string v18, "UpdateAdn failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
