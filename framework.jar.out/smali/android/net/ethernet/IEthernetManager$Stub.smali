.class public abstract Landroid/net/ethernet/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/ethernet/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ethernet/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ethernet.IEthernetManager"

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getEthernetHwState:I = 0x3

.field static final TRANSACTION_getEthernetState:I = 0x2

.field static final TRANSACTION_getLinkProperties:I = 0x6

.field static final TRANSACTION_getNetworkInfo:I = 0x7

.field static final TRANSACTION_saveConfiguration:I = 0x5

.field static final TRANSACTION_setEthernetEnabled:I = 0x1

.field static final TRANSACTION_startEthernet:I = 0x8

.field static final TRANSACTION_startService:I = 0xa

.field static final TRANSACTION_stopEthernet:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ethernet/IEthernetManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.net.ethernet.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/ethernet/IEthernetManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/ethernet/IEthernetManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/net/ethernet/IEthernetManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/ethernet/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 51
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->setEthernetEnabled(Z)Z

    move-result v1

    .line 52
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_1
    move v0, v3

    .line 50
    goto :goto_1

    .line 58
    :sswitch_2
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getEthernetState()I

    move-result v1

    .line 60
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_result:I
    :sswitch_3
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getEthernetHwState()I

    move-result v1

    .line 68
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1           #_result:I
    :sswitch_4
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getConfiguration()Landroid/net/ethernet/EthernetConfiguration;

    move-result-object v1

    .line 76
    .local v1, _result:Landroid/net/ethernet/EthernetConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v1, p3, v2}, Landroid/net/ethernet/EthernetConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v1           #_result:Landroid/net/ethernet/EthernetConfiguration;
    :sswitch_5
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    sget-object v4, Landroid/net/ethernet/EthernetConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ethernet/EthernetConfiguration;

    .line 96
    .local v0, _arg0:Landroid/net/ethernet/EthernetConfiguration;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/ethernet/IEthernetManager$Stub;->saveConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z

    move-result v1

    .line 97
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Landroid/net/ethernet/EthernetConfiguration;
    .end local v1           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/ethernet/EthernetConfiguration;
    goto :goto_2

    .line 103
    .end local v0           #_arg0:Landroid/net/ethernet/EthernetConfiguration;
    :sswitch_6
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 105
    .local v1, _result:Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v1, p3, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 111
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v1           #_result:Landroid/net/LinkProperties;
    :sswitch_7
    const-string v4, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 119
    .local v1, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v1, p3, v2}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1           #_result:Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->startEthernet()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    :sswitch_9
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->stopEthernet()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    :sswitch_a
    const-string v3, "android.net.ethernet.IEthernetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/net/ethernet/IEthernetManager$Stub;->startService()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
