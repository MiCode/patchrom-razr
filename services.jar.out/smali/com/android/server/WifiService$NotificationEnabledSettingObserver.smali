.class Lcom/android/server/WifiService$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 2393
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2394
    return-void
.end method

.method private getValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2432
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueSecure()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2440
    iget-object v2, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_networks_secure_available_notification_on"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 2413
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2415
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    .line 2420
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$4602(Lcom/android/server/WifiService;Z)Z

    .line 2422
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V
    invoke-static {v0, v2, v2, v1, v2}, Lcom/android/server/WifiService;->access$4700(Lcom/android/server/WifiService;ZIZI)V

    .line 2428
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2429
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2397
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2398
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2400
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;Z)Z

    .line 2405
    const-string v1, "wifi_networks_secure_available_notification_on"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2406
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4602(Lcom/android/server/WifiService;Z)Z

    .line 2409
    return-void
.end method
