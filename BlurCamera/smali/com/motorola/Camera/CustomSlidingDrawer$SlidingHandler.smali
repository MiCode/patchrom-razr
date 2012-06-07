.class Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/CustomSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/CustomSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/CustomSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/CustomSlidingDrawer;Lcom/motorola/Camera/CustomSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;-><init>(Lcom/motorola/Camera/CustomSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1209
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1214
    :goto_0
    return-void

    .line 1211
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;->this$0:Lcom/motorola/Camera/CustomSlidingDrawer;

    #calls: Lcom/motorola/Camera/CustomSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->access$400(Lcom/motorola/Camera/CustomSlidingDrawer;)V

    goto :goto_0

    .line 1209
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
