.class public abstract Lcom/motorola/android/os/IDeepSleepService$Stub;
.super Landroid/os/Binder;
.source "IDeepSleepService.java"

# interfaces
.implements Lcom/motorola/android/os/IDeepSleepService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/IDeepSleepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/os/IDeepSleepService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.os.IDeepSleepService"

.field static final TRANSACTION_enableDeepSleepMode:I = 0x1

.field static final TRANSACTION_isChargeOnlyMode:I = 0x3

.field static final TRANSACTION_isDeepSleep:I = 0x2

.field static final TRANSACTION_registerMediaCmdReceiver:I = 0x4

.field static final TRANSACTION_unregisterMediaCmdReceiver:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.motorola.android.os.IDeepSleepService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/os/IDeepSleepService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/motorola/android/os/IDeepSleepService;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/motorola/android/os/IDeepSleepService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/os/IDeepSleepService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 52
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->enableDeepSleepMode(Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Z
    :sswitch_2
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->isDeepSleep()Z

    move-result v1

    .line 60
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_result:Z
    :sswitch_3
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->isChargeOnlyMode()Z

    move-result v1

    .line 68
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1           #_result:Z
    :sswitch_4
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/os/IMediaCmdReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IMediaCmdReceiver;

    move-result-object v0

    .line 77
    .local v0, _arg0:Lcom/motorola/android/os/IMediaCmdReceiver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->registerMediaCmdReceiver(Lcom/motorola/android/os/IMediaCmdReceiver;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:Lcom/motorola/android/os/IMediaCmdReceiver;
    :sswitch_5
    const-string v3, "com.motorola.android.os.IDeepSleepService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/os/IMediaCmdReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IMediaCmdReceiver;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Lcom/motorola/android/os/IMediaCmdReceiver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/os/IDeepSleepService$Stub;->unregisterMediaCmdReceiver(Lcom/motorola/android/os/IMediaCmdReceiver;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
