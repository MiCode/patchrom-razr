.class Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;-><init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$RadiusListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;

.field final synthetic val$this$0:Lcom/motorola/sensorhub/SensorHub;


# direct methods
.method constructor <init>(Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;Landroid/os/Looper;Lcom/motorola/sensorhub/SensorHub;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;->this$1:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;

    iput-object p3, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;->val$this$0:Lcom/motorola/sensorhub/SensorHub;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/high16 v3, 0x4380

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    const-string v0, "SensorHub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mysterious message for RadiusListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;->this$1:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;

    #getter for: Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$RadiusListener;
    invoke-static {v0}, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->access$100(Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;)Lcom/motorola/sensorhub/SensorHub$RadiusListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/motorola/sensorhub/SensorHub$RadiusListener;->onExitRadius(FF)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
