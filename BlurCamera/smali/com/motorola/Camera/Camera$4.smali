.class Lcom/motorola/Camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5529
    iput-object p1, p0, Lcom/motorola/Camera/Camera$4;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5531
    iget-object v0, p0, Lcom/motorola/Camera/Camera$4;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->updatePicInUi()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$12100(Lcom/motorola/Camera/Camera;)V

    .line 5532
    return-void
.end method
