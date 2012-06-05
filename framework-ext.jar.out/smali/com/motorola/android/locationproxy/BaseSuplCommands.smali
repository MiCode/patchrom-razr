.class public abstract Lcom/motorola/android/locationproxy/BaseSuplCommands;
.super Ljava/lang/Object;
.source "BaseSuplCommands.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ISuplCommands;


# instance fields
.field protected mCloseSocketRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mHttpRegistrants:Landroid/os/RegistrantList;

.field protected mMtlr2Registrants:Landroid/os/RegistrantList;

.field protected mMtlrRegistrants:Landroid/os/RegistrantList;

.field protected mMtlrStatusRegistrants:Landroid/os/RegistrantList;

.field protected mOpenSocketRegistrants:Landroid/os/RegistrantList;

.field protected mSocketDataRegistrants:Landroid/os/RegistrantList;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mTlsRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    .line 28
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    .line 29
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    .line 30
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    .line 31
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    .line 32
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    .line 33
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    .line 34
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mHttpRegistrants:Landroid/os/RegistrantList;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 44
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 47
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v0           #r:Landroid/os/Registrant;
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 53
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 55
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 57
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .end local v0           #r:Landroid/os/Registrant;
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 61
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_2
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 65
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    .end local v0           #r:Landroid/os/Registrant;
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 69
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 73
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 76
    .end local v0           #r:Landroid/os/Registrant;
    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    .line 77
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_4
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 81
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 84
    .end local v0           #r:Landroid/os/Registrant;
    :cond_4
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_5

    .line 85
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    :try_start_5
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 89
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 92
    .end local v0           #r:Landroid/os/Registrant;
    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_6

    .line 93
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_6
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 97
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 100
    .end local v0           #r:Landroid/os/Registrant;
    :cond_6
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_7

    .line 101
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x80

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_7
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mHttpRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 104
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 106
    .end local v0           #r:Landroid/os/Registrant;
    :cond_7
    return-void

    .line 49
    .restart local v0       #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    .line 57
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    .line 65
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .line 73
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 81
    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    .line 89
    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    .line 97
    :catchall_6
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v1

    .line 104
    :catchall_7
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v1
.end method
