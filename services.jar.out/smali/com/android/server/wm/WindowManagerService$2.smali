.class Lcom/android/server/wm/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, action:Ljava/lang/String;
    sget-boolean v5, Landroid/util/DisplayMetrics;->IS_WEBTOP_ENABLED:Z

    if-eqz v5, :cond_1

    const-string v5, "com.motorola.webtop.SWITCH_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    const-string v5, "longDimen"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 342
    .local v3, longDimen:I
    const-string v5, "shortDimen"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 343
    .local v4, shortDimen:I
    const-string v5, "densityDpi"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, densityDpi:I
    const-string v5, "isWebtopMode"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 346
    .local v2, isWebtopMode:Z
    if-eq v3, v6, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v1, v6, :cond_0

    const-string v5, "isWebtopMode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v3, v4, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setWebtopForcedDisplaySize(IIIZ)V

    .line 363
    .end local v1           #densityDpi:I
    .end local v2           #isWebtopMode:Z
    .end local v3           #longDimen:I
    .end local v4           #shortDimen:I
    :goto_0
    return-void

    .line 350
    .restart local v1       #densityDpi:I
    .restart local v2       #isWebtopMode:Z
    .restart local v3       #longDimen:I
    .restart local v4       #shortDimen:I
    :cond_0
    const-string v5, "WindowManager"

    const-string v6, "Intent doesn\'t have expected extras"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService$2;->setResultCode(I)V

    goto :goto_0

    .line 357
    .end local v1           #densityDpi:I
    .end local v2           #isWebtopMode:Z
    .end local v3           #longDimen:I
    .end local v4           #shortDimen:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 358
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v6

    .line 360
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, -0x1

    #setter for: Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I
    invoke-static {v5, v7}, Lcom/android/server/wm/WindowManagerService;->access$202(Lcom/android/server/wm/WindowManagerService;I)I

    .line 361
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$2;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    invoke-static {v5, v7}, Lcom/android/server/wm/WindowManagerService;->access$102(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 362
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
