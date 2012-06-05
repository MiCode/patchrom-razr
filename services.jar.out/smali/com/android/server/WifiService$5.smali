.class Lcom/android/server/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 588
    new-instance v1, Lcom/motorola/motepm/ReportResultToEPM;

    invoke-direct {v1, p1, p2}, Lcom/motorola/motepm/ReportResultToEPM;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 589
    .local v1, resultReport:Lcom/motorola/motepm/ReportResultToEPM;
    if-nez v1, :cond_0

    .line 590
    const-string v2, "WifiService"

    const-string v3, "Failed to get an instance of ReportResultToEPM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService$5;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setAllowWifiPolicy()I
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)I

    move-result v0

    .line 594
    .local v0, resultCode:I
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/motepm/ReportResultToEPM;->reportResultCode(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
