.class Landroid/media/AudioService$4;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3186
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 3189
    if-ne p1, v2, :cond_1

    .line 3191
    invoke-static {}, Landroid/media/AudioService;->access$7100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3192
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$7202(Landroid/media/AudioService;Z)Z

    .line 3193
    monitor-exit v3

    .line 3222
    :cond_0
    :goto_0
    return-void

    .line 3193
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3194
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_0

    .line 3196
    :cond_2
    invoke-static {}, Landroid/media/AudioService;->access$7100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3197
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$7202(Landroid/media/AudioService;Z)Z

    .line 3198
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3200
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3203
    .local v0, ttySetting:I
    if-eqz v0, :cond_0

    .line 3205
    packed-switch v0, :pswitch_data_0

    .line 3216
    const-string v1, "off"

    .line 3218
    .local v1, tty_mode:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 3198
    .end local v0           #ttySetting:I
    .end local v1           #tty_mode:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3207
    .restart local v0       #ttySetting:I
    :pswitch_0
    const-string v1, "full"

    .line 3208
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3210
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "vco"

    .line 3211
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3213
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_2
    const-string v1, "hco"

    .line 3214
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
