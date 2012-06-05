.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    sget v1, Landroid/os/RecoverySystem;->WIPE_FLAG_NONE:I

    .line 76
    .local v1, flag:I
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v2, v2, Lcom/android/server/MasterClearReceiver;->wipeSdcard:Z

    if-eqz v2, :cond_0

    .line 77
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_SD:I

    or-int/2addr v1, v2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v2, v2, Lcom/android/server/MasterClearReceiver;->wipeSilent:Z

    if-eqz v2, :cond_1

    .line 80
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_SILENT:I

    or-int/2addr v1, v2

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v2, v2, Lcom/android/server/MasterClearReceiver;->wipeBp:Z

    if-eqz v2, :cond_2

    .line 83
    sget v2, Landroid/os/RecoverySystem;->WIPE_FLAG_BP:I

    or-int/2addr v1, v2

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iget-boolean v2, v2, Lcom/android/server/MasterClearReceiver;->wipeInternalStorage:Z

    if-eqz v2, :cond_3

    .line 87
    sget v2, Landroid/os/RecoverySystem;->WIPE_INTERNAL_STORAGE:I

    or-int/2addr v1, v2

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;I)V

    .line 92
    const-string v2, "MasterClear"

    const-string v3, "Still running after master clear?!"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #flag:I
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MasterClear"

    const-string v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
