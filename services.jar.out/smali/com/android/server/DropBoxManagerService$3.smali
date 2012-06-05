.class Lcom/android/server/DropBoxManagerService$3;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;

.field final synthetic val$booted_:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$time_:J


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$3;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$3;->val$time_:J

    iput-boolean p5, p0, Lcom/android/server/DropBoxManagerService$3;->val$booted_:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, dropboxIntent:Landroid/content/Intent;
    const-string v1, "tag"

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$3;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "time"

    iget-wide v2, p0, Lcom/android/server/DropBoxManagerService$3;->val$time_:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    iget-boolean v1, p0, Lcom/android/server/DropBoxManagerService$3;->val$booted_:Z

    if-nez v1, :cond_0

    .line 277
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    #getter for: Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 280
    return-void
.end method
