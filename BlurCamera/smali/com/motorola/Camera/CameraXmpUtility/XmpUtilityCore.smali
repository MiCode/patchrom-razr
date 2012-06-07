.class public Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;
.super Ljava/lang/Object;
.source "XmpUtilityCore.java"


# static fields
.field public static final BEST_PICTURE_NOT_FOUND:I = -0x1

.field public static final MAX_PICT_WITH_GROUPID:Ljava/lang/String; = "6"

.field public static final MAX_PICT_WITH_GROUPID_INT:I = 0x6

.field public static final MULTI_SHOT_MAIN_PICTURE_SEQUENCE_NUMBER:I = 0x0

.field public static final NS_MotMobility:Ljava/lang/String; = "http://ns.motorola.com/MotorolaMobility/1.0/"

.field public static final NS_MotMobility_PREFIX:Ljava/lang/String; = "MotMobility"

.field public static final TAG:Ljava/lang/String; = "XmpUtilityCore"

.field public static final TAG_XMP_MULTIBURST_GROUP_ID:Ljava/lang/String; = "MultiBurstGroupIdentifier"

.field public static final TAG_XMP_SEQUENCEFREQUENCY:Ljava/lang/String; = "MultiBurstSequenceFrequency"

.field public static final TAG_XMP_SEQUENCE_NUMBER:Ljava/lang/String; = "SequenceNumber"

.field public static final TAG_XMP_SHOOTING_MODE:Ljava/lang/String; = "ShootingMode"

.field public static XMP_UTILITY_DBG:Z = false

.field public static final XMP_UTILITY_DELETE_MODE:I = 0x4

.field public static final XMP_UTILITY_GET_MODE:I = 0x0

.field public static final XMP_UTILITY_SET_MODE:I = 0x2

.field public static final XMP_UTILITY_SET_MODE_NO_GET_XMP:I = 0x3

.field public static final XMP_UTILITY_UPDATE_MODE:I = 0x1

.field private static mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

.field private static mSchemaRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->XMP_UTILITY_DBG:Z

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXmpProperty(Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 1
    .parameter "uri"
    .parameter "xmptag"
    .parameter "notfoundvalue"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public static getXmpProperty(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "xmptag"
    .parameter "notfoundvalue"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerNameSpace()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    sget-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    if-nez v1, :cond_1

    .line 111
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->XMP_UTILITY_DBG:Z

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "XmpUtilityCore"

    const-string v4, "registerNameSpace - mSchema is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-static {}, Lcom/motorola/android/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/motorola/android/xmp/XMPSchemaRegistry;

    move-result-object v1

    sput-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    .line 115
    sget-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    const-string v4, "http://ns.motorola.com/MotorolaMobility/1.0/"

    const-string v5, "MotMobility"

    invoke-interface {v1, v4, v5}, Lcom/motorola/android/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v0, exp:Lcom/motorola/android/xmp/XMPException;
    :cond_1
    :goto_0
    sget-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    .line 126
    sget-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    if-eqz v1, :cond_3

    :goto_2
    return v2

    .line 119
    .end local v0           #exp:Lcom/motorola/android/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 120
    .restart local v0       #exp:Lcom/motorola/android/xmp/XMPException;
    const-string v1, "XmpUtilityCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerNameSpace:Exception happened:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/motorola/android/xmp/XMPException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/motorola/android/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchema:Lcom/motorola/android/xmp/XMPSchemaRegistry;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 125
    goto :goto_1

    :cond_3
    move v2, v3

    .line 126
    goto :goto_2
.end method

.method public static setXmpProperty(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 4
    .parameter "uri"
    .parameter "xmptag"
    .parameter "value"
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"

    .prologue
    .line 350
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 351
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 352
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p5, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 353
    iput p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 354
    iput-object p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 355
    const/4 v3, 0x2

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 356
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 357
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    .line 358
    iput p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueInteger:I

    .line 359
    const/4 v3, 0x0

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueType:I

    .line 360
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 362
    const/4 v1, 0x1

    .line 364
    .local v1, status:Z
    if-eqz p6, :cond_0

    .line 365
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 370
    :goto_0
    return v1

    .line 367
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setXmpProperty(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 4
    .parameter "uri"
    .parameter "xmptag"
    .parameter "value"
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"

    .prologue
    .line 310
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 311
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 312
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p5, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 313
    iput p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 314
    iput-object p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 315
    const/4 v3, 0x2

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 316
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 317
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    .line 318
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueString:Ljava/lang/String;

    .line 319
    const/4 v3, 0x1

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueType:I

    .line 320
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 322
    const/4 v1, 0x1

    .line 323
    .local v1, status:Z
    if-eqz p6, :cond_0

    .line 324
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 329
    :goto_0
    return v1

    .line 326
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setXmpProperty(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/os/Handler;ILandroid/content/Context;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z
    .locals 4
    .parameter "uri"
    .parameter
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "posttask"
    .parameter "pool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/ExecutorService;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, dataarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;>;"
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 434
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 435
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    .line 436
    iput-object p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 437
    iput p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 438
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 439
    const/4 v3, 0x3

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 440
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 441
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 443
    const/4 v1, 0x1

    .line 444
    .local v1, status:Z
    if-eqz p6, :cond_0

    .line 446
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0, p5, p6}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {p6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 451
    :goto_0
    return v1

    .line 449
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setXmpProperty(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 4
    .parameter "uri"
    .parameter
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, dataarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;>;"
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 394
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 395
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    .line 396
    iput-object p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 397
    iput p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 398
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 399
    const/4 v3, 0x3

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 400
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 401
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 403
    const/4 v1, 0x1

    .line 404
    .local v1, status:Z
    if-eqz p5, :cond_0

    .line 405
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 410
    :goto_0
    return v1

    .line 407
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateXmpProperty(Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 5
    .parameter "uri"
    .parameter "xmptag"
    .parameter "value"
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"

    .prologue
    const/4 v4, 0x1

    .line 216
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 217
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 218
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p5, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 219
    iput p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 220
    iput-object p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 221
    iput v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 222
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 223
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    .line 224
    iput p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueInteger:I

    .line 225
    const/4 v3, 0x0

    iput v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueType:I

    .line 226
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 227
    iput-boolean v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mNotifyScanner:Z

    .line 228
    const/4 v1, 0x1

    .line 230
    .local v1, status:Z
    if-eqz p6, :cond_0

    .line 231
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 236
    :goto_0
    return v1

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateXmpProperty(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 5
    .parameter "uri"
    .parameter "xmptag"
    .parameter "value"
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"

    .prologue
    const/4 v4, 0x1

    .line 174
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 175
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 176
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p5, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 177
    iput p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 178
    iput-object p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 179
    iput v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 180
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 181
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    .line 182
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueString:Ljava/lang/String;

    .line 183
    iput v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueType:I

    .line 184
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 185
    iput-boolean v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mNotifyScanner:Z

    .line 186
    const/4 v1, 0x1

    .line 188
    .local v1, status:Z
    if-eqz p6, :cond_0

    .line 189
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 194
    :goto_0
    return v1

    .line 191
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateXmpProperty(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/os/Handler;ILandroid/content/Context;Ljava/util/concurrent/ExecutorService;)Z
    .locals 5
    .parameter "uri"
    .parameter
    .parameter "handler"
    .parameter "what"
    .parameter "context"
    .parameter "pool"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;",
            ">;",
            "Landroid/os/Handler;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, dataarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;>;"
    const/4 v4, 0x1

    .line 267
    new-instance v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;

    invoke-direct {v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;-><init>()V

    .line 268
    .local v2, xud:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;
    new-instance v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData;)V

    .line 269
    .local v0, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;
    iput-object p1, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    .line 270
    iput-object p4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    .line 271
    iput p3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    .line 272
    iput-object p2, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    .line 273
    iput v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    .line 274
    iput-object p0, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    .line 275
    sget-boolean v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityCore;->mSchemaRegistered:Z

    iput-boolean v3, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 276
    iput-boolean v4, v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mNotifyScanner:Z

    .line 277
    const/4 v1, 0x1

    .line 279
    .local v1, status:Z
    if-eqz p5, :cond_0

    .line 280
    new-instance v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;

    invoke-direct {v3, v0}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;-><init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V

    invoke-interface {p5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 285
    :goto_0
    return v1

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
