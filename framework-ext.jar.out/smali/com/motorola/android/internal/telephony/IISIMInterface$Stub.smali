.class public abstract Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;
.super Landroid/os/Binder;
.source "IISIMInterface.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IISIMInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IISIMInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.telephony.IISIMInterface"

.field static final TRANSACTION_ISIMAuthReq:I = 0x6

.field static final TRANSACTION_getAllISIMPublicIdentity:I = 0x2

.field static final TRANSACTION_getISIMAdminData:I = 0x5

.field static final TRANSACTION_getISIMHomeDomain:I = 0x3

.field static final TRANSACTION_getISIMPCSCF:I = 0x4

.field static final TRANSACTION_getISIMPrivateIdentity:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IISIMInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/internal/telephony/IISIMInterface;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/motorola/android/internal/telephony/IISIMInterface;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 55
    :sswitch_0
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMPrivateIdentity()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getAllISIMPublicIdentity()[Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMHomeDomain()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMPCSCF()[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->getISIMAdminData()[B

    move-result-object v4

    .line 94
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 100
    .end local v4           #_result:[B
    :sswitch_6
    const-string v6, "com.motorola.android.internal.telephony.IISIMInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 106
    .local v1, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 109
    .local v3, _arg3:[B
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->ISIMAuthReq(I[BI[B)Lcom/motorola/android/telephony/ISIMAuthRes;

    move-result-object v4

    .line 110
    .local v4, _result:Lcom/motorola/android/telephony/ISIMAuthRes;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v4, p3, v5}, Lcom/motorola/android/telephony/ISIMAuthRes;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 116
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
