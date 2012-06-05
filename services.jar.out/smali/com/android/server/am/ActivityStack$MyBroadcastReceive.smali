.class Lcom/android/server/am/ActivityStack$MyBroadcastReceive;
.super Landroid/content/BroadcastReceiver;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$MyBroadcastReceive;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack$MyBroadcastReceive;-><init>(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 439
    const-string v0, "android.intent.action.stk.req_idle_screen_status"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$MyBroadcastReceive;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$MyBroadcastReceive;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mStkReqIdleStatus:Z

    .line 443
    monitor-exit v1

    .line 445
    :cond_0
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
