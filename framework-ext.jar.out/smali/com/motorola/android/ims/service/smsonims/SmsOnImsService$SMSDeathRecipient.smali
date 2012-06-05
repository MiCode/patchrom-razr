.class Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;
.super Ljava/lang/Object;
.source "SmsOnImsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMSDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;-><init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "SmsOnImsService"

    const-string v1, "SMSDeathRecipient: died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSDeathRecipient;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;
    invoke-static {v0, v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->access$402(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/IIMSCSms;)Lcom/motorola/android/ims/IIMSCSms;

    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
