.class public abstract Lcom/motorola/android/ims/IIMSCSms$Stub;
.super Landroid/os/Binder;
.source "IIMSCSms.java"

# interfaces
.implements Lcom/motorola/android/ims/IIMSCSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IIMSCSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.IIMSCSms"

.field static final TRANSACTION_cancelMessage:I = 0x5

.field static final TRANSACTION_getSmsProtocolType:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x3

.field static final TRANSACTION_sendResponse:I = 0x4

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.android.ims.IIMSCSms"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/IIMSCSms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSms;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/android/ims/IIMSCSms;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSmsCallback;

    move-result-object v2

    .line 54
    .local v2, _arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/android/ims/IIMSCSms$Stub;->registerCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I

    move-result v14

    .line 55
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    .end local v2           #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    .end local v14           #_result:I
    :sswitch_2
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSmsCallback;

    move-result-object v2

    .line 64
    .restart local v2       #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/android/ims/IIMSCSms$Stub;->unRegisterCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I

    move-result v14

    .line 65
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v2           #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    .end local v14           #_result:I
    :sswitch_3
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 79
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg3:[B
    move-object/from16 v1, p0

    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/android/ims/IIMSCSms$Stub;->sendMessage(JLjava/lang/String;I[B)J

    move-result-wide v14

    .line 81
    .local v14, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:[B
    .end local v14           #_result:J
    :sswitch_4
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 91
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 93
    .local v10, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 95
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .restart local v6       #_arg3:[B
    move-object/from16 v7, p0

    move-wide v8, v2

    move v12, v5

    move-object v13, v6

    .line 96
    invoke-virtual/range {v7 .. v13}, Lcom/motorola/android/ims/IIMSCSms$Stub;->sendResponse(JJI[B)Z

    move-result v14

    .line 97
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 103
    .end local v2           #_arg0:J
    .end local v5           #_arg2:I
    .end local v6           #_arg3:[B
    .end local v10           #_arg1:J
    .end local v14           #_result:Z
    :sswitch_5
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 107
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 108
    .restart local v10       #_arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10, v11}, Lcom/motorola/android/ims/IIMSCSms$Stub;->cancelMessage(JJ)Z

    move-result v14

    .line 109
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v14, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 115
    .end local v2           #_arg0:J
    .end local v10           #_arg1:J
    .end local v14           #_result:Z
    :sswitch_6
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/ims/IIMSCSms$Stub;->getSmsProtocolType()I

    move-result v14

    .line 117
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 42
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
