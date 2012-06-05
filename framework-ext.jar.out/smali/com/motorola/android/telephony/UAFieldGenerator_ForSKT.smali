.class public Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;
.super Ljava/lang/Object;
.source "UAFieldGenerator_ForSKT.java"


# static fields
.field private static final IRM_MATCH_TABLE_SIZE:I = 0x50

.field private static final SKT_UA_FIELD_PRIFIX:Ljava/lang/String; = "0106CMT00461148085422112400000000"

.field private static final TAG:Ljava/lang/String; = "UAFieldGenerator_ForSKT"

.field private static final irm_match_table:[[Ljava/lang/String;


# instance fields
.field private mIRM:Ljava/lang/String;

.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 179
    const/16 v0, 0x50

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0110YY"

    aput-object v2, v1, v6

    const-string v2, "0111YY"

    aput-object v2, v1, v7

    const-string v2, "0110YY"

    aput-object v2, v1, v8

    const-string v2, "0111YY"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "0000000000"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v5, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0112YY"

    aput-object v2, v1, v6

    const-string v2, "0114YY"

    aput-object v2, v1, v7

    const-string v2, "0112YY"

    aput-object v2, v1, v8

    const-string v2, "0114YY"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "0112YY"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "0114YY"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "01052YY"

    aput-object v2, v1, v6

    const-string v2, "01054YY"

    aput-object v2, v1, v7

    const-string v2, "1052YY"

    aput-object v2, v1, v8

    const-string v2, "1054YY"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "0112YY"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "0114YY"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0115YY"

    aput-object v2, v1, v6

    const-string v2, "0118YY"

    aput-object v2, v1, v7

    const-string v2, "0115YY"

    aput-object v2, v1, v8

    const-string v2, "0118YY"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "0115YY"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "0118YY"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01035YY"

    aput-object v3, v2, v6

    const-string v3, "01038YY"

    aput-object v3, v2, v7

    const-string v3, "1035YY"

    aput-object v3, v2, v8

    const-string v3, "1038YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0115YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0118YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0119YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0119YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01111YY"

    aput-object v3, v2, v6

    const-string v3, "01116YY"

    aput-object v3, v2, v7

    const-string v3, "1111YY"

    aput-object v3, v2, v8

    const-string v3, "1116YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01117YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1117YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0110YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01071YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1071YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0110YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01118YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1118YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0111YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01119YY"

    aput-object v3, v2, v6

    const-string v3, "01189YY"

    aput-object v3, v2, v7

    const-string v3, "1119YY"

    aput-object v3, v2, v8

    const-string v3, "1189YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01190YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1190YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1190YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01090YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1090YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1190YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01191YY"

    aput-object v3, v2, v6

    const-string v3, "01194YY"

    aput-object v3, v2, v7

    const-string v3, "1191YY"

    aput-object v3, v2, v8

    const-string v3, "1194YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0101YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0104YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01091YY"

    aput-object v3, v2, v6

    const-string v3, "01094YY"

    aput-object v3, v2, v7

    const-string v3, "1091YY"

    aput-object v3, v2, v8

    const-string v3, "1094YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0101YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0104YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01195YY"

    aput-object v3, v2, v6

    const-string v3, "01198YY"

    aput-object v3, v2, v7

    const-string v3, "1195YY"

    aput-object v3, v2, v8

    const-string v3, "1198YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1195YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1198YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01085YY"

    aput-object v3, v2, v6

    const-string v3, "01088YY"

    aput-object v3, v2, v7

    const-string v3, "1085YY"

    aput-object v3, v2, v8

    const-string v3, "1088YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1195YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1198YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01199YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1199YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0109YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01089YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1089YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0109YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0170YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0170YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0171YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0171YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0171YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0172YY"

    aput-object v3, v2, v6

    const-string v3, "0174YY"

    aput-object v3, v2, v7

    const-string v3, "0172YY"

    aput-object v3, v2, v8

    const-string v3, "0174YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0172YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0174YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01062YY"

    aput-object v3, v2, v6

    const-string v3, "01064YY"

    aput-object v3, v2, v7

    const-string v3, "1062YY"

    aput-object v3, v2, v8

    const-string v3, "1064YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0172YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0174YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0175YY"

    aput-object v3, v2, v6

    const-string v3, "0178YY"

    aput-object v3, v2, v7

    const-string v3, "0175YY"

    aput-object v3, v2, v8

    const-string v3, "0178YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0175YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0178YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01045YY"

    aput-object v3, v2, v6

    const-string v3, "01048YY"

    aput-object v3, v2, v7

    const-string v3, "1045YY"

    aput-object v3, v2, v8

    const-string v3, "1048YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0175YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0178YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0179YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0179YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0170YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01000YY"

    aput-object v3, v2, v6

    const-string v3, "01009YY"

    aput-object v3, v2, v7

    const-string v3, "1000YY"

    aput-object v3, v2, v8

    const-string v3, "1009YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0101XXX"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "101XXX"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01020YY"

    aput-object v3, v2, v6

    const-string v3, "01021YY"

    aput-object v3, v2, v7

    const-string v3, "1020YY"

    aput-object v3, v2, v8

    const-string v3, "1021YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1720YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1721YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01022YY"

    aput-object v3, v2, v6

    const-string v3, "01024YY"

    aput-object v3, v2, v7

    const-string v3, "1022YY"

    aput-object v3, v2, v8

    const-string v3, "1024YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1141YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1143YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01025YY"

    aput-object v3, v2, v6

    const-string v3, "01026YY"

    aput-object v3, v2, v7

    const-string v3, "1025YY"

    aput-object v3, v2, v8

    const-string v3, "1026YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1708YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1709YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01027YY"

    aput-object v3, v2, v6

    const-string v3, "01028YY"

    aput-object v3, v2, v7

    const-string v3, "1027YY"

    aput-object v3, v2, v8

    const-string v3, "1028YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1170YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1171YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01029YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1029YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1722YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01030YY"

    aput-object v3, v2, v6

    const-string v3, "01031YY"

    aput-object v3, v2, v7

    const-string v3, "1030YY"

    aput-object v3, v2, v8

    const-string v3, "1031YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1723YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1724YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01032YY"

    aput-object v3, v2, v6

    const-string v3, "01034YY"

    aput-object v3, v2, v7

    const-string v3, "1032YY"

    aput-object v3, v2, v8

    const-string v3, "1034YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1705YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1707YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01035YY"

    aput-object v3, v2, v6

    const-string v3, "01038YY"

    aput-object v3, v2, v7

    const-string v3, "1035YY"

    aput-object v3, v2, v8

    const-string v3, "1038YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0115YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0118YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01039YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1039YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1725YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01040YY"

    aput-object v3, v2, v6

    const-string v3, "01041YY"

    aput-object v3, v2, v7

    const-string v3, "1040YY"

    aput-object v3, v2, v8

    const-string v3, "1041YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1726YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1727YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01042YY"

    aput-object v3, v2, v6

    const-string v3, "01044YY"

    aput-object v3, v2, v7

    const-string v3, "1042YY"

    aput-object v3, v2, v8

    const-string v3, "1044YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1133YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1135YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01045YY"

    aput-object v3, v2, v6

    const-string v3, "01048YY"

    aput-object v3, v2, v7

    const-string v3, "1045YY"

    aput-object v3, v2, v8

    const-string v3, "1048YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0175YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0178YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01049YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1049YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1728YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01050YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1050YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1729YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01051YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1051YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1700YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01052YY"

    aput-object v3, v2, v6

    const-string v3, "01054YY"

    aput-object v3, v2, v7

    const-string v3, "1052YY"

    aput-object v3, v2, v8

    const-string v3, "1054YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0112YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0114YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01055YY"

    aput-object v3, v2, v6

    const-string v3, "01058YY"

    aput-object v3, v2, v7

    const-string v3, "1055YY"

    aput-object v3, v2, v8

    const-string v3, "1058YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1144YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1147YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01059YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1059YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1701YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01060YY"

    aput-object v3, v2, v6

    const-string v3, "01061YY"

    aput-object v3, v2, v7

    const-string v3, "1060YY"

    aput-object v3, v2, v8

    const-string v3, "1061YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1702YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1703YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01062YY"

    aput-object v3, v2, v6

    const-string v3, "01064YY"

    aput-object v3, v2, v7

    const-string v3, "1062YY"

    aput-object v3, v2, v8

    const-string v3, "1064YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0172YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0174YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01065YY"

    aput-object v3, v2, v6

    const-string v3, "01067YY"

    aput-object v3, v2, v7

    const-string v3, "1065YY"

    aput-object v3, v2, v8

    const-string v3, "1067YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1136YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1138YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01068YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1068YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1140YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01069YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1069YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1704YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01070YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1070YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01072YY"

    aput-object v3, v2, v6

    const-string v3, "01074YY"

    aput-object v3, v2, v7

    const-string v3, "1072YY"

    aput-object v3, v2, v8

    const-string v3, "1074YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1174YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1176YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01075YY"

    aput-object v3, v2, v6

    const-string v3, "01077YY"

    aput-object v3, v2, v7

    const-string v3, "1075YY"

    aput-object v3, v2, v8

    const-string v3, "1077YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1154YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1156YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01078YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1078YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01079YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1079YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1158YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01080YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1080YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1148YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01081YY"

    aput-object v3, v2, v6

    const-string v3, "01084YY"

    aput-object v3, v2, v7

    const-string v3, "1081YY"

    aput-object v3, v2, v8

    const-string v3, "1084YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1150YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1153YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01085YY"

    aput-object v3, v2, v6

    const-string v3, "01088YY"

    aput-object v3, v2, v7

    const-string v3, "1085YY"

    aput-object v3, v2, v8

    const-string v3, "1088YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1195YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1198YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01089YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1089YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0109YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01090YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1090YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1190YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01091YY"

    aput-object v3, v2, v6

    const-string v3, "01094YY"

    aput-object v3, v2, v7

    const-string v3, "1091YY"

    aput-object v3, v2, v8

    const-string v3, "1094YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0101YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0104YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01095YY"

    aput-object v3, v2, v6

    const-string v3, "01096YY"

    aput-object v3, v2, v7

    const-string v3, "1095YY"

    aput-object v3, v2, v8

    const-string v3, "1096YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1177YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1178YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01097YY"

    aput-object v3, v2, v6

    const-string v3, "01099YY"

    aput-object v3, v2, v7

    const-string v3, "1097YY"

    aput-object v3, v2, v8

    const-string v3, "1099YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1130YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1132YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0160YY"

    aput-object v3, v2, v6

    const-string v3, "0161YY"

    aput-object v3, v2, v7

    const-string v3, "0160YY"

    aput-object v3, v2, v8

    const-string v3, "0161YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0162YY"

    aput-object v3, v2, v6

    const-string v3, "0166YY"

    aput-object v3, v2, v7

    const-string v3, "0162YY"

    aput-object v3, v2, v8

    const-string v3, "0166YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1705YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1709YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0167YY"

    aput-object v3, v2, v6

    const-string v3, "0168YY"

    aput-object v3, v2, v7

    const-string v3, "0167YY"

    aput-object v3, v2, v8

    const-string v3, "0168YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1170YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1171YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0169YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0169YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0161XXX"

    aput-object v3, v2, v6

    const-string v3, "0168XXX"

    aput-object v3, v2, v7

    const-string v3, "161XXX"

    aput-object v3, v2, v8

    const-string v3, "168XXX"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01690YY"

    aput-object v3, v2, v6

    const-string v3, "01696YY"

    aput-object v3, v2, v7

    const-string v3, "1690YY"

    aput-object v3, v2, v8

    const-string v3, "1696YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1172YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1178YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01697YY"

    aput-object v3, v2, v6

    const-string v3, "01699YY"

    aput-object v3, v2, v7

    const-string v3, "1697YY"

    aput-object v3, v2, v8

    const-string v3, "1699YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1130YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1132YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0180YY"

    aput-object v3, v2, v6

    const-string v3, "0181YY"

    aput-object v3, v2, v7

    const-string v3, "0180YY"

    aput-object v3, v2, v8

    const-string v3, "0181YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0182YY"

    aput-object v3, v2, v6

    const-string v3, "0187YY"

    aput-object v3, v2, v7

    const-string v3, "0182YY"

    aput-object v3, v2, v8

    const-string v3, "0187YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1133YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1138YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0188YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0188YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1140YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0189YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "0189YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0190YY"

    aput-object v3, v2, v6

    const-string v3, "0191YY"

    aput-object v3, v2, v7

    const-string v3, "0190YY"

    aput-object v3, v2, v8

    const-string v3, "0191YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0192YY"

    aput-object v3, v2, v6

    const-string v3, "0198YY"

    aput-object v3, v2, v7

    const-string v3, "0192YY"

    aput-object v3, v2, v8

    const-string v3, "0198YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1141YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1147YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0191XXX"

    aput-object v3, v2, v6

    const-string v3, "0198XXX"

    aput-object v3, v2, v7

    const-string v3, "191XXX"

    aput-object v3, v2, v8

    const-string v3, "198XXX"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "0000000000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01990YY"

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const-string v3, "1990YY"

    aput-object v3, v2, v8

    aput-object v5, v2, v9

    const/4 v3, 0x4

    const-string v4, "1148YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "01991YY"

    aput-object v3, v2, v6

    const-string v3, "01999YY"

    aput-object v3, v2, v7

    const-string v3, "1991YY"

    aput-object v3, v2, v8

    const-string v3, "1999YY"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "1150YY"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "1158YY"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private changeMIN(ILjava/lang/String;)Z
    .locals 15
    .parameter "namIndex"
    .parameter "mdn"

    .prologue
    .line 272
    const/4 v7, 0x0

    .line 274
    .local v7, match_mdn:I
    const-string v10, ""

    .local v10, min:Ljava/lang/String;
    const-string v11, ""

    .line 275
    .local v11, irm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v13, v1, -0x4

    .line 276
    .local v13, mdn_header_len:I
    move-object/from16 v6, p2

    .line 278
    .local v6, mdn_header_string:Ljava/lang/String;
    if-gez v13, :cond_0

    .line 279
    const/4 v1, 0x0

    .line 367
    :goto_0
    return v1

    .line 282
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v1, 0x50

    if-ge v2, v1, :cond_c

    .line 283
    sget-object v1, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v9, 0x0

    aget-object v3, v1, v9

    .line 285
    .local v3, match_string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v13, :cond_2

    .line 282
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_2
    sget-object v1, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v9, 0x1

    aget-object v1, v1, v9

    if-nez v1, :cond_5

    .line 291
    sget-object v1, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v9, 0x0

    aget-object v4, v1, v9

    .line 298
    .local v4, match_string_end:Ljava/lang/String;
    :goto_2
    const-string v1, "YY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v5, "YY"

    .line 302
    .local v5, match_type:Ljava/lang/String;
    :goto_3
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " / mdn : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ match_string : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ match_string_end : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " / mdn.substring(0,4) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ match_string.substring(0,4) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x4

    invoke-virtual {v3, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ match_string_end.substring(0,4) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x4

    invoke-virtual {v4, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x6

    if-eq v13, v1, :cond_3

    const-string v1, "XXX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 306
    :cond_3
    const/4 v1, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x0

    const/4 v12, 0x4

    invoke-virtual {v3, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v1, v9, :cond_1

    const/4 v1, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x0

    const/4 v12, 0x4

    invoke-virtual {v4, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gt v1, v9, :cond_1

    .line 308
    const/4 v1, 0x0

    const/4 v9, 0x4

    invoke-virtual {v3, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 310
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mdn_header_len : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_mdn :  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " match_string : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " match_string_end : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v8, 0x0

    .local v8, k:I
    :goto_4
    const/16 v1, 0x50

    if-ge v8, v1, :cond_4

    .line 313
    const/4 v1, 0x0

    const/4 v9, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 321
    :cond_4
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "match_mdn :  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "k : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_string : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_string_end : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object/from16 v9, p2

    move/from16 v12, p1

    .line 323
    invoke-direct/range {v1 .. v12}, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->convert_mdn_to_min_irm_engine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 294
    .end local v4           #match_string_end:Ljava/lang/String;
    .end local v5           #match_type:Ljava/lang/String;
    .end local v8           #k:I
    :cond_5
    sget-object v1, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v9, 0x1

    aget-object v4, v1, v9

    .restart local v4       #match_string_end:Ljava/lang/String;
    goto/16 :goto_2

    .line 299
    :cond_6
    const-string v1, "XXX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v5, "XXX"

    .restart local v5       #match_type:Ljava/lang/String;
    goto/16 :goto_3

    .line 300
    .end local v5           #match_type:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 317
    .restart local v5       #match_type:Ljava/lang/String;
    .restart local v8       #k:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 312
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 328
    .end local v8           #k:I
    :cond_9
    const/4 v1, 0x7

    if-ne v13, v1, :cond_1

    .line 329
    const/4 v1, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x0

    const/4 v12, 0x5

    invoke-virtual {v3, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v1, v9, :cond_1

    const/4 v1, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x0

    const/4 v12, 0x5

    invoke-virtual {v4, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-gt v1, v9, :cond_1

    .line 332
    const/4 v1, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 334
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mdn_header_len : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_mdn :  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " match_string : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " match_string_end : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mdn.substring(0,5) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ Integer.parseInt(mdn.substring(0,5)) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/ Integer.parseInt(match_string_end.substring(0,5)) : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v14, 0x5

    invoke-virtual {v4, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_5
    const/16 v1, 0x50

    if-ge v8, v1, :cond_a

    .line 338
    const/4 v1, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 346
    :cond_a
    const-string v1, "UAFieldGenerator_ForSKT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "match_mdn :  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "i : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "k : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_string : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "match_string_end : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object/from16 v9, p2

    move/from16 v12, p1

    .line 348
    invoke-direct/range {v1 .. v12}, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->convert_mdn_to_min_irm_engine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 342
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 337
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 357
    .end local v3           #match_string:Ljava/lang/String;
    .end local v4           #match_string_end:Ljava/lang/String;
    .end local v5           #match_type:Ljava/lang/String;
    .end local v8           #k:I
    :cond_c
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_d

    .line 358
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    .line 359
    iget-object v10, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    .line 360
    const-string v11, "0000000000"

    .line 367
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 363
    :cond_d
    const-string v1, "0000000000"

    iput-object v1, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    .line 364
    iget-object v11, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    goto :goto_6
.end method

.method private convert_mdn_to_min_irm_engine(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "i"
    .parameter "match_string"
    .parameter "match_string_end"
    .parameter "match_type"
    .parameter "mdn_header_string"
    .parameter "match_mdn"
    .parameter "k"
    .parameter "mdn"
    .parameter "min"
    .parameter "irm"
    .parameter "namIndex"

    .prologue
    .line 376
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x4

    .line 378
    .local v1, mdn_header_len:I
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "irm_match_table[i][2].substring(0,1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ irm_match_table[i][4].substring(0,1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v2, "XXX"

    if-ne p4, v2, :cond_3

    .line 383
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xb

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 414
    :cond_0
    :goto_0
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "0000000000"

    if-ne v2, v3, :cond_7

    .line 415
    const-string p10, "0000000000"

    .line 444
    :cond_1
    :goto_1
    const/4 v2, 0x2

    move/from16 v0, p11

    if-ge v0, v2, :cond_d

    .line 445
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    .line 451
    :goto_2
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDN2 :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MIN2 :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IRM2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v2, 0x1

    return v2

    .line 388
    :cond_2
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xb

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    goto/16 :goto_0

    .line 392
    :cond_3
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 393
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 395
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 399
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    :cond_5
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 403
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 405
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is zero1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    const/16 v5, 0xb

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    .line 409
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min first is integer1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    const/16 v5, 0xb

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    :cond_7
    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    .line 418
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-object v2, v2, v3

    if-nez v2, :cond_8

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    goto/16 :goto_1

    .line 421
    :cond_8
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 423
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "irm first is zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 427
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "irm first is integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 430
    :cond_a
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 431
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-object v2, v2, v3

    if-nez v2, :cond_b

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    goto/16 :goto_1

    .line 434
    :cond_b
    sget-object v2, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 436
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "irm first is zero1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 439
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-virtual {p8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 440
    const-string v2, "UAFieldGenerator_ForSKT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "irm first is integer1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->irm_match_table:[[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, p7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {p8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 448
    :cond_d
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private getIConnectivityManager()Landroid/net/IConnectivityManager;
    .locals 1

    .prologue
    .line 34
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public makeUserAgent()Ljava/lang/String;
    .locals 47

    .prologue
    .line 43
    const-wide/16 v14, 0x0

    .line 44
    .local v14, data_value:J
    const/16 v31, 0x0

    .line 45
    .local v31, nodeB:B
    const/4 v9, 0x0

    .line 46
    .local v9, RNC:B
    const/4 v5, 0x0

    .line 47
    .local v5, MSC:I
    const/4 v13, -0x1

    .line 48
    .local v13, cid:I
    const-string v16, ";"

    .line 52
    .local v16, dist:Ljava/lang/String;
    const-string v44, "0106CMT00461148085422112400000000"

    const/16 v45, 0x0

    const/16 v46, 0x3

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, aaaStr:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v28

    .line 54
    .local v28, msisdnStr:Ljava/lang/String;
    const/16 v22, 0x0

    .line 56
    .local v22, isIRM:Z
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_0

    .line 57
    const/16 v35, 0x0

    .line 175
    :goto_0
    return-object v35

    .line 59
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v44

    if-eqz v44, :cond_1

    .line 60
    const/16 v22, 0x1

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 62
    const/16 v44, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->changeMIN(ILjava/lang/String;)Z

    move-result v20

    .line 63
    .local v20, getIRM:Z
    const/16 v44, 0x1

    move/from16 v0, v20

    move/from16 v1, v44

    if-ne v0, v1, :cond_6

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mResult:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    .line 65
    const-string v44, "UAFieldGenerator_ForSKT"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "IRM : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v20           #getIRM:Z
    :cond_1
    :goto_1
    const/16 v44, 0x1

    move/from16 v0, v22

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 75
    const-string v21, "I"

    .line 76
    .local v21, iPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x2

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .end local v21           #iPrefix:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v33, v11

    .line 92
    .local v33, process1:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v30

    .line 93
    .local v30, networkType:I
    const/16 v23, 0x0

    .line 95
    .local v23, isWiFiConnnected:Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v44

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v29

    .line 96
    .local v29, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 102
    const/16 v44, 0x1

    move/from16 v0, v23

    move/from16 v1, v44

    if-ne v0, v1, :cond_e

    .line 103
    const-string v12, "D"

    .line 111
    .local v12, bStr:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 114
    .local v36, process2:Ljava/lang/String;
    const-string v44, "0106CMT00461148085422112400000000"

    const/16 v45, 0x4

    const/16 v46, 0x7

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 117
    .local v37, process3:Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 118
    .local v7, Mod:Ljava/lang/String;
    const-string v44, "0106CMT00461148085422112400000000"

    const/16 v45, 0x7

    const/16 v46, 0x9

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 120
    .local v19, eeStr:Ljava/lang/String;
    const-string v44, "MB860"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_10

    const-string v19, "58"

    .line 123
    :goto_4
    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 126
    .local v38, process4:Ljava/lang/String;
    const-string v44, "0106CMT00461148085422112400000000"

    const/16 v45, 0x9

    const/16 v46, 0x19

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 129
    .local v39, process5:Ljava/lang/String;
    const-string v44, "0106CMT00461148085422112400000000"

    const/16 v45, 0x19

    const/16 v46, 0x21

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, mStr:Ljava/lang/String;
    const/16 v44, 0x1

    move/from16 v0, v22

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/UAFieldGenerator_ForSKT;->mIRM:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    const/16 v46, 0xa

    invoke-virtual/range {v44 .. v46}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 143
    :cond_3
    :goto_5
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 147
    .local v40, process6:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v24

    check-cast v24, Landroid/telephony/gsm/GsmCellLocation;

    .line 148
    .local v24, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v13

    .line 149
    :cond_4
    shr-int/lit8 v44, v13, 0x8

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-byte v0, v0

    move/from16 v31, v0

    .line 150
    invoke-static/range {v31 .. v31}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, NodeB_ID:Ljava/lang/String;
    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 154
    .local v41, process7:Ljava/lang/String;
    shr-int/lit8 v44, v13, 0x10

    and-int/lit8 v44, v44, 0x1f

    move/from16 v0, v44

    int-to-byte v9, v0

    .line 155
    invoke-static {v9}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, RNC_ID:Ljava/lang/String;
    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 159
    .local v42, process8:Ljava/lang/String;
    shr-int/lit8 v44, v13, 0x15

    and-int/lit8 v44, v44, 0x7f

    move/from16 v0, v44

    int-to-byte v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    add-int/lit16 v5, v0, 0xc9

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, MSC_ID:Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 164
    .local v43, process9:Ljava/lang/String;
    const-string v44, "05"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, MNC:Ljava/lang/String;
    const-string v44, "0450"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, MCC:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v32

    .line 167
    .local v32, operatpor:Ljava/lang/String;
    if-eqz v32, :cond_5

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_5

    .line 168
    const-string v17, ";0"

    .line 169
    .local v17, dummyStr:Ljava/lang/String;
    const/16 v44, 0x3

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v45

    move-object/from16 v0, v32

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    const/16 v44, 0x0

    const/16 v45, 0x3

    move-object/from16 v0, v32

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .end local v17           #dummyStr:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 173
    .local v34, process10:Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 174
    .local v35, process11:Ljava/lang/String;
    const-string v44, "UAFieldGenerator_ForSKT"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "SKT DM UA Field : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 68
    .end local v3           #MCC:Ljava/lang/String;
    .end local v4           #MNC:Ljava/lang/String;
    .end local v6           #MSC_ID:Ljava/lang/String;
    .end local v7           #Mod:Ljava/lang/String;
    .end local v8           #NodeB_ID:Ljava/lang/String;
    .end local v10           #RNC_ID:Ljava/lang/String;
    .end local v12           #bStr:Ljava/lang/String;
    .end local v19           #eeStr:Ljava/lang/String;
    .end local v23           #isWiFiConnnected:Z
    .end local v24           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .end local v25           #mStr:Ljava/lang/String;
    .end local v29           #netInfo:Landroid/net/NetworkInfo;
    .end local v30           #networkType:I
    .end local v32           #operatpor:Ljava/lang/String;
    .end local v33           #process1:Ljava/lang/String;
    .end local v34           #process10:Ljava/lang/String;
    .end local v35           #process11:Ljava/lang/String;
    .end local v36           #process2:Ljava/lang/String;
    .end local v37           #process3:Ljava/lang/String;
    .end local v38           #process4:Ljava/lang/String;
    .end local v39           #process5:Ljava/lang/String;
    .end local v40           #process6:Ljava/lang/String;
    .end local v41           #process7:Ljava/lang/String;
    .end local v42           #process8:Ljava/lang/String;
    .end local v43           #process9:Ljava/lang/String;
    .restart local v20       #getIRM:Z
    :cond_6
    const/16 v22, 0x0

    .line 69
    const-string v44, "UAFieldGenerator_ForSKT"

    const-string v45, "Fail to get IRM"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 78
    .end local v20           #getIRM:Z
    :cond_7
    if-eqz v28, :cond_2

    .line 79
    const/16 v44, 0x0

    const/16 v45, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 80
    .local v27, msisdn1:Ljava/lang/String;
    const-string v44, "011"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_8

    const-string v11, "SKT"

    goto/16 :goto_2

    .line 81
    :cond_8
    const-string v44, "017"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_9

    const-string v11, "STI"

    goto/16 :goto_2

    .line 82
    :cond_9
    const-string v44, "016"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_a

    const-string v11, "KTF"

    goto/16 :goto_2

    .line 83
    :cond_a
    const-string v44, "018"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_b

    const-string v11, "HSP"

    goto/16 :goto_2

    .line 84
    :cond_b
    const-string v44, "019"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_c

    const-string v11, "LGT"

    goto/16 :goto_2

    .line 85
    :cond_c
    const-string v44, "010"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_d

    const-string v11, "010"

    goto/16 :goto_2

    .line 86
    :cond_d
    move-object/from16 v11, v27

    goto/16 :goto_2

    .line 97
    .end local v27           #msisdn1:Ljava/lang/String;
    .restart local v23       #isWiFiConnnected:Z
    .restart local v30       #networkType:I
    .restart local v33       #process1:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 98
    .local v18, e:Landroid/os/RemoteException;
    const-string v44, "UAFieldGenerator_ForSKT"

    const-string v45, "RemoteException"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 105
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v29       #netInfo:Landroid/net/NetworkInfo;
    :cond_e
    const/16 v44, 0x1

    move/from16 v0, v30

    move/from16 v1, v44

    if-ne v0, v1, :cond_f

    .line 106
    const-string v12, "B"

    .restart local v12       #bStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 109
    .end local v12           #bStr:Ljava/lang/String;
    :cond_f
    const-string v12, "8"

    .restart local v12       #bStr:Ljava/lang/String;
    goto/16 :goto_3

    .line 121
    .restart local v7       #Mod:Ljava/lang/String;
    .restart local v19       #eeStr:Ljava/lang/String;
    .restart local v36       #process2:Ljava/lang/String;
    .restart local v37       #process3:Ljava/lang/String;
    :cond_10
    const-string v44, "XT910S"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_11

    const-string v19, "62"

    goto/16 :goto_4

    .line 122
    :cond_11
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 134
    .restart local v25       #mStr:Ljava/lang/String;
    .restart local v38       #process4:Ljava/lang/String;
    .restart local v39       #process5:Ljava/lang/String;
    :cond_12
    if-eqz v28, :cond_3

    .line 135
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_13

    .line 136
    const-string v26, "0"

    .line 137
    .local v26, mStrTemp:Ljava/lang/String;
    const/16 v44, 0x3

    const/16 v45, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 138
    goto/16 :goto_5

    .line 139
    .end local v26           #mStrTemp:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0xb

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 140
    const/16 v44, 0x3

    const/16 v45, 0xb

    move-object/from16 v0, v28

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_5
.end method
