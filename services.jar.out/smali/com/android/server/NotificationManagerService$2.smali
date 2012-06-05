.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, action:Ljava/lang/String;
    const/4 v7, 0x0

    .line 359
    .local v7, queryRestart:Z
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 364
    :cond_0
    const/4 v5, 0x0

    .line 365
    .local v5, pkgList:[Ljava/lang/String;
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 366
    const-string v9, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 380
    :goto_0
    if-eqz v5, :cond_3

    array-length v9, v5

    if-lez v9, :cond_3

    .line 381
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v1, v3

    .line 382
    .local v6, pkgName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v7, :cond_5

    move v9, v10

    :goto_2
    invoke-virtual {v12, v6, v11, v11, v9}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 367
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 368
    const-string v9, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 371
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_4

    .line 412
    .end local v5           #pkgList:[Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 374
    .restart local v5       #pkgList:[Ljava/lang/String;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 375
    .restart local v6       #pkgName:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 378
    new-array v5, v10, [Ljava/lang/String;

    .end local v5           #pkgList:[Ljava/lang/String;
    aput-object v6, v5, v11

    .restart local v5       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .end local v8           #uri:Landroid/net/Uri;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_5
    move v9, v11

    .line 382
    goto :goto_2

    .line 385
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #pkgList:[Ljava/lang/String;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 388
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v9, v10}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_3

    .line 389
    :cond_7
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 390
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v9, v11}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 392
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v9}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 394
    :cond_8
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 395
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v10, "state"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v9, v10}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 397
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v9}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 398
    :cond_9
    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 400
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v9}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3

    .line 403
    :cond_a
    const-string v9, "com.motorola.internal.intent.action.DISPLAY_THERMAL_PROTECTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 404
    const-string v9, "com.motorola.internal.intent.extra.DISPLAY_THERMAL_PROTECTION_ENABLED"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 406
    .local v2, enabled:Z
    if-eqz v2, :cond_b

    .line 407
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->postDisplayThermalProtectionNofication(Landroid/content/Context;)V
    invoke-static {v9, p1}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;Landroid/content/Context;)V

    goto :goto_3

    .line 409
    :cond_b
    iget-object v9, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->removeDisplayThermalProtectionNofication(Landroid/content/Context;)V
    invoke-static {v9, p1}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;Landroid/content/Context;)V

    goto :goto_3
.end method
