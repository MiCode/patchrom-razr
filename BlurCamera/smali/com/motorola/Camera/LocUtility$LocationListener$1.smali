.class Lcom/motorola/Camera/LocUtility$LocationListener$1;
.super Ljava/lang/Object;
.source "LocUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/LocUtility$LocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

.field final synthetic val$newLocation:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/LocUtility$LocationListener;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iput-object p2, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->val$newLocation:Landroid/location/Location;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, address:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, iteration:I
    move v2, v1

    .line 89
    .end local v1           #iteration:I
    .local v2, iteration:I
    :goto_0
    if-nez v0, :cond_2

    add-int/lit8 v1, v2, 0x1

    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    const/16 v3, 0xa

    if-gt v2, v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$200(Lcom/motorola/Camera/LocUtility;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    iget-object v4, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v4, v4, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/motorola/Camera/LocUtility;->access$200(Lcom/motorola/Camera/LocUtility;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->val$newLocation:Landroid/location/Location;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/Camera/LocUtility;->getAddressByLoc(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-nez v0, :cond_6

    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1           #iteration:I
    .restart local v2       #iteration:I
    goto :goto_0

    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    :catch_0
    move-exception v3

    move v2, v1

    .end local v1           #iteration:I
    .restart local v2       #iteration:I
    goto :goto_0

    :cond_2
    move v1, v2

    .line 97
    .end local v2           #iteration:I
    .restart local v1       #iteration:I
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$000(Lcom/motorola/Camera/LocUtility;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$000(Lcom/motorola/Camera/LocUtility;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAddress(Ljava/lang/String;)V

    .line 99
    :cond_4
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$000(Lcom/motorola/Camera/LocUtility;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 100
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$000(Lcom/motorola/Camera/LocUtility;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSearchingLoc(I)V

    .line 102
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$100(Lcom/motorola/Camera/LocUtility;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/motorola/Camera/LocUtility$LocationListener$1;->this$1:Lcom/motorola/Camera/LocUtility$LocationListener;

    iget-object v3, v3, Lcom/motorola/Camera/LocUtility$LocationListener;->this$0:Lcom/motorola/Camera/LocUtility;

    #getter for: Lcom/motorola/Camera/LocUtility;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/LocUtility;->access$100(Lcom/motorola/Camera/LocUtility;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    move v2, v1

    .end local v1           #iteration:I
    .restart local v2       #iteration:I
    goto :goto_0
.end method
