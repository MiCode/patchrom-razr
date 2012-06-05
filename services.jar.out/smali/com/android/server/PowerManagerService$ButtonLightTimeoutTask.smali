.class Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonLightTimeoutTask"
.end annotation


# instance fields
.field started:Z

.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field when:J


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4584
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4584
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4593
    :try_start_0
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4594
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button light timeout zone0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInZone0:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->when:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInZone0:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9800(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4600
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4602
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$ButtonLightTimeoutTask;->started:Z

    .line 4603
    monitor-exit v1

    .line 4604
    return-void

    .line 4603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
