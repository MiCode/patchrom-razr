.class public final Lcom/motorola/motepm/MotDeviceAdminInfo;
.super Ljava/lang/Object;
.source "MotDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/motepm/MotDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOTO_POLICY_BASE:I = 0x64

.field static final TAG:Ljava/lang/String; = "MotDeviceAdminInfo"

.field public static final USES_POLICY_ACTIVE_SYNC_ID:I = 0x9

.field public static final USES_POLICY_ALLOW_BLUETOOTH:I = 0x6e

.field public static final USES_POLICY_ALLOW_BROWSER:I = 0x68

.field public static final USES_POLICY_ALLOW_CONSUMER_EMAIL:I = 0x6d

.field public static final USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x6b

.field public static final USES_POLICY_ALLOW_POP_IMAP_EMAIL:I = 0x6c

.field public static final USES_POLICY_ALLOW_SD_CARD:I = 0x67

.field public static final USES_POLICY_ALLOW_TEXT_MESSAGE:I = 0x69

.field public static final USES_POLICY_ALLOW_WIFI:I = 0x66

.field public static final USES_POLICY_CERT_INST:I = 0xd

.field public static final USES_POLICY_DATA_SYNC_SET:I = 0x64

.field public static final USES_POLICY_EMAIL_ACC_ADD:I = 0xe

.field public static final USES_POLICY_EMAIL_ACC_DEL:I = 0xa

.field public static final USES_POLICY_ENCRYPTION:I = 0x65

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_SIMPLE_PASSWORD:I = 0x6a

.field public static final USES_POLICY_VPN_ACC_ADD:I = 0xb

.field public static final USES_POLICY_VPN_ACC_DEL:I = 0xc

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 207
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 208
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 237
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x65

    const-string v5, "encryption-device-sd"

    const v6, 0x1040589

    const v7, 0x104058a

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x64

    const-string v5, "data-sync"

    const v6, 0x104058b

    const v7, 0x104058c

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x66

    const-string v5, "wifi-allowed"

    const v6, 0x104058d

    const v7, 0x104058e

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x67

    const-string v5, "sd-card-allowed"

    const v6, 0x1040591

    const v7, 0x1040592

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x68

    const-string v5, "browser-allowed"

    const v6, 0x1040595

    const v7, 0x1040596

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x69

    const-string v5, "text-message-allowed"

    const v6, 0x1040597

    const v7, 0x1040598

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6b

    const-string v5, "internet-sharing-allowed"

    const v6, 0x10405b2

    const v7, 0x10405b3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6a

    const-string v5, "simple-password"

    const v6, 0x10405ac

    const v7, 0x10405ad

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6e

    const-string v5, "bluetooth-allowed"

    const v6, 0x1040593

    const v7, 0x1040594

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6c

    const-string v5, "pop3-imap4-email-allowed"

    const v6, 0x10405fa

    const v7, 0x10405fb

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x6d

    const-string v5, "consumer-email-allowed"

    const v6, 0x10405fc

    const v7, 0x10405fd

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 304
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    .line 305
    .local v1, pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1           #pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_0
    new-instance v2, Lcom/motorola/motepm/MotDeviceAdminInfo$1;

    invoke-direct {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo$1;-><init>()V

    sput-object v2, Lcom/motorola/motepm/MotDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 20
    .parameter "context"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v17, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 337
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 338
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 340
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 342
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 344
    .local v9, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v17, "android.app.device_admin"

    move-object/from16 v0, v17

    invoke-virtual {v3, v10, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 345
    if-nez v9, :cond_1

    .line 346
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.app.device_admin meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create context for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v17

    .line 350
    :cond_1
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 352
    .local v12, res:Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 356
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 359
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, nodeName:Ljava/lang/String;
    const-string v17, "device-admin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 361
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 365
    :cond_4
    sget-object v17, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 368
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/motepm/MotDeviceAdminInfo;->mVisible:Z

    .line 371
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 375
    .local v8, outerDepth:I
    :cond_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_a

    .line 376
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 379
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 380
    .local v14, tagName:Ljava/lang/String;
    const-string v17, "uses-policies"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 381
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 383
    .local v6, innerDepth:I
    :cond_7
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_5

    .line 384
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    .line 387
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, policyName:Ljava/lang/String;
    sget-object v17, Lcom/motorola/motepm/MotDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 389
    .local v16, val:Ljava/lang/Integer;
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->isMotoPolicy(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    move/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, -0x64

    shl-int v18, v18, v19

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    goto :goto_0

    .line 392
    :cond_9
    const-string v17, "MotDeviceAdminInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown tag under uses-policies of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 402
    .end local v6           #innerDepth:I
    .end local v11           #policyName:Ljava/lang/String;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v16           #val:Ljava/lang/Integer;
    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 404
    :cond_b
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 406
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 407
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    .line 408
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    .line 410
    return-void
.end method

.method private isMotoPolicy(I)Z
    .locals 2
    .parameter "indent"

    .prologue
    .line 610
    add-int/lit8 v0, p1, -0x64

    .line 611
    .local v0, result:I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 442
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .parameter "policyIdent"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->isMotoPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/motorola/motepm/MotDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    .line 530
    :goto_0
    return-object v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    iget-object v4, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    .line 537
    .local v1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 538
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    invoke-static {v4}, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->copyFrom(Landroid/app/admin/DeviceAdminInfo$PolicyInfo;)Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    move-result-object v2

    .line 539
    .local v2, pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v2           #pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 542
    sget-object v4, Lcom/motorola/motepm/MotDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    .line 543
    .restart local v2       #pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    iget v4, v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v4}, Lcom/motorola/motepm/MotDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 544
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    .end local v2           #pi:Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;
    :cond_2
    return-object v3
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 467
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 468
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 469
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 470
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 475
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    .line 561
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotDeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 4
    .parameter "policyIdent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 510
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->isMotoPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    iget v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    add-int/lit8 v3, p1, -0x64

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 511
    goto :goto_0

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 514
    goto :goto_0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    const/4 v0, 0x0

    const-string v1, "flags"

    iget v2, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 581
    iget-object v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 582
    iget v0, p0, Lcom/motorola/motepm/MotDeviceAdminInfo;->mUsesPolicies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    return-void
.end method
