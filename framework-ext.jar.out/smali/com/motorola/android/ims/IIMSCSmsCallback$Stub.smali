.class public abstract Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;
.super Landroid/os/Binder;
.source "IIMSCSmsCallback.java"

# interfaces
.implements Lcom/motorola/android/ims/IIMSCSmsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IIMSCSmsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IIMSCSmsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.IIMSCSmsCallback"

.field static final TRANSACTION_getRegistrationId:I = 0x3

.field static final TRANSACTION_onMessageReceived:I = 0x1

.field static final TRANSACTION_onMessageResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSmsCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/IIMSCSmsCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/android/ims/IIMSCSmsCallback;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v10

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 54
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 56
    .local v3, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 60
    .local v6, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, _arg4:[B
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v7}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->onMessageReceived(JJLjava/lang/String;I[B)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v10

    .line 63
    goto :goto_0

    .line 67
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:[B
    :sswitch_2
    const-string v0, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 71
    .restart local v1       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 73
    .restart local v3       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 75
    .local v5, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg3:[B
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->onMessageResponse(JJI[B)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v10

    .line 78
    goto :goto_0

    .line 82
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:I
    .end local v6           #_arg3:[B
    :sswitch_3
    const-string v0, "com.motorola.android.ims.IIMSCSmsCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->getRegistrationId()J

    move-result-wide v8

    .line 84
    .local v8, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v10

    .line 86
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
