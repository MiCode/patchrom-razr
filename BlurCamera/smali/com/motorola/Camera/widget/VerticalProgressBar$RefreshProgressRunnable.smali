.class Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "VerticalProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/widget/VerticalProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/motorola/Camera/widget/VerticalProgressBar;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/widget/VerticalProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/motorola/Camera/widget/VerticalProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    .line 236
    iput p3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 237
    iput-boolean p4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 238
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/motorola/Camera/widget/VerticalProgressBar;

    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    #calls: Lcom/motorola/Camera/widget/VerticalProgressBar;->doRefreshProgress(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/motorola/Camera/widget/VerticalProgressBar;->access$000(Lcom/motorola/Camera/widget/VerticalProgressBar;IIZ)V

    .line 243
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/motorola/Camera/widget/VerticalProgressBar;

    #setter for: Lcom/motorola/Camera/widget/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->access$102(Lcom/motorola/Camera/widget/VerticalProgressBar;Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;)Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    .line 244
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 247
    iput p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    .line 248
    iput p2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 249
    iput-boolean p3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 250
    return-void
.end method
