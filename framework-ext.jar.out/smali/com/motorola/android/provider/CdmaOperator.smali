.class public Lcom/motorola/android/provider/CdmaOperator;
.super Ljava/lang/Object;
.source "CdmaOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/CdmaOperator$MccMnc;,
        Lcom/motorola/android/provider/CdmaOperator$SidNid;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cdma_operator"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final mOperatorCoulumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-string v0, "content://cdma_operator"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/CdmaOperator;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OPERATOR_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNCONDITIONAL_CALL_FORWARD_DISABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DEFAULT_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DEFAULT_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BUSY_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BUSY_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NO_ANSWER_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NO_ANSWER_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CALL_WAITTING_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CALL_WAITTING_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CANCEL_ALL_CALL_FORWORD_ENABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CANCEL_ALL_CALL_FORWORD_DISABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PER_CALL_BLOCKING"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DEACTIVATE_PER_LINE_BLOCKING"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "THREE_WAY_CALL_FEATURE_CODE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PAUSE_RESUME_FEATURE_CODE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "VOICE_MAIL_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_SPN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method
