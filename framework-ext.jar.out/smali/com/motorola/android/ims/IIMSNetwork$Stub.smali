.class public abstract Lcom/motorola/android/ims/IIMSNetwork$Stub;
.super Landroid/os/Binder;
.source "IIMSNetwork.java"

# interfaces
.implements Lcom/motorola/android/ims/IIMSNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IIMSNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.IIMSNetwork"

.field static final TRANSACTION_getImsRegId:I = 0x2

.field static final TRANSACTION_isImsRegistered:I = 0x3

.field static final TRANSACTION_isLimitedAccessMode:I = 0x4

.field static final TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSNetwork;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.android.ims.IIMSNetwork"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/IIMSNetwork;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/android/ims/IIMSNetwork;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/ims/IConnectionStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IConnectionStateListener;

    move-result-object v0

    .line 51
    .local v0, _arg0:Lcom/motorola/android/ims/IConnectionStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 52
    .local v1, _arg1:Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->setListener(Lcom/motorola/android/ims/IConnectionStateListener;Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Lcom/motorola/android/ims/IConnectionStateListener;
    .end local v1           #_arg1:Z
    :sswitch_2
    const-string v5, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->getImsRegId()J

    move-result-wide v2

    .line 60
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 66
    .end local v2           #_result:J
    :sswitch_3
    const-string v5, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->isImsRegistered()Z

    move-result v2

    .line 68
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.motorola.android.ims.IIMSNetwork"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSNetwork$Stub;->isLimitedAccessMode()Z

    move-result v2

    .line 76
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
