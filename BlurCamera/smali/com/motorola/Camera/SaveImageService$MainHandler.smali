.class Lcom/motorola/Camera/SaveImageService$MainHandler;
.super Landroid/os/Handler;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/SaveImageService;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/SaveImageService;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService$MainHandler;->this$0:Lcom/motorola/Camera/SaveImageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/SaveImageService;Lcom/motorola/Camera/SaveImageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/motorola/Camera/SaveImageService$MainHandler;-><init>(Lcom/motorola/Camera/SaveImageService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$MainHandler;->this$0:Lcom/motorola/Camera/SaveImageService;

    iget-object v0, v0, Lcom/motorola/Camera/SaveImageService;->mSaveServiceListener:Lcom/motorola/Camera/SaveServiceListener;

    invoke-interface {v0}, Lcom/motorola/Camera/SaveServiceListener;->onMemoryAvailable()V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$MainHandler;->this$0:Lcom/motorola/Camera/SaveImageService;

    invoke-virtual {v0}, Lcom/motorola/Camera/SaveImageService;->stopSelf()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
