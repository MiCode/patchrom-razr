.class public Lcom/android/providers/media/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbReceiver"

.field private static isMtpServiceStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/media/UsbReceiver;->isMtpServiceStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 37
    .local v1, extras:Landroid/os/Bundle;
    const-string v4, "configured"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 38
    .local v0, connected:Z
    const-string v4, "mtp"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 39
    .local v2, mtpEnabled:Z
    const-string v4, "ptp"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 41
    .local v3, ptpEnabled:Z
    if-eqz v0, :cond_3

    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    .line 42
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v4, Lcom/android/providers/media/MtpService;

    invoke-direct {p2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .restart local p2
    if-eqz v3, :cond_1

    .line 44
    const-string v4, "ptp"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    :cond_1
    sget-boolean v4, Lcom/android/providers/media/UsbReceiver;->isMtpServiceStarted:Z

    if-eqz v4, :cond_2

    .line 57
    const-string v4, "UsbReceiver"

    const-string v5, "MtpService was already started, stop it firstly"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/media/MtpService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://media/none/mtp_connected"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://media/none/mtp_connected"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 68
    sput-boolean v7, Lcom/android/providers/media/UsbReceiver;->isMtpServiceStarted:Z

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/media/MtpService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://media/none/mtp_connected"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/providers/media/UsbReceiver;->isMtpServiceStarted:Z

    goto :goto_0
.end method
