.class Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;
.super Landroid/telephony/PhoneStateListener;
.source "VzwGpsReqMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsReqMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsReqMgr;


# direct methods
.method private constructor <init>(Lcom/vzw/location/VzwGpsReqMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsReqMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;-><init>(Lcom/vzw/location/VzwGpsReqMgr;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$100(Lcom/vzw/location/VzwGpsReqMgr;)Z

    move-result v0

    .line 83
    .local v0, oldMode:Z
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$200(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x0

    #setter for: Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z
    invoke-static {v1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->access$102(Lcom/vzw/location/VzwGpsReqMgr;Z)Z

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$100(Lcom/vzw/location/VzwGpsReqMgr;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    #getter for: Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/vzw/location/VzwGpsReqMgr;->access$300(Lcom/vzw/location/VzwGpsReqMgr;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x1

    #calls: Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    invoke-static {v1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->access$400(Lcom/vzw/location/VzwGpsReqMgr;Z)V

    .line 96
    :cond_0
    monitor-exit v2

    .line 97
    return-void

    .line 85
    :pswitch_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;->this$0:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x1

    #setter for: Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z
    invoke-static {v1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->access$102(Lcom/vzw/location/VzwGpsReqMgr;Z)Z

    goto :goto_0

    .line 96
    .end local v0           #oldMode:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
