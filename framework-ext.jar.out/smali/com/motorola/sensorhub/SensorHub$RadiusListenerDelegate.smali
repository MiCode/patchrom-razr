.class Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
.super Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;
.source "SensorHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/sensorhub/SensorHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadiusListenerDelegate"
.end annotation


# static fields
.field private static final CONVERT_DISTANCE:I = 0x100

.field private static final EXIT_RADIUS_MSG:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/motorola/sensorhub/SensorHub$RadiusListener;

.field final synthetic this$0:Lcom/motorola/sensorhub/SensorHub;


# direct methods
.method public constructor <init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$RadiusListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->this$0:Lcom/motorola/sensorhub/SensorHub;

    invoke-direct {p0}, Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$RadiusListener;

    .line 209
    new-instance v0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate$1;-><init>(Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;Landroid/os/Looper;Lcom/motorola/sensorhub/SensorHub;)V

    iput-object v0, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;)Lcom/motorola/sensorhub/SensorHub$RadiusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->mListener:Lcom/motorola/sensorhub/SensorHub$RadiusListener;

    return-object v0
.end method


# virtual methods
.method public onExitRadius(FF)V
    .locals 4
    .parameter "distanceNorth"
    .parameter "distanceEast"

    .prologue
    const/high16 v3, 0x4380

    const/high16 v2, 0x3f00

    .line 225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 227
    mul-float v1, p1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 228
    mul-float v1, p2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 229
    iget-object v1, p0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method
