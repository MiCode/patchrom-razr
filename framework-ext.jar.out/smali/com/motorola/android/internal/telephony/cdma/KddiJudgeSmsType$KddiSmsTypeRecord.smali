.class public Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;
.super Ljava/lang/Object;
.source "KddiJudgeSmsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KddiSmsTypeRecord"
.end annotation


# instance fields
.field public mAddCondition:B

.field public mAddConditionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeAddCondition;",
            ">;"
        }
    .end annotation
.end field

.field public mKddiSmsAccessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

.field public mSmsType:[B

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;


# direct methods
.method protected constructor <init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I[BB)V
    .locals 1
    .parameter
    .parameter "actionCode"
    .parameter "permissionCode"
    .parameter "responseCode"
    .parameter "SmsType"
    .parameter "addCondition"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->this$0:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mKddiSmsAccessory:Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .line 383
    iput-object p5, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mSmsType:[B

    .line 384
    iput-byte p6, p0, Lcom/motorola/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsTypeRecord;->mAddCondition:B

    .line 385
    return-void
.end method
