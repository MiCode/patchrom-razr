.class public Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;
.super Landroid/test/AndroidTestCase;
.source "SMSNumberHandlerTest.java"


# static fields
.field private static final GSM_UMTS_CASES:[[Ljava/lang/String; = null

.field private static final GSM_UMTS_MNC:[[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMSNumberHandlerTest"

.field private static final MULTI_IDD_CDMA_CASES:[[Ljava/lang/String;

.field private static final MULTI_IDD_CDMA_MNC:[[Ljava/lang/String;

.field private static final MULTI_IDD_UMTS_CASES:[[Ljava/lang/String;

.field private static final MULTI_IDD_UMTS_MNC:[[Ljava/lang/String;

.field private static final OTHER_CDMA_CASES:[[Ljava/lang/String;

.field private static final OTHER_CDMA_MNC:[[Ljava/lang/String;

.field private static final SHORT_CODE_CASES:[[Ljava/lang/String;

.field private static final VERIZON_CDMA_CASES:[[Ljava/lang/String;

.field private static final VERIZON_MNC:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "310"

    aput-object v2, v1, v4

    const-string v2, "4"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "311"

    aput-object v2, v1, v4

    const-string v2, "480"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->VERIZON_MNC:[[Ljava/lang/String;

    .line 40
    const/16 v0, 0x1c

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "7654321"

    aput-object v2, v1, v4

    const-string v2, "7654321"

    aput-object v2, v1, v5

    const-string v2, "7654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "9087654321"

    aput-object v2, v1, v4

    const-string v2, "9087654321"

    aput-object v2, v1, v5

    const-string v2, "9087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "19087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "+19087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "+12027654321"

    aput-object v2, v1, v4

    const-string v2, "12027654321"

    aput-object v2, v1, v5

    const-string v2, "+12027654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+14387654321"

    aput-object v3, v2, v4

    const-string v3, "14387654321"

    aput-object v3, v2, v5

    const-string v3, "+14387654321"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "0019087654321"

    aput-object v3, v2, v4

    const-string v3, "0019087654321"

    aput-object v3, v2, v5

    const-string v3, "0019087654321"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+011869081234567"

    aput-object v3, v2, v4

    const-string v3, "+011869081234567"

    aput-object v3, v2, v5

    const-string v3, "+011869081234567"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "011449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "011449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "+449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+012345678"

    aput-object v3, v2, v4

    const-string v3, "011012345678"

    aput-object v3, v2, v5

    const-string v3, "+012345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "00869081234567"

    aput-object v3, v2, v4

    const-string v3, "00869081234567"

    aput-object v3, v2, v5

    const-string v3, "00869081234567"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "011449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155"

    aput-object v3, v2, v4

    const-string v3, "6567320155"

    aput-object v3, v2, v5

    const-string v3, "6567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65673201551"

    aput-object v3, v2, v4

    const-string v3, "01165673201551"

    aput-object v3, v2, v5

    const-string v3, "01165673201551"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "656732015512"

    aput-object v3, v2, v4

    const-string v3, "656732015512"

    aput-object v3, v2, v5

    const-string v3, "656732015512"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155123"

    aput-object v3, v2, v4

    const-string v3, "0116567320155123"

    aput-object v3, v2, v5

    const-string v3, "0116567320155123"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "76567320155"

    aput-object v3, v2, v4

    const-string v3, "01176567320155"

    aput-object v3, v2, v5

    const-string v3, "01176567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "728312345678"

    aput-object v3, v2, v4

    const-string v3, "728312345678"

    aput-object v3, v2, v5

    const-string v3, "728312345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "7656732015578"

    aput-object v3, v2, v4

    const-string v3, "0117656732015578"

    aput-object v3, v2, v5

    const-string v3, "0117656732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20567320155"

    aput-object v3, v2, v4

    const-string v3, "01120567320155"

    aput-object v3, v2, v5

    const-string v3, "01120567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "205673201557"

    aput-object v3, v2, v4

    const-string v3, "205673201557"

    aput-object v3, v2, v5

    const-string v3, "205673201557"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "2056732015578"

    aput-object v3, v2, v4

    const-string v3, "0112056732015578"

    aput-object v3, v2, v5

    const-string v3, "0112056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "90567320155"

    aput-object v3, v2, v4

    const-string v3, "01190567320155"

    aput-object v3, v2, v5

    const-string v3, "01190567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "901567320155"

    aput-object v3, v2, v4

    const-string v3, "901567320155"

    aput-object v3, v2, v5

    const-string v3, "901567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "9056732015578"

    aput-object v3, v2, v4

    const-string v3, "0119056732015578"

    aput-object v3, v2, v5

    const-string v3, "0119056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "125930108991234"

    aput-object v3, v2, v4

    const-string v3, "125930108991234"

    aput-object v3, v2, v5

    const-string v3, "125930108991234"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "10086"

    aput-object v3, v2, v4

    const-string v3, "10086"

    aput-object v3, v2, v5

    const-string v3, "10086"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->VERIZON_CDMA_CASES:[[Ljava/lang/String;

    .line 107
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "460"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->GSM_UMTS_MNC:[[Ljava/lang/String;

    .line 115
    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "7654321"

    aput-object v2, v1, v4

    const-string v2, "7654321"

    aput-object v2, v1, v5

    const-string v2, "7654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "9087654321"

    aput-object v2, v1, v4

    const-string v2, "9087654321"

    aput-object v2, v1, v5

    const-string v2, "9087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "19087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "+19087654321"

    aput-object v2, v1, v4

    const-string v2, "+19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "0019087654321"

    aput-object v2, v1, v4

    const-string v2, "+19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+011869081234567"

    aput-object v3, v2, v4

    const-string v3, "011869081234567"

    aput-object v3, v2, v5

    const-string v3, "011869081234567"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "011861012345678"

    aput-object v3, v2, v4

    const-string v3, "011861012345678"

    aput-object v3, v2, v5

    const-string v3, "011861012345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+861030123456"

    aput-object v3, v2, v4

    const-string v3, "011861030123456"

    aput-object v3, v2, v5

    const-string v3, "011861030123456"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+012345678"

    aput-object v3, v2, v4

    const-string v3, "+012345678"

    aput-object v3, v2, v5

    const-string v3, "+012345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "00861030123456"

    aput-object v3, v2, v4

    const-string v3, "011861030123456"

    aput-object v3, v2, v5

    const-string v3, "011861030123456"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "861030123456"

    aput-object v3, v2, v4

    const-string v3, "011861030123456"

    aput-object v3, v2, v5

    const-string v3, "011861030123456"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155"

    aput-object v3, v2, v4

    const-string v3, "6567320155"

    aput-object v3, v2, v5

    const-string v3, "6567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65673201551"

    aput-object v3, v2, v4

    const-string v3, "01165673201551"

    aput-object v3, v2, v5

    const-string v3, "01165673201551"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "656732015512"

    aput-object v3, v2, v4

    const-string v3, "656732015512"

    aput-object v3, v2, v5

    const-string v3, "656732015512"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155123"

    aput-object v3, v2, v4

    const-string v3, "0116567320155123"

    aput-object v3, v2, v5

    const-string v3, "0116567320155123"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "76567320155"

    aput-object v3, v2, v4

    const-string v3, "01176567320155"

    aput-object v3, v2, v5

    const-string v3, "01176567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "728312345678"

    aput-object v3, v2, v4

    const-string v3, "728312345678"

    aput-object v3, v2, v5

    const-string v3, "728312345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "7656732015578"

    aput-object v3, v2, v4

    const-string v3, "0117656732015578"

    aput-object v3, v2, v5

    const-string v3, "0117656732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20567320155"

    aput-object v3, v2, v4

    const-string v3, "01120567320155"

    aput-object v3, v2, v5

    const-string v3, "01120567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "205673201557"

    aput-object v3, v2, v4

    const-string v3, "205673201557"

    aput-object v3, v2, v5

    const-string v3, "205673201557"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "2056732015578"

    aput-object v3, v2, v4

    const-string v3, "0112056732015578"

    aput-object v3, v2, v5

    const-string v3, "0112056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "90567320155"

    aput-object v3, v2, v4

    const-string v3, "01190567320155"

    aput-object v3, v2, v5

    const-string v3, "01190567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "901567320155"

    aput-object v3, v2, v4

    const-string v3, "901567320155"

    aput-object v3, v2, v5

    const-string v3, "901567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "9056732015578"

    aput-object v3, v2, v4

    const-string v3, "0119056732015578"

    aput-object v3, v2, v5

    const-string v3, "0119056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "125930108991234"

    aput-object v3, v2, v4

    const-string v3, "125930108991234"

    aput-object v3, v2, v5

    const-string v3, "125930108991234"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "10086"

    aput-object v3, v2, v4

    const-string v3, "10086"

    aput-object v3, v2, v5

    const-string v3, "10086"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->GSM_UMTS_CASES:[[Ljava/lang/String;

    .line 180
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "454"

    aput-object v2, v1, v4

    const-string v2, "05"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->OTHER_CDMA_MNC:[[Ljava/lang/String;

    .line 187
    const/16 v0, 0x1a

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "7654321"

    aput-object v2, v1, v4

    const-string v2, "7654321"

    aput-object v2, v1, v5

    const-string v2, "7654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "9087654321"

    aput-object v2, v1, v4

    const-string v2, "9087654321"

    aput-object v2, v1, v5

    const-string v2, "9087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "19087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "+19087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "00119087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+011869081234567"

    aput-object v3, v2, v4

    const-string v3, "+011869081234567"

    aput-object v3, v2, v5

    const-string v3, "+011869081234567"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "011449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "011449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "+449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "+012345678"

    aput-object v3, v2, v4

    const-string v3, "011012345678"

    aput-object v3, v2, v5

    const-string v3, "+012345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "001449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "011449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "449876543211"

    aput-object v3, v2, v4

    const-string v3, "011449876543211"

    aput-object v3, v2, v5

    const-string v3, "011449876543211"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155"

    aput-object v3, v2, v4

    const-string v3, "6567320155"

    aput-object v3, v2, v5

    const-string v3, "6567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65673201551"

    aput-object v3, v2, v4

    const-string v3, "01165673201551"

    aput-object v3, v2, v5

    const-string v3, "01165673201551"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "656732015512"

    aput-object v3, v2, v4

    const-string v3, "656732015512"

    aput-object v3, v2, v5

    const-string v3, "656732015512"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6567320155123"

    aput-object v3, v2, v4

    const-string v3, "0116567320155123"

    aput-object v3, v2, v5

    const-string v3, "0116567320155123"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "76567320155"

    aput-object v3, v2, v4

    const-string v3, "01176567320155"

    aput-object v3, v2, v5

    const-string v3, "01176567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "728312345678"

    aput-object v3, v2, v4

    const-string v3, "728312345678"

    aput-object v3, v2, v5

    const-string v3, "728312345678"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "7656732015578"

    aput-object v3, v2, v4

    const-string v3, "0117656732015578"

    aput-object v3, v2, v5

    const-string v3, "0117656732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20567320155"

    aput-object v3, v2, v4

    const-string v3, "01120567320155"

    aput-object v3, v2, v5

    const-string v3, "01120567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "205673201557"

    aput-object v3, v2, v4

    const-string v3, "205673201557"

    aput-object v3, v2, v5

    const-string v3, "205673201557"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "2056732015578"

    aput-object v3, v2, v4

    const-string v3, "0112056732015578"

    aput-object v3, v2, v5

    const-string v3, "0112056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "90567320155"

    aput-object v3, v2, v4

    const-string v3, "01190567320155"

    aput-object v3, v2, v5

    const-string v3, "01190567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "901567320155"

    aput-object v3, v2, v4

    const-string v3, "901567320155"

    aput-object v3, v2, v5

    const-string v3, "901567320155"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "9056732015578"

    aput-object v3, v2, v4

    const-string v3, "0119056732015578"

    aput-object v3, v2, v5

    const-string v3, "0119056732015578"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "125930108991234"

    aput-object v3, v2, v4

    const-string v3, "125930108991234"

    aput-object v3, v2, v5

    const-string v3, "125930108991234"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "10086"

    aput-object v3, v2, v4

    const-string v3, "10086"

    aput-object v3, v2, v5

    const-string v3, "10086"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->OTHER_CDMA_CASES:[[Ljava/lang/String;

    .line 253
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "450"

    aput-object v2, v1, v4

    const-string v2, "08"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_UMTS_MNC:[[Ljava/lang/String;

    .line 257
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "00119087654321"

    aput-object v2, v1, v4

    const-string v2, "+19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "00219087654321"

    aput-object v2, v1, v4

    const-string v2, "+19087654321"

    aput-object v2, v1, v5

    const-string v2, "+19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "001861030123456"

    aput-object v2, v1, v4

    const-string v2, "011861030123456"

    aput-object v2, v1, v5

    const-string v2, "011861030123456"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "002861030123456"

    aput-object v2, v1, v4

    const-string v2, "011861030123456"

    aput-object v2, v1, v5

    const-string v2, "011861030123456"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_UMTS_CASES:[[Ljava/lang/String;

    .line 273
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "450"

    aput-object v2, v1, v4

    const-string v2, "06"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_CDMA_MNC:[[Ljava/lang/String;

    .line 277
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "00119087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "00219087654321"

    aput-object v2, v1, v4

    const-string v2, "19087654321"

    aput-object v2, v1, v5

    const-string v2, "19087654321"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "001449876543211"

    aput-object v2, v1, v4

    const-string v2, "011449876543211"

    aput-object v2, v1, v5

    const-string v2, "011449876543211"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "002449876543211"

    aput-object v2, v1, v4

    const-string v2, "011449876543211"

    aput-object v2, v1, v5

    const-string v2, "011449876543211"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_CDMA_CASES:[[Ljava/lang/String;

    .line 293
    const/16 v0, 0x21

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "1234567"

    aput-object v2, v1, v4

    const-string v2, "true"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "3456789"

    aput-object v2, v1, v4

    const-string v2, "true"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "84991111"

    aput-object v2, v1, v4

    const-string v2, "true"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "8475231234"

    aput-object v2, v1, v4

    const-string v2, "false"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "0123456789"

    aput-object v2, v1, v4

    const-string v2, "true"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1234567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3230567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "3231567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "18475231234"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "10123456789"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "11234567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "13230567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "13231567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "07118345122"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "18475231234"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "861011834512"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+10123456789"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+11234567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+13230567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+13231567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+861011834512"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "011861011834512"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "01118475231234"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "01110123456789"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "01111234567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "01113230567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "01113231567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+01118475231234"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+011861011834512"

    aput-object v3, v2, v4

    const-string v3, "false"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+01110123456789"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+01111234567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+01113230567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "+01113231567890"

    aput-object v3, v2, v4

    const-string v3, "true"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->SHORT_CODE_CASES:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method

.method private testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 18
    .parameter "networkType"
    .parameter "currentMCC"
    .parameter "testCases"

    .prologue
    .line 368
    new-instance v1, Lcom/motorola/android/internal/telephony/SMSNumberHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, lookupNumber:Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    const/4 v8, 0x0

    .line 372
    .local v8, caseNo:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v11, v6, :cond_4

    .line 373
    aget-object v6, p2, v11

    const/16 v16, 0x0

    aget-object v3, v6, v16

    .line 374
    .local v3, mcc:Ljava/lang/String;
    aget-object v6, p2, v11

    const/16 v16, 0x1

    aget-object v4, v6, v16

    .line 376
    .local v4, mnc:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v12, v6, :cond_3

    .line 377
    aget-object v6, p3, v12

    const/16 v16, 0x0

    aget-object v2, v6, v16

    .line 378
    .local v2, number:Ljava/lang/String;
    const-string v6, "SMSNumberHandlerTest"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "============== Case "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v9, v8, 0x1

    .end local v8           #caseNo:I
    .local v9, caseNo:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ============="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v13, 0x1

    .local v13, k:I
    :goto_2
    const/4 v6, 0x3

    if-ge v13, v6, :cond_2

    .line 381
    aget-object v6, p3, v12

    aget-object v10, v6, v13

    .line 382
    .local v10, expectNumber:Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v13, v6, :cond_0

    const/4 v5, 0x0

    .local v5, isNBPCDSupported:Z
    :goto_3
    move/from16 v6, p1

    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, actualNumber:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Number: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", NBPCD: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", MCC: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", MNC: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", NetworkType: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", Expect result: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, ", Actual result: "

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, message:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 398
    .local v15, result:Z
    if-eqz v15, :cond_1

    .line 399
    const-string v6, "SMSNumberHandlerTest"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Result: Pass - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_4
    invoke-static {v14, v10, v7}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 382
    .end local v5           #isNBPCDSupported:Z
    .end local v7           #actualNumber:Ljava/lang/String;
    .end local v14           #message:Ljava/lang/String;
    .end local v15           #result:Z
    :cond_0
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 401
    .restart local v5       #isNBPCDSupported:Z
    .restart local v7       #actualNumber:Ljava/lang/String;
    .restart local v14       #message:Ljava/lang/String;
    .restart local v15       #result:Z
    :cond_1
    const-string v6, "SMSNumberHandlerTest"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Result: Fail - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 376
    .end local v5           #isNBPCDSupported:Z
    .end local v7           #actualNumber:Ljava/lang/String;
    .end local v10           #expectNumber:Ljava/lang/String;
    .end local v14           #message:Ljava/lang/String;
    .end local v15           #result:Z
    :cond_2
    add-int/lit8 v12, v12, 0x1

    move v8, v9

    .end local v9           #caseNo:I
    .restart local v8       #caseNo:I
    goto/16 :goto_1

    .line 372
    .end local v2           #number:Ljava/lang/String;
    .end local v13           #k:I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 407
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    .end local v12           #j:I
    :cond_4
    return-void
.end method


# virtual methods
.method public testFormatNumberInGSMUMTSNetwork()V
    .locals 3

    .prologue
    .line 346
    const-string v0, "SMSNumberHandlerTest"

    const-string v1, "Test in GSM/UMTS Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->GSM_UMTS_MNC:[[Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->GSM_UMTS_CASES:[[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public testFormatNumberInMultiIDDCDMANetwork()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "SMSNumberHandlerTest"

    const-string v1, "Test Multiple IDD cases in CDMA Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x2

    sget-object v1, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_CDMA_MNC:[[Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_CDMA_CASES:[[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public testFormatNumberInMultiIDDUMTSNetwork()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "SMSNumberHandlerTest"

    const-string v1, "Test Multiple IDD cases in UMTS Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_UMTS_MNC:[[Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->MULTI_IDD_UMTS_CASES:[[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public testFormatNumberInOtherCDMANetwork()V
    .locals 3

    .prologue
    .line 351
    const-string v0, "SMSNumberHandlerTest"

    const-string v1, "Test in OTHER CDMA Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x2

    sget-object v1, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->OTHER_CDMA_MNC:[[Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->OTHER_CDMA_CASES:[[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public testFormatNumberInVerizonCDMANetwork()V
    .locals 3

    .prologue
    .line 341
    const-string v0, "SMSNumberHandlerTest"

    const-string v1, "Test in Verizon CDMA Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x1

    sget-object v1, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->VERIZON_MNC:[[Ljava/lang/String;

    sget-object v2, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->VERIZON_CDMA_CASES:[[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->testFormatNumber(I[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public testIsNANPShortCode()V
    .locals 9

    .prologue
    .line 409
    const-string v6, "SMSNumberHandlerTest"

    const-string v7, "Test check the short code!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v3, Lcom/motorola/android/internal/telephony/SMSNumberHandler;

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;-><init>(Landroid/content/Context;)V

    .line 411
    .local v3, lookupNumber:Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->SHORT_CODE_CASES:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 412
    sget-object v6, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->SHORT_CODE_CASES:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 413
    .local v5, number:Ljava/lang/String;
    const-string v6, "SMSNumberHandlerTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "================ Case "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ==============="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v3, v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->isNANPShortCode(Ljava/lang/String;)Z

    move-result v2

    .line 415
    .local v2, isNANPShortCode:Z
    sget-object v6, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->SHORT_CODE_CASES:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 416
    .local v0, expectIsNANPShortCode:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNANPShortCode - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Expect result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Actual result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, message:Ljava/lang/String;
    if-ne v2, v0, :cond_0

    .line 420
    const-string v6, "SMSNumberHandlerTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result: Pass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_1
    invoke-static {v4, v0, v2}, Lcom/motorola/android/internal/telephony/SMSNumberHandlerTest;->assertEquals(Ljava/lang/String;ZZ)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 422
    :cond_0
    const-string v6, "SMSNumberHandlerTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result: Fail = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 426
    .end local v0           #expectIsNANPShortCode:Z
    .end local v2           #isNANPShortCode:Z
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method
