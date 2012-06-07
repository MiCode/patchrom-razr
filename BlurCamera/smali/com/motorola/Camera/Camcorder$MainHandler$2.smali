.class Lcom/motorola/Camera/Camcorder$MainHandler$2;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camcorder$MainHandler;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder$MainHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MainHandler$2;->this$1:Lcom/motorola/Camera/Camcorder$MainHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MainHandler$2;->this$1:Lcom/motorola/Camera/Camcorder$MainHandler;

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder$MainHandler;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->initializeRecorder()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$800(Lcom/motorola/Camera/Camcorder;)V

    .line 356
    return-void
.end method
