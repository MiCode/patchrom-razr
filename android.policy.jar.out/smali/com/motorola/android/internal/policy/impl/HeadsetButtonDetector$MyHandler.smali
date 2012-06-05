.class Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;
.super Landroid/os/Handler;
.source "HeadsetButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;-><init>(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    #calls: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleShortSequenceDetected(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$000(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    #calls: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceDetected(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$100(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    #calls: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleLongSequenceFinished(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$200(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector$MyHandler;->this$0:Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;

    #calls: Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->handleSendKeyUpTimeout(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;->access$300(Lcom/motorola/android/internal/policy/impl/HeadsetButtonDetector;Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
