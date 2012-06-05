.class Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;
.super Ljava/lang/Thread;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotEPMPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 66
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    #setter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$002(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/os/Looper;)Landroid/os/Looper;

    .line 67
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    new-instance v1, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    iget-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$1;)V

    #setter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    invoke-static {v0, v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$102(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;)Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$400(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    #setter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1, v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$302(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    invoke-static {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 78
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method
