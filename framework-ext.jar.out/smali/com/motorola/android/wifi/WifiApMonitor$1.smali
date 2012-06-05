.class Lcom/motorola/android/wifi/WifiApMonitor$1;
.super Ljava/lang/Object;
.source "WifiApMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiApMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiApMonitor;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/WifiApMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiApMonitor$1;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiApMonitor$1;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #getter for: Lcom/motorola/android/wifi/WifiApMonitor;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/motorola/android/wifi/WifiApMonitor;->access$100(Lcom/motorola/android/wifi/WifiApMonitor;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiApMonitor$1;->this$0:Lcom/motorola/android/wifi/WifiApMonitor;

    #getter for: Lcom/motorola/android/wifi/WifiApMonitor;->NOTIFICATION_INDEX_CLIENT_PBC:I
    invoke-static {v1}, Lcom/motorola/android/wifi/WifiApMonitor;->access$000(Lcom/motorola/android/wifi/WifiApMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    return-void
.end method
