.class final Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemovePendingIntentRecord"
.end annotation


# instance fields
.field final mKey:Lcom/android/server/am/PendingIntentRecord$Key;

.field final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/PendingIntentRecord$Key;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15994
    .local p3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15995
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->mKey:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 15996
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->mRef:Ljava/lang/ref/WeakReference;

    .line 15997
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 16000
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 16001
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->mKey:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 16003
    .local v0, current:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->mRef:Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_0

    .line 16004
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$RemovePendingIntentRecord;->mKey:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16006
    :cond_0
    monitor-exit v2

    .line 16007
    return-void

    .line 16006
    .end local v0           #current:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
