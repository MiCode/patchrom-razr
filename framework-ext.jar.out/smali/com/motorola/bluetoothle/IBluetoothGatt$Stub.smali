.class public abstract Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Lcom/motorola/bluetoothle/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/bluetoothle/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/bluetoothle/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.bluetoothle.IBluetoothGatt"

.field static final TRANSACTION_connectGatt:I = 0x1

.field static final TRANSACTION_disconnectGatt:I = 0x2

.field static final TRANSACTION_getGattCharacteristicValue:I = 0x6

.field static final TRANSACTION_getGattCharacteristics:I = 0x5

.field static final TRANSACTION_getGattPrimaryServices:I = 0x3

.field static final TRANSACTION_readGattCharacteristicValue:I = 0x7

.field static final TRANSACTION_readGattCharacteristics:I = 0x4

.field static final TRANSACTION_writeGattCharacteristicValue:I = 0x8

.field static final TRANSACTION_writeGattConfigurationDesc:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/bluetoothle/IBluetoothGatt;
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
    const-string v1, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/bluetoothle/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/motorola/bluetoothle/IBluetoothGatt;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 47
    :sswitch_0
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/bluetoothle/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/bluetoothle/IBluetoothGattCallback;

    move-result-object v3

    .line 64
    .local v3, _arg2:Lcom/motorola/bluetoothle/IBluetoothGattCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->connectGatt(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/motorola/bluetoothle/IBluetoothGattCallback;)Z

    move-result v6

    .line 65
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v6, :cond_1

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/motorola/bluetoothle/IBluetoothGattCallback;
    .end local v6           #_result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v3       #_arg2:Lcom/motorola/bluetoothle/IBluetoothGattCallback;
    .restart local v6       #_result:Z
    :cond_1
    move v0, v8

    .line 66
    goto :goto_2

    .line 71
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/motorola/bluetoothle/IBluetoothGattCallback;
    .end local v6           #_result:Z
    :sswitch_2
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->disconnectGatt(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v6

    .line 82
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_3

    .line 88
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->getGattPrimaryServices(Landroid/bluetooth/BluetoothDevice;)[Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 103
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 112
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->readGattCharacteristics(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v6

    .line 114
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 120
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_5
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->getGattCharacteristics(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 137
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->getGattCharacteristicValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 150
    .restart local v6       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 156
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 165
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->readGattCharacteristicValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 169
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 175
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 184
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 190
    .local v4, _arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->writeGattCharacteristicValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v6

    .line 192
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:I
    .end local v6           #_result:Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 198
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string v0, "com.motorola.bluetoothle.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 213
    .restart local v4       #_arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg4:I
    move-object v0, p0

    .line 214
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/bluetoothle/IBluetoothGatt$Stub;->writeGattConfigurationDesc(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v6

    .line 215
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:I
    .end local v6           #_result:Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
