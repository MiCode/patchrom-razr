.class public abstract Lcom/vzw/location/IVzwLocationManager$Stub;
.super Landroid/os/Binder;
.source "IVzwLocationManager.java"

# interfaces
.implements Lcom/vzw/location/IVzwLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwLocationManager"

.field static final TRANSACTION_addVzwGpsStatusListener:I = 0x8

.field static final TRANSACTION_getNumListeners:I = 0xb

.field static final TRANSACTION_getProviderInfo:I = 0x2

.field static final TRANSACTION_getProviders:I = 0x1

.field static final TRANSACTION_isProviderEnabled:I = 0x3

.field static final TRANSACTION_locationCallbackFinished:I = 0xa

.field static final TRANSACTION_removeUpdates:I = 0x7

.field static final TRANSACTION_removeVzwGpsStatusListener:I = 0x9

.field static final TRANSACTION_requestLocationUpdates:I = 0x5

.field static final TRANSACTION_requestSingleLocationUpdate:I = 0x6

.field static final TRANSACTION_sendExtraCommand:I = 0xc

.field static final TRANSACTION_startAuthentication:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.vzw.location.IVzwLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vzw/location/IVzwLocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/vzw/location/IVzwLocationManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vzw/location/IVzwLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 55
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 56
    .local v3, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Ljava/util/List;
    :cond_0
    move v0, v5

    .line 54
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v6, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 66
    .local v3, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v3, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/os/Bundle;
    :sswitch_3
    const-string v6, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 82
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    sget-object v5, Lcom/vzw/location/VzwGpsConfigInit;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsConfigInit;

    .line 98
    .local v1, _arg1:Lcom/vzw/location/VzwGpsConfigInit;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/IVzwLocationManager$Stub;->startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v1           #_arg1:Lcom/vzw/location/VzwGpsConfigInit;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/vzw/location/VzwGpsConfigInit;
    goto :goto_2

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/vzw/location/VzwGpsConfigInit;
    :sswitch_5
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    sget-object v5, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwCriteria;

    .line 115
    .local v1, _arg1:Lcom/vzw/location/VzwCriteria;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vzw/location/IVzwLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationListener;

    move-result-object v2

    .line 116
    .local v2, _arg2:Lcom/vzw/location/IVzwLocationListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwLocationManager$Stub;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v1           #_arg1:Lcom/vzw/location/VzwCriteria;
    .end local v2           #_arg2:Lcom/vzw/location/IVzwLocationListener;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/vzw/location/VzwCriteria;
    goto :goto_3

    .line 122
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/vzw/location/VzwCriteria;
    :sswitch_6
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 127
    sget-object v5, Lcom/vzw/location/VzwCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwCriteria;

    .line 133
    .restart local v1       #_arg1:Lcom/vzw/location/VzwCriteria;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vzw/location/IVzwLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationListener;

    move-result-object v2

    .line 134
    .restart local v2       #_arg2:Lcom/vzw/location/IVzwLocationListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwLocationManager$Stub;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v1           #_arg1:Lcom/vzw/location/VzwCriteria;
    .end local v2           #_arg2:Lcom/vzw/location/IVzwLocationListener;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/vzw/location/VzwCriteria;
    goto :goto_4

    .line 140
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lcom/vzw/location/VzwCriteria;
    :sswitch_7
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vzw/location/IVzwLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationListener;

    move-result-object v0

    .line 143
    .local v0, _arg0:Lcom/vzw/location/IVzwLocationListener;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:Lcom/vzw/location/IVzwLocationListener;
    :sswitch_8
    const-string v6, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v0

    .line 152
    .local v0, _arg0:Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v3

    .line 153
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v3, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:Lcom/vzw/location/IVzwGpsStatusListener;
    .end local v3           #_result:Z
    :sswitch_9
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v0

    .line 162
    .restart local v0       #_arg0:Lcom/vzw/location/IVzwGpsStatusListener;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Lcom/vzw/location/IVzwGpsStatusListener;
    :sswitch_a
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vzw/location/IVzwLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationListener;

    move-result-object v0

    .line 171
    .local v0, _arg0:Lcom/vzw/location/IVzwLocationListener;
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->locationCallbackFinished(Lcom/vzw/location/IVzwLocationListener;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 177
    .end local v0           #_arg0:Lcom/vzw/location/IVzwLocationListener;
    :sswitch_b
    const-string v5, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;->getNumListeners()I

    move-result v3

    .line 179
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v3           #_result:I
    :sswitch_c
    const-string v6, "com.vzw.location.IVzwLocationManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 192
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 197
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/vzw/location/IVzwLocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    .line 198
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v2           #_arg2:Landroid/os/Bundle;
    .end local v3           #_result:Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_5

    .line 43
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
