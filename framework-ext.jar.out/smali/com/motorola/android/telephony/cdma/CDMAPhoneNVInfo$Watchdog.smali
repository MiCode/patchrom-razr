.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
.super Ljava/lang/Thread;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# static fields
.field public static MSG_TIMEOUT:I

.field private static TIMEOUT:I


# instance fields
.field private mExit:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x100

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    .line 110
    const/16 v0, 0x1388

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    .line 116
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    .line 158
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->interrupt()V

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 120
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    if-nez v2, :cond_0

    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    sget v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->TIMEOUT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 138
    .local v1, m:Landroid/os/Message;
    sget v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 139
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 124
    .end local v1           #m:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 125
    .local v0, iex:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 127
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .restart local v0       #iex:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 141
    .end local v0           #iex:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public sleep()V
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->interrupt()V

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watch()V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
