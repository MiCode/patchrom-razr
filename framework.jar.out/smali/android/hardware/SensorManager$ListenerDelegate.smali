.class Landroid/hardware/SensorManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field public mFirstEvent:Landroid/util/SparseBooleanArray;

.field private final mHandler:Landroid/os/Handler;

.field public mSensorAccuracies:Landroid/util/SparseIntArray;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSensors:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "sensor"
    .parameter "handler"

    .prologue
    .line 577
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    .line 573
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    .line 574
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 575
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 578
    iput-object p2, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 579
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 583
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Landroid/hardware/SensorManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/SensorManager$ListenerDelegate$1;-><init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 614
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 615
    return-void

    .line 579
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method


# virtual methods
.method addSensor(Landroid/hardware/Sensor;)V
    .locals 3
    .parameter "sensor"

    .prologue
    .line 622
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 623
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method getListener()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasSensor(Landroid/hardware/Sensor;)Z
    .locals 2
    .parameter "sensor"

    .prologue
    .line 631
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    .locals 7
    .parameter "sensor"
    .parameter "values"
    .parameter "timestamp"
    .parameter "accuracy"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 638
    invoke-static {}, Landroid/hardware/SensorManager;->access$300()Landroid/hardware/SensorManager$SensorEventPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/SensorManager$SensorEventPool;->getFromPool()Landroid/hardware/SensorEvent;

    move-result-object v1

    .line 639
    .local v1, t:Landroid/hardware/SensorEvent;
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 640
    .local v2, v:[F
    aget v3, p2, v5

    aput v3, v2, v5

    .line 641
    aget v3, p2, v4

    aput v3, v2, v4

    .line 642
    aget v3, p2, v6

    aput v3, v2, v6

    .line 643
    aget-wide v3, p3, v5

    iput-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 644
    iput p4, v1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 645
    iput-object p1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 646
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 648
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 649
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    return-void
.end method

.method removeSensor(Landroid/hardware/Sensor;)I
    .locals 2
    .parameter "sensor"

    .prologue
    .line 626
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 627
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate;->mSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
