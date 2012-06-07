.class public Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;
.super Ljava/lang/Object;
.source "StoreImageUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/StoreImageUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifierScannerTask"
.end annotation


# instance fields
.field mAPictureUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mClearDataAfter:Z

.field myContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/motorola/Camera/StoreImageUtility;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/StoreImageUtility;Ljava/util/ArrayList;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter "context"
    .parameter "cleardataafter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p2, urilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p3, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->myContext:Landroid/content/Context;

    .line 936
    iput-object p2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->mAPictureUri:Ljava/util/ArrayList;

    .line 937
    iput-boolean p4, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->mClearDataAfter:Z

    .line 938
    return-void
.end method

.method private notifierScanner()V
    .locals 5

    .prologue
    .line 946
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->myContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 949
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->mAPictureUri:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 950
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->mAPictureUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 951
    .local v0, a:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 952
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->myContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 955
    const-string v2, "StoreImageUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotifierScannerTask: KPI: broadcast ACTION_MEDIA_SCANNER_SCAN_FILE uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    .end local v0           #a:Landroid/net/Uri;
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->mClearDataAfter:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility;->access$2500(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mDataCleared:Z
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility;->access$2200(Lcom/motorola/Camera/StoreImageUtility;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 967
    iget-object v2, p0, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->this$0:Lcom/motorola/Camera/StoreImageUtility;

    #getter for: Lcom/motorola/Camera/StoreImageUtility;->mStoreImageUtility:Lcom/motorola/Camera/StoreImageUtility;
    invoke-static {v2}, Lcom/motorola/Camera/StoreImageUtility;->access$2500(Lcom/motorola/Camera/StoreImageUtility;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/StoreImageUtility;->clearStoreImageData()V

    .line 971
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/motorola/Camera/StoreImageUtility$NotifierScannerTask;->notifierScanner()V

    .line 943
    return-void
.end method
