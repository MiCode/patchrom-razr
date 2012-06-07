.class public Lcom/motorola/Camera/CameraUtility;
.super Ljava/lang/Object;
.source "CameraUtility.java"


# static fields
.field public static final ASEC_ORDER:I = 0x1

.field public static final DESC_ORDER:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MotoCameraEngineProxy"

.field private static mCamUtil:Lcom/motorola/Camera/CameraUtility;

.field private static sPixelDensity:F


# instance fields
.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 56
    const/high16 v0, 0x3f80

    sput v0, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/motorola/Camera/CameraUtility;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 69
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    .line 71
    return-void
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 89
    sget v0, Lcom/motorola/Camera/CameraUtility;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lcom/motorola/Camera/CameraUtility;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/motorola/Camera/CameraUtility;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CameraUtility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 82
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    const-string v2, "new Cam Utility instance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 899
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 900
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 901
    .local v2, stacks:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 902
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 903
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 962
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CameraUtility;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 75
    return-void
.end method

.method public getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V
    .locals 76
    .parameter "mContext"
    .parameter "params"

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v71, v0

    monitor-enter v71

    .line 264
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_6

    .line 265
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_0

    .line 266
    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Dual Camera Supported"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDualCameraSuport(Z)V

    .line 280
    :goto_0
    const/4 v4, 0x0

    .line 282
    .local v4, WideScreenEnable:Z
    const-string v70, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/view/WindowManager;

    invoke-interface/range {v70 .. v70}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 283
    .local v16, display:Landroid/view/Display;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_1

    .line 284
    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() - Display size is "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, "x"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getHeight()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v70

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v65, v0

    .line 288
    .local v65, width:D
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getHeight()I

    move-result v70

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 292
    .local v20, height:D
    move-wide/from16 v0, v65

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v72

    move-wide/from16 v0, v65

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v74

    div-double v72, v72, v74

    const-wide v74, 0x3ffc71c720000000L

    sub-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->abs(D)D

    move-result-wide v72

    const-wide v74, 0x3fc999999999999aL

    cmpg-double v70, v72, v74

    if-gez v70, :cond_2

    .line 293
    const/4 v4, 0x1

    .line 295
    :cond_2
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_3

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() - Widescreen"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWideScreenDisplay(Z)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v70

    const/16 v72, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v32

    .line 308
    .local v32, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v32, :cond_22

    .line 314
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v51

    .line 316
    .local v51, size:I
    const/16 v39, 0x0

    .line 317
    .local v39, maxWSSize:Landroid/hardware/Camera$Size;
    const/16 v67, 0x0

    .line 319
    .local v67, wsSize:Ljava/lang/String;
    const/16 v70, 0x1

    move/from16 v0, v70

    if-ne v4, v0, :cond_b

    .line 321
    add-int/lit8 v26, v51, -0x1

    .local v26, ind:I
    :goto_1
    if-ltz v26, :cond_8

    .line 323
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    const-wide v74, 0x3ffc71c720000000L

    sub-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->abs(D)D

    move-result-wide v72

    const-wide v74, 0x3fa999999999999aL

    cmpg-double v70, v72, v74

    if-gez v70, :cond_5

    .line 325
    if-eqz v39, :cond_4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-lt v0, v1, :cond_4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-gt v0, v1, :cond_8

    .line 328
    :cond_4
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #maxWSSize:Landroid/hardware/Camera$Size;
    check-cast v39, Landroid/hardware/Camera$Size;

    .line 321
    .restart local v39       #maxWSSize:Landroid/hardware/Camera$Size;
    :cond_5
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_1

    .line 271
    .end local v4           #WideScreenEnable:Z
    .end local v16           #display:Landroid/view/Display;
    .end local v20           #height:D
    .end local v26           #ind:I
    .end local v32           #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v39           #maxWSSize:Landroid/hardware/Camera$Size;
    .end local v51           #size:I
    .end local v65           #width:D
    .end local v67           #wsSize:Ljava/lang/String;
    :cond_6
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_7

    .line 272
    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Dual Camera NOTSupported"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDualCameraSuport(Z)V

    goto/16 :goto_0

    .line 749
    :catchall_0
    move-exception v70

    monitor-exit v71
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v70

    .line 335
    .restart local v4       #WideScreenEnable:Z
    .restart local v16       #display:Landroid/view/Display;
    .restart local v20       #height:D
    .restart local v26       #ind:I
    .restart local v32       #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v39       #maxWSSize:Landroid/hardware/Camera$Size;
    .restart local v51       #size:I
    .restart local v65       #width:D
    .restart local v67       #wsSize:Ljava/lang/String;
    :cond_8
    if-eqz v39, :cond_9

    .line 336
    :try_start_1
    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v72, "x"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v39

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    .line 338
    :cond_9
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_a

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() -  Widescreen Resolution"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxWSPicResolution(Ljava/lang/String;)V

    .line 342
    .end local v26           #ind:I
    :cond_b
    const/16 v38, 0x0

    .line 343
    .local v38, maxNonWSSize:Landroid/hardware/Camera$Size;
    const/16 v43, 0x0

    .line 345
    .local v43, nonWSSize:Ljava/lang/String;
    add-int/lit8 v26, v51, -0x1

    .restart local v26       #ind:I
    :goto_2
    if-ltz v26, :cond_e

    .line 347
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v70

    int-to-double v0, v0

    move-wide/from16 v74, v0

    div-double v72, v72, v74

    const-wide v74, 0x3ff5555560000000L

    sub-double v72, v72, v74

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->abs(D)D

    move-result-wide v72

    const-wide v74, 0x3fa999999999999aL

    cmpg-double v70, v72, v74

    if-gez v70, :cond_d

    .line 349
    if-eqz v38, :cond_c

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v72, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v72

    move/from16 v1, v70

    if-gt v0, v1, :cond_e

    .line 352
    :cond_c
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #maxNonWSSize:Landroid/hardware/Camera$Size;
    check-cast v38, Landroid/hardware/Camera$Size;

    .line 345
    .restart local v38       #maxNonWSSize:Landroid/hardware/Camera$Size;
    :cond_d
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_2

    .line 358
    :cond_e
    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v72, "x"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 360
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_f

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() - max Resolution"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v44

    .line 370
    .local v44, oldMaxPicResolution:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 375
    const/4 v13, 0x0

    .line 376
    .local v13, currentSingleShotRes:Ljava/lang/String;
    if-eqz v44, :cond_10

    if-eqz v43, :cond_10

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_10

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getNormalModePicResolution()Ljava/lang/String;

    move-result-object v13

    .line 381
    :cond_10
    if-nez v13, :cond_17

    .line 382
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_11

    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Resetting the currentSingleShotRes"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v72, v0

    if-eqz v67, :cond_16

    move-object/from16 v70, v67

    :goto_3
    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 419
    :cond_12
    :goto_4
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_13

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "The current single shot resolution is : "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_13
    const-string v70, "mot-max-burst-size"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 424
    .local v40, max_burst_resolution:Ljava/lang/String;
    const/4 v10, 0x0

    .line 425
    .local v10, burstModeSize:Ljava/lang/String;
    if-eqz v40, :cond_1d

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v70

    if-lez v70, :cond_1d

    .line 427
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_14

    .line 428
    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "burst max size from hal "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_14
    const-string v70, "x"

    move-object/from16 v0, v40

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v70

    const/16 v72, 0x0

    aget-object v70, v70, v72

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 432
    .local v8, bWidth:I
    const-string v70, "x"

    move-object/from16 v0, v40

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v70

    const/16 v72, 0x1

    aget-object v70, v70, v72

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 434
    .local v7, bHeight:I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_15
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_1d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/hardware/Camera$Size;

    .line 436
    .local v56, supportedSizes:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v56

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v70

    if-ne v0, v8, :cond_15

    move-object/from16 v0, v56

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v70

    if-ne v0, v7, :cond_15

    .line 439
    move-object/from16 v10, v40

    goto :goto_5

    .end local v7           #bHeight:I
    .end local v8           #bWidth:I
    .end local v10           #burstModeSize:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v40           #max_burst_resolution:Ljava/lang/String;
    .end local v56           #supportedSizes:Landroid/hardware/Camera$Size;
    :cond_16
    move-object/from16 v70, v43

    .line 383
    goto/16 :goto_3

    .line 388
    :cond_17
    const/16 v29, 0x0

    .line 396
    .local v29, isSupported:Z
    const-string v70, "x"

    move-object/from16 v0, v70

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, dimensions:[Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_18

    .line 398
    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "dimensions"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_18
    if-eqz v15, :cond_1b

    array-length v0, v15

    move/from16 v70, v0

    const/16 v72, 0x2

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1b

    .line 402
    const/16 v70, 0x0

    aget-object v70, v15, v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 403
    .local v12, currWidth:I
    const/16 v70, 0x1

    aget-object v70, v15, v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 404
    .local v11, currHeight:I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/hardware/Camera$Size;

    .line 405
    .local v55, supportedSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v55

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    move/from16 v0, v70

    if-ne v0, v12, :cond_19

    move-object/from16 v0, v55

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    move/from16 v0, v70

    if-ne v0, v11, :cond_19

    .line 406
    const/16 v29, 0x1

    .line 414
    .end local v11           #currHeight:I
    .end local v12           #currWidth:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v55           #supportedSize:Landroid/hardware/Camera$Size;
    :cond_1a
    :goto_6
    if-nez v29, :cond_12

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v72, v0

    if-eqz v67, :cond_1c

    move-object/from16 v70, v67

    :goto_7
    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 412
    :cond_1b
    const/16 v29, 0x0

    goto :goto_6

    :cond_1c
    move-object/from16 v70, v43

    .line 416
    goto :goto_7

    .line 444
    .end local v15           #dimensions:[Ljava/lang/String;
    .end local v29           #isSupported:Z
    .restart local v10       #burstModeSize:Ljava/lang/String;
    .restart local v40       #max_burst_resolution:Ljava/lang/String;
    :cond_1d
    if-nez v10, :cond_20

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    if-eqz v67, :cond_1f

    .end local v67           #wsSize:Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v70

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    .line 453
    :goto_9
    const/16 v46, 0x0

    .line 454
    .local v46, panRes:Ljava/lang/String;
    const-string v47, "2048x1536"

    .line 455
    .local v47, pictureSize:Ljava/lang/String;
    const-string v70, "ro.media.panorama.defres"

    invoke-static/range {v70 .. v70}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 456
    if-eqz v46, :cond_21

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v70

    if-lez v70, :cond_21

    const-string v70, "2048x1536"

    move-object/from16 v0, v46

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v70

    if-eqz v70, :cond_21

    .line 458
    const-string v70, "x"

    move-object/from16 v0, v46

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v58

    .line 459
    .local v58, temp:[Ljava/lang/String;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v70

    add-int/lit8 v22, v70, -0x1

    .local v22, i:I
    :goto_a
    if-ltz v22, :cond_21

    .line 461
    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    const/16 v72, 0x0

    aget-object v72, v58, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, v32

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    const/16 v72, 0x1

    aget-object v72, v58, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_1e

    .line 463
    move-object/from16 v47, v46

    .line 459
    :cond_1e
    add-int/lit8 v22, v22, -0x1

    goto :goto_a

    .end local v22           #i:I
    .end local v46           #panRes:Ljava/lang/String;
    .end local v47           #pictureSize:Ljava/lang/String;
    .end local v58           #temp:[Ljava/lang/String;
    .restart local v67       #wsSize:Ljava/lang/String;
    :cond_1f
    move-object/from16 v67, v43

    .line 445
    goto :goto_8

    .line 447
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    goto :goto_9

    .line 466
    .end local v67           #wsSize:Ljava/lang/String;
    .restart local v46       #panRes:Ljava/lang/String;
    .restart local v47       #pictureSize:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 469
    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "The panorama resolution set is : "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v10           #burstModeSize:Ljava/lang/String;
    .end local v13           #currentSingleShotRes:Ljava/lang/String;
    .end local v26           #ind:I
    .end local v38           #maxNonWSSize:Landroid/hardware/Camera$Size;
    .end local v39           #maxWSSize:Landroid/hardware/Camera$Size;
    .end local v40           #max_burst_resolution:Ljava/lang/String;
    .end local v43           #nonWSSize:Ljava/lang/String;
    .end local v44           #oldMaxPicResolution:Ljava/lang/String;
    .end local v46           #panRes:Ljava/lang/String;
    .end local v47           #pictureSize:Ljava/lang/String;
    .end local v51           #size:I
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v70

    const/16 v72, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v35

    .line 476
    .local v35, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v35, :cond_32

    .line 478
    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "getCameraCapabilities() - Driver hasn\'t implemented supported vid resolutions, setting defaults (QVGA)"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const-string v72, "320x240"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const-string v72, "320x240"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 574
    :cond_23
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultVideoResolution()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultAESVideoResolution()V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v41

    .line 579
    .local v41, minEIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v37

    .line 580
    .local v37, maxEIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v17

    .line 582
    .local v17, expComp:F
    if-nez v41, :cond_24

    if-eqz v37, :cond_25

    .line 583
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMinExpCompensationIndex(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxExpCompensationIndex(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setExpCompensationStep(F)V

    .line 589
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v33

    .line 590
    .local v33, lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v33, :cond_28

    .line 591
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_26

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() - Supported focus modes "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFocusModes(Ljava/lang/String;)V

    .line 593
    const-string v70, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_27

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->enableAutoFocus()V

    .line 598
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v70

    if-nez v70, :cond_28

    .line 600
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_43

    const-string v70, "fixed"

    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_43

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const-string v72, "fixed"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 611
    :cond_28
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v34

    .line 612
    .local v34, lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v34, :cond_2a

    .line 613
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_29

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities()- Supported flash modes "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFlashModes(Ljava/lang/String;)V

    .line 615
    const-string v70, "torch"

    move-object/from16 v0, v34

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_2a

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setTorchSupported(Z)V

    .line 619
    :cond_2a
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v70, :cond_2c

    .line 621
    const-string v70, "mot-picture-iso-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 622
    .local v30, isoValues:Ljava/lang/String;
    if-eqz v30, :cond_2c

    .line 623
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_2b

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "getCameraCapabilities() - Supported ISO values "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setIsoValues(Ljava/lang/String;)V

    .line 630
    .end local v30           #isoValues:Ljava/lang/String;
    :cond_2c
    const-string v70, "mot-burst-picture-count-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 631
    .local v9, burstCount:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_2d

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "burstCount"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_2d
    if-eqz v9, :cond_45

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_45

    .line 635
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_2e

    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Enable multishot"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMultishotEnable(Z)V

    .line 642
    :goto_d
    const-string v70, "mot-face-detect-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_46

    .line 644
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_2f

    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Enable face detection"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFaceDetectionEnable(Z)V

    .line 651
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v54

    .line 653
    .local v54, supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v54, :cond_30

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v70

    if-nez v70, :cond_30

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedScenes(Ljava/lang/String;)V

    .line 659
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v53

    .line 660
    .local v53, supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v60, Ljava/lang/StringBuffer;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v60, tempEffects:Ljava/lang/StringBuffer;
    if-eqz v53, :cond_48

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->size()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_48

    .line 663
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_31

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "supportedEffectsList"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_31
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_47

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/String;

    .line 667
    .local v68, x:Ljava/lang/String;
    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v70

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v72, ","

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v60

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 491
    .end local v9           #burstCount:Ljava/lang/String;
    .end local v17           #expComp:F
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v33           #lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v34           #lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #maxEIndex:I
    .end local v41           #minEIndex:I
    .end local v53           #supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v54           #supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v60           #tempEffects:Ljava/lang/StringBuffer;
    .end local v68           #x:Ljava/lang/String;
    :cond_32
    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v58, temp:Ljava/lang/StringBuffer;
    new-instance v59, Ljava/lang/StringBuffer;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuffer;-><init>()V

    .line 494
    .local v59, tempAES:Ljava/lang/StringBuffer;
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v70

    add-int/lit8 v36, v70, -0x1

    .line 495
    .local v36, lvSize:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDriod2()Z

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-ne v0, v1, :cond_34

    .line 496
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_33

    .line 497
    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "w20919 disable the audio zoom and audio scene"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_33
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->droidDisableFunctions()V

    .line 502
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v70

    const v72, 0x7f070018

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v49

    .line 503
    .local v49, resolutionList:[Ljava/lang/String;
    const/16 v27, 0x0

    .line 504
    .local v27, indexofMaxAESRes:I
    const/16 v26, 0x0

    .restart local v26       #ind:I
    :goto_10
    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v70, v0

    move/from16 v0, v26

    move/from16 v1, v70

    if-ge v0, v1, :cond_35

    .line 506
    aget-object v70, v49, v26

    sget-object v72, Lcom/motorola/Camera/CameraGlobalType;->MAX_AES_RES:Ljava/lang/String;

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_37

    .line 508
    move/from16 v27, v26

    .line 523
    :cond_35
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v57, supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v22, v36

    .restart local v22       #i:I
    :goto_11
    if-ltz v22, :cond_3a

    .line 526
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v72, "x"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v70

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v70, v0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 528
    .local v50, s:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 529
    .local v14, dimension:Ljava/lang/String;
    if-nez v14, :cond_38

    .line 530
    :goto_12
    if-eqz v14, :cond_36

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "ro.media.camcorder."

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    const-string v72, ""

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_36

    .line 531
    move-object/from16 v0, v57

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_36
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_11

    .line 504
    .end local v14           #dimension:Ljava/lang/String;
    .end local v22           #i:I
    .end local v50           #s:Ljava/lang/String;
    .end local v57           #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_37
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10

    .line 529
    .restart local v14       #dimension:Ljava/lang/String;
    .restart local v22       #i:I
    .restart local v50       #s:Ljava/lang/String;
    .restart local v57       #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    const-string v70, "NTSC_D1"

    move-object/from16 v0, v70

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_39

    const-string v14, "d1NTSC"

    goto :goto_12

    :cond_39
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_12

    .line 535
    .end local v14           #dimension:Ljava/lang/String;
    .end local v50           #s:Ljava/lang/String;
    :cond_3a
    const/16 v26, 0x0

    :goto_13
    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v70, v0

    move/from16 v0, v26

    move/from16 v1, v70

    if-ge v0, v1, :cond_3d

    .line 537
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v70

    add-int/lit8 v31, v70, -0x1

    .local v31, j:I
    :goto_14
    if-ltz v31, :cond_3b

    .line 539
    move-object/from16 v0, v57

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    aget-object v72, v49, v26

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-eqz v70, :cond_3c

    .line 541
    move-object/from16 v0, v57

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string v70, ","

    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3b

    .line 545
    move-object/from16 v0, v57

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    move-object/from16 v0, v59

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v70, ","

    move-object/from16 v0, v59

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    :cond_3b
    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    .line 537
    :cond_3c
    add-int/lit8 v31, v31, -0x1

    goto :goto_14

    .line 553
    .end local v31           #j:I
    :cond_3d
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_3e

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_3e
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_3f

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "setCameraParameters() - Supported video resln "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v45

    .line 561
    .local v45, oldSensorVidResList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v42

    .line 566
    .local v42, newSensorVidResList:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_40

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "oldSensorVidResList: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " new "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_40
    if-eqz v45, :cond_41

    if-eqz v42, :cond_41

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_23

    .line 569
    :cond_41
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_42

    const-string v70, "MotoCameraEngineProxy"

    const-string v72, "Resetting video resolution"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 602
    .end local v22           #i:I
    .end local v26           #ind:I
    .end local v27           #indexofMaxAESRes:I
    .end local v36           #lvSize:I
    .end local v42           #newSensorVidResList:Ljava/lang/String;
    .end local v45           #oldSensorVidResList:Ljava/lang/String;
    .end local v49           #resolutionList:[Ljava/lang/String;
    .end local v57           #supportedSizes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v58           #temp:Ljava/lang/StringBuffer;
    .end local v59           #tempAES:Ljava/lang/StringBuffer;
    .restart local v17       #expComp:F
    .restart local v33       #lf:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37       #maxEIndex:I
    .restart local v41       #minEIndex:I
    :cond_43
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-eq v0, v1, :cond_44

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_28

    const-string v70, "fixed"

    move-object/from16 v0, v33

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_28

    .line 604
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v72, v0

    const/16 v70, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Ljava/lang/String;

    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 605
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_28

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Current Focus Option"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusOption()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 639
    .restart local v9       #burstCount:Ljava/lang/String;
    .restart local v34       #lflash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMultishotEnable(Z)V

    goto/16 :goto_d

    .line 648
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFaceDetectionEnable(Z)V

    goto/16 :goto_e

    .line 670
    .restart local v23       #i$:Ljava/util/Iterator;
    .restart local v53       #supportedEffectsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v54       #supportedScenesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v60       #tempEffects:Ljava/lang/StringBuffer;
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedEffects(Ljava/lang/String;)V

    .line 674
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_48
    new-instance v28, Landroid/hardware/Camera$CameraInfo;

    invoke-direct/range {v28 .. v28}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 675
    .local v28, info:Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v70

    if-eqz v70, :cond_51

    .line 676
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 680
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setImagerOrientation(I)V

    .line 683
    const-string v70, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 684
    .local v5, audioMgr:Landroid/media/AudioManager;
    const-string v70, "motoVideoRecAudioSceneSupported"

    move-object/from16 v0, v70

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 685
    .local v18, halAudioScenes:Ljava/lang/String;
    const/16 v70, 0x0

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 686
    .local v6, audioScenesSupported:Ljava/lang/Boolean;
    if-eqz v18, :cond_49

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v70

    if-lez v70, :cond_49

    .line 688
    const-string v70, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v58

    .line 689
    .local v58, temp:[Ljava/lang/String;
    if-eqz v58, :cond_49

    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v70, v0

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_49

    .line 691
    const/16 v70, 0x1

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 692
    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Off,"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const/16 v72, 0x1

    aget-object v72, v58, v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 693
    .local v52, supportedAudioScenes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSupportedAudioScenes(Ljava/lang/String;)V

    .line 694
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_49

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Audio Scenes supported: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v52           #supportedAudioScenes:Ljava/lang/String;
    .end local v58           #temp:[Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAudioScenesSupported(Z)V

    .line 701
    const-string v70, "mot-hdr-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 702
    .local v19, hdrEnable:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_4a

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "hdrEnable= "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_4a
    if-eqz v19, :cond_52

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_52

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHDRSupport(Z)V

    .line 712
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v69

    .line 713
    .local v69, zoomSupport:Z
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_4b

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "zoomSupport is "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomSupport(Z)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v62

    .line 719
    .local v62, vstabSupport:Z
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_4c

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "vstab is: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilizationSupported(Z)V

    .line 723
    const-string v70, "vstab-demo-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 724
    .local v61, vstabDemoSupport:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_4d

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "vstab demo is: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_4d
    if-eqz v61, :cond_4e

    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_4e

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilizationDemoSupported(Z)V

    .line 729
    :cond_4e
    const-string v70, "mot-image-stabilization-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 731
    .local v25, imageStabilizationValues:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_4f

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Image Stabilization:"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_4f
    if-eqz v25, :cond_53

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v70

    const/16 v72, 0x1

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_53

    const/16 v24, 0x1

    .line 734
    .local v24, imageStabilizationEnable:Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setImageStabilization(Z)V

    .line 736
    const-string v70, "mot-wdr-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 737
    .local v63, wdrValues:Ljava/lang/String;
    sget-boolean v70, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v70, :cond_50

    const-string v70, "MotoCameraEngineProxy"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "WDR feature Enabled? "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v72, v0

    if-eqz v63, :cond_54

    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v70

    const/16 v73, 0x1

    move/from16 v0, v70

    move/from16 v1, v73

    if-le v0, v1, :cond_54

    const/16 v70, 0x1

    :goto_18
    move-object/from16 v0, v72

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWDREnable(Z)V

    .line 741
    const-string v70, "mot-wdr-video-mode-values"

    move-object/from16 v0, p2

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_55

    const/16 v64, 0x1

    .line 742
    .local v64, wideScreenVideo:Z
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setWdrForVideo(Z)V

    .line 746
    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v48, v0

    .line 747
    .local v48, range:[I
    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    aget v72, v48, v72

    const/16 v73, 0x1

    aget v73, v48, v73

    move-object/from16 v0, v70

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultFPSRange(II)V

    .line 749
    monitor-exit v71

    .line 750
    return-void

    .line 678
    .end local v5           #audioMgr:Landroid/media/AudioManager;
    .end local v6           #audioScenesSupported:Ljava/lang/Boolean;
    .end local v18           #halAudioScenes:Ljava/lang/String;
    .end local v19           #hdrEnable:Ljava/lang/String;
    .end local v24           #imageStabilizationEnable:Z
    .end local v25           #imageStabilizationValues:Ljava/lang/String;
    .end local v48           #range:[I
    .end local v61           #vstabDemoSupport:Ljava/lang/String;
    .end local v62           #vstabSupport:Z
    .end local v63           #wdrValues:Ljava/lang/String;
    .end local v64           #wideScreenVideo:Z
    .end local v69           #zoomSupport:Z
    :cond_51
    const/16 v70, 0x1

    move/from16 v0, v70

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    goto/16 :goto_15

    .line 708
    .restart local v5       #audioMgr:Landroid/media/AudioManager;
    .restart local v6       #audioScenesSupported:Ljava/lang/Boolean;
    .restart local v18       #halAudioScenes:Ljava/lang/String;
    .restart local v19       #hdrEnable:Ljava/lang/String;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v70, v0

    const/16 v72, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHDRSupport(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_16

    .line 732
    .restart local v25       #imageStabilizationValues:Ljava/lang/String;
    .restart local v61       #vstabDemoSupport:Ljava/lang/String;
    .restart local v62       #vstabSupport:Z
    .restart local v69       #zoomSupport:Z
    :cond_53
    const/16 v24, 0x0

    goto/16 :goto_17

    .line 738
    .restart local v24       #imageStabilizationEnable:Z
    .restart local v63       #wdrValues:Ljava/lang/String;
    :cond_54
    const/16 v70, 0x0

    goto :goto_18

    .line 741
    :cond_55
    const/16 v64, 0x0

    goto :goto_19
.end method

.method public getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-object v1, p0, Lcom/motorola/Camera/CameraUtility;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 910
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 916
    :goto_0
    return v1

    :pswitch_0
    move v1, v2

    .line 911
    goto :goto_0

    .line 912
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 913
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 914
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPostViewMode()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getSortedList(Ljava/util/List;I)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    .line 761
    const/4 v8, 0x0

    .line 795
    :cond_0
    return-object v8

    .line 762
    :cond_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 763
    .local v8, sortedList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 764
    .local v3, size:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v2, 0x1

    .local v2, pass:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 768
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    if-ge v0, v11, :cond_5

    .line 770
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    int-to-long v4, v11

    .line 771
    .local v4, size1:J
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    iget v11, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    int-to-long v6, v11

    .line 773
    .local v6, size2:J
    if-nez p2, :cond_4

    .line 774
    cmp-long v11, v4, v6

    if-gez v11, :cond_3

    .line 775
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .local v9, temp1:Landroid/hardware/Camera$Size;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 776
    .local v10, temp2:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 777
    invoke-virtual {v8, v0, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 778
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 779
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 768
    .end local v9           #temp1:Landroid/hardware/Camera$Size;
    .end local v10           #temp2:Landroid/hardware/Camera$Size;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 782
    :cond_4
    const/4 v11, 0x1

    if-ne p2, v11, :cond_3

    .line 783
    cmp-long v11, v4, v6

    if-lez v11, :cond_3

    .line 784
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .restart local v9       #temp1:Landroid/hardware/Camera$Size;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 785
    .restart local v10       #temp2:Landroid/hardware/Camera$Size;
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 786
    invoke-virtual {v8, v0, v10}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 787
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 788
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 767
    .end local v4           #size1:J
    .end local v6           #size2:J
    .end local v9           #temp1:Landroid/hardware/Camera$Size;
    .end local v10           #temp2:Landroid/hardware/Camera$Size;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getSortedListBasedOnLandscapeOrientation(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, originalList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p0, p1, p2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 801
    .local v0, ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 817
    .end local v0           #ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    return-object v0

    .line 804
    .restart local v0       #ARsortedList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 805
    .local v4, indexList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 806
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    div-double v1, v6, v8

    .line 807
    .local v1, aspectratio:D
    const-wide/high16 v5, 0x3ff0

    cmpg-double v5, v1, v5

    if-gez v5, :cond_1

    .line 808
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 812
    .end local v1           #aspectratio:D
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_2
    if-ltz v3, :cond_3

    .line 813
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 815
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .parameter "params"
    .parameter "count"

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 186
    const-string v0, "mot-burst-picture-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setCameraDisplayOrientation(ILandroid/hardware/Camera;)I
    .locals 7
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 922
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 923
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 928
    const/4 v0, 0x0

    .line 930
    .local v0, degrees:I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 931
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 932
    .local v3, result:I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 936
    :goto_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraEngineProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_1
    return v3

    .line 934
    .end local v3           #result:I
    :cond_1
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .restart local v3       #result:I
    goto :goto_0

    .line 941
    :catch_0
    move-exception v1

    .line 942
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MotoCameraEngineProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation returned with unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setCameraMode(Landroid/hardware/Camera$Parameters;I)V
    .locals 2
    .parameter "params"
    .parameter "mode"

    .prologue
    .line 951
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const-string v0, "on"

    .line 953
    .local v0, value:Ljava/lang/String;
    :goto_0
    const-string v1, "mot-hdr-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    const-string v0, "on"

    .line 956
    :goto_1
    const-string v1, "mot-wdr-mode"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void

    .line 951
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    goto :goto_0

    .line 955
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    const-string v0, "off"

    goto :goto_1
.end method

.method public setExposureOffset(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 3
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v0, "mot-exposure-offset"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:setExposureOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFaceTrackingMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "params"
    .parameter "m"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    if-eqz p2, :cond_1

    .line 196
    const-string v0, "face-detect-num-faces"

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "face-track-frame-skip"

    const-string v1, "60"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "face-track-mode"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string v0, "face-track-mode"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "MotoCameraEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentFlash Value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    monitor-exit v1

    .line 150
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 139
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/CameraUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    const-string v2, "red-eye"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .parameter "params"
    .parameter "flashVal"

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setFocusArea(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "params"
    .parameter "rect"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v2, "MotoCameraEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(before saturation) = 1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 216
    .local v0, size:Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    .line 220
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v2, v3, :cond_2

    .line 221
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 222
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 225
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_3

    .line 226
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 227
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 231
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "MotoCameraEngineProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraUtility:setFocusArea(after saturation) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4
    const-string v2, "mot-areas-to-focus"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setISO(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "params"
    .parameter "ISOValue"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string v0, "picture-iso"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraUtility:ISOValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public setPictureRotation(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "params"
    .parameter "r"

    .prologue
    .line 94
    if-eqz p1, :cond_2

    .line 96
    const/16 v0, 0x168

    if-ne p2, v0, :cond_0

    .line 98
    const/4 p2, 0x0

    .line 101
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureRotation() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 104
    :cond_2
    return-void
.end method

.method public setPostViewMode(Z)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public showEulaMessage(Landroid/content/Context;Lcom/motorola/Camera/LocUtility;Lcom/motorola/Camera/View/Control/OnScreenController;ZLandroid/app/Activity;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/motorola/Camera/RotateDialogController;
    .locals 11
    .parameter "context"
    .parameter "locUtil"
    .parameter "controller"
    .parameter "locOn"
    .parameter "activity"
    .parameter "currentOrientation"
    .parameter "agree"
    .parameter "disagree"

    .prologue
    .line 826
    new-instance v1, Lcom/motorola/Camera/RotateDialogController;

    const v2, 0x7f030025

    move-object/from16 v0, p5

    invoke-direct {v1, v0, v2}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    .line 827
    .local v1, eulaRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 828
    const/4 v2, 0x2

    move/from16 v0, p6

    if-eq v0, v2, :cond_0

    .line 830
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 834
    :cond_0
    const v2, 0x7f0b0079

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 835
    .local v10, formatStr:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0b0132

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, message:Ljava/lang/String;
    const v2, 0x7f0b0132

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b0038

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b0039

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 848
    return-object v1
.end method
