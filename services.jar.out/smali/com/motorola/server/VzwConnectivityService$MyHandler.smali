.class Lcom/motorola/server/VzwConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/VzwConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/VzwConnectivityService;


# direct methods
.method public constructor <init>(Lcom/motorola/server/VzwConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService$MyHandler;->this$0:Lcom/motorola/server/VzwConnectivityService;

    .line 327
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService$MyHandler;->this$0:Lcom/motorola/server/VzwConnectivityService;

    #calls: Lcom/motorola/server/VzwConnectivityService;->updateNetworkApnStats()V
    invoke-static {v0}, Lcom/motorola/server/VzwConnectivityService;->access$200(Lcom/motorola/server/VzwConnectivityService;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
