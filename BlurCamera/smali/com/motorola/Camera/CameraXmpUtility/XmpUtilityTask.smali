.class public Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;
.super Ljava/lang/Object;
.source "XmpUtilityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "XmpUtilityTask"

.field public static XMP_UTILITY_TASK_DBG:Z


# instance fields
.field private mPool:Ljava/util/concurrent/ExecutorService;

.field private mPostTask:Ljava/lang/Runnable;

.field private mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)V
    .locals 1
    .parameter "xmpdata"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    .line 63
    iput-object v0, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPostTask:Ljava/lang/Runnable;

    .line 64
    iput-object v0, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "xmpdata"
    .parameter "posttask"
    .parameter "pool"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    .line 80
    iput-object p2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPostTask:Ljava/lang/Runnable;

    .line 81
    iput-object p3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 82
    return-void
.end method

.method private updateImageMetaDataTask(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)Ljava/lang/Boolean;
    .locals 14
    .parameter "xmpdata"

    .prologue
    const/4 v13, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 155
    const/4 v5, 0x1

    .line 156
    .local v5, result:Z
    iget-boolean v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    if-nez v8, :cond_0

    .line 157
    invoke-static {}, Lcom/motorola/Camera/CameraXmpUtility/CamXmpUtility;->registerNameSpace()Z

    move-result v8

    iput-boolean v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    .line 160
    :cond_0
    iget-boolean v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mSchemaRegistered:Z

    if-eqz v8, :cond_10

    .line 164
    :try_start_0
    new-instance v4, Lcom/motorola/android/xmp/options/FileOpenOptions;

    invoke-direct {v4}, Lcom/motorola/android/xmp/options/FileOpenOptions;-><init>()V

    .line 165
    .local v4, options:Lcom/motorola/android/xmp/options/FileOpenOptions;
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lcom/motorola/android/xmp/options/FileOpenOptions;->setOption(IZ)V

    .line 166
    invoke-static {}, Lcom/motorola/android/xmp/XMPFileFactory;->create()Lcom/motorola/android/xmp/XMPFile;

    move-result-object v6

    .line 167
    .local v6, xmp:Lcom/motorola/android/xmp/XMPFile;
    iget-object v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const v9, 0x20202020

    invoke-interface {v6, v8, v9, v4}, Lcom/motorola/android/xmp/XMPFile;->open(Ljava/lang/String;ILcom/motorola/android/xmp/options/FileOpenOptions;)Z

    move-result v5

    .line 170
    if-eqz v5, :cond_f

    .line 172
    const/4 v7, 0x0

    .line 173
    .local v7, xmpObj:Lcom/motorola/android/xmp/XMPMeta;
    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    if-eq v8, v11, :cond_1

    .line 174
    invoke-interface {v6}, Lcom/motorola/android/xmp/XMPFile;->getXMP()Lcom/motorola/android/xmp/XMPMeta;

    move-result-object v7

    .line 177
    :cond_1
    if-nez v7, :cond_3

    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    if-eq v8, v10, :cond_2

    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    if-ne v8, v11, :cond_3

    .line 183
    :cond_2
    invoke-static {}, Lcom/motorola/android/xmp/XMPMetaFactory;->create()Lcom/motorola/android/xmp/XMPMeta;

    move-result-object v7

    .line 186
    :cond_3
    if-eqz v7, :cond_d

    .line 187
    iget-object v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 189
    iget-object v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;

    .line 192
    .local v3, mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    if-ne v8, v13, :cond_5

    .line 193
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mXmptag:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/motorola/android/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    .end local v4           #options:Lcom/motorola/android/xmp/options/FileOpenOptions;
    .end local v6           #xmp:Lcom/motorola/android/xmp/XMPFile;
    .end local v7           #xmpObj:Lcom/motorola/android/xmp/XMPMeta;
    :catch_0
    move-exception v1

    .line 253
    .local v1, exp:Lcom/motorola/android/xmp/XMPException;
    const-string v8, "XmpUtilityTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImageMetaDataTask:Exception happened:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/motorola/android/xmp/XMPException;->getErrorCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/motorola/android/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v5, 0x0

    .line 263
    .end local v1           #exp:Lcom/motorola/android/xmp/XMPException;
    :cond_4
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 196
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    .restart local v4       #options:Lcom/motorola/android/xmp/options/FileOpenOptions;
    .restart local v6       #xmp:Lcom/motorola/android/xmp/XMPFile;
    .restart local v7       #xmpObj:Lcom/motorola/android/xmp/XMPMeta;
    :cond_5
    :try_start_1
    iget v8, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueType:I

    if-ne v8, v12, :cond_6

    .line 199
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mXmptag:Ljava/lang/String;

    iget-object v10, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueString:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/motorola/android/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V

    goto :goto_0

    .line 203
    :cond_6
    const-string v8, "XmpUtilityTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mValueInteger"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueInteger:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mXmptag:Ljava/lang/String;

    iget v10, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;->mValueInteger:I

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/motorola/android/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/options/PropertyOptions;)V

    goto :goto_0

    .line 209
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mydata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpData;
    :cond_7
    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmpUtilityMode:I

    if-ne v8, v13, :cond_a

    .line 210
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/motorola/android/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_8
    :goto_2
    invoke-interface {v6, v7}, Lcom/motorola/android/xmp/XMPFile;->canPutXMP(Lcom/motorola/android/xmp/XMPMeta;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 227
    invoke-interface {v6, v7}, Lcom/motorola/android/xmp/XMPFile;->putXMP(Lcom/motorola/android/xmp/XMPMeta;)V

    .line 243
    :cond_9
    :goto_3
    new-instance v0, Lcom/motorola/android/xmp/options/FileCloseOptions;

    invoke-direct {v0}, Lcom/motorola/android/xmp/options/FileCloseOptions;-><init>()V

    .line 244
    .local v0, closeOptions:Lcom/motorola/android/xmp/options/FileCloseOptions;
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/motorola/android/xmp/options/FileCloseOptions;->setOption(IZ)V

    .line 245
    invoke-interface {v6, v0}, Lcom/motorola/android/xmp/XMPFile;->close(Lcom/motorola/android/xmp/options/FileCloseOptions;)V

    goto :goto_1

    .line 211
    .end local v0           #closeOptions:Lcom/motorola/android/xmp/options/FileCloseOptions;
    :cond_a
    iget v8, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueType:I

    if-ne v8, v12, :cond_b

    .line 215
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    iget-object v10, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueString:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/motorola/android/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V

    goto :goto_2

    .line 221
    :cond_b
    const-string v8, "http://ns.motorola.com/MotorolaMobility/1.0/"

    iget-object v9, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mXmptag:Ljava/lang/String;

    iget v10, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mValueInteger:I

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/motorola/android/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/options/PropertyOptions;)V

    goto :goto_2

    .line 229
    :cond_c
    sget-boolean v8, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v8, :cond_9

    .line 230
    const-string v8, "XmpUtilityTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImageMetaDataTask:Can not put the xmp packet into the uri:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 236
    :cond_d
    sget-boolean v8, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v8, :cond_e

    .line 237
    const-string v8, "XmpUtilityTask"

    const-string v9, "updateImageMetaDataTask:Fail to create a new xmp Packet"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 247
    .end local v7           #xmpObj:Lcom/motorola/android/xmp/XMPMeta;
    :cond_f
    sget-boolean v8, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v8, :cond_4

    .line 248
    const-string v8, "XmpUtilityTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImageMetaDataTask:Can open file at uri:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/motorola/android/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 258
    .end local v4           #options:Lcom/motorola/android/xmp/options/FileOpenOptions;
    .end local v6           #xmp:Lcom/motorola/android/xmp/XMPFile;
    :cond_10
    sget-boolean v8, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v8, :cond_11

    .line 259
    const-string v8, "XmpUtilityTask"

    const-string v9, "updateImageMetaDataTask: Xmp schema not registered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 93
    const/4 v1, 0x1

    .line 94
    .local v1, success:Z
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    invoke-direct {p0, v2}, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->updateImageMetaDataTask(Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 96
    sget-boolean v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "XmpUtilityTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImageMetaDataTask status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mAXmpData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-boolean v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mNotifyScanner:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v5, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v5, v5, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 124
    sget-boolean v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->XMP_UTILITY_TASK_DBG:Z

    if-eqz v2, :cond_3

    .line 127
    const-string v2, "XmpUtilityTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KPI: BURST_JPEG_ALL_METADATA_STORED_TO_FILE sending message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget v4, v4, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget v3, v3, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mMessage:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 133
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mXmpdata:Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;

    iget-object v2, v2, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityData$XmpMemberInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 138
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPostTask:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_5

    .line 139
    iget-object v2, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPool:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/motorola/Camera/CameraXmpUtility/XmpUtilityTask;->mPostTask:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 142
    :cond_5
    return-void
.end method
