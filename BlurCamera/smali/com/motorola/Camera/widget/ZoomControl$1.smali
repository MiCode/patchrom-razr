.class Lcom/motorola/Camera/widget/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/widget/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/widget/ZoomControl;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/widget/ZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/Camera/widget/ZoomControl$1;->this$0:Lcom/motorola/Camera/widget/ZoomControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl$1;->this$0:Lcom/motorola/Camera/widget/ZoomControl;

    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl$1;->this$0:Lcom/motorola/Camera/widget/ZoomControl;

    #getter for: Lcom/motorola/Camera/widget/ZoomControl;->mState:I
    invoke-static {v1}, Lcom/motorola/Camera/widget/ZoomControl;->access$000(Lcom/motorola/Camera/widget/ZoomControl;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/motorola/Camera/widget/ZoomControl;->performZoom(IZ)V
    invoke-static {v0, v1, v2}, Lcom/motorola/Camera/widget/ZoomControl;->access$100(Lcom/motorola/Camera/widget/ZoomControl;IZ)V

    .line 59
    return-void
.end method
