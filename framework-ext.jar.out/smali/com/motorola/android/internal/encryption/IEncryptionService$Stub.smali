.class public abstract Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;
.super Landroid/os/Binder;
.source "IEncryptionService.java"

# interfaces
.implements Lcom/motorola/android/internal/encryption/IEncryptionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/encryption/IEncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/encryption/IEncryptionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.encryption.IEncryptionService"

.field static final TRANSACTION_endSession:I = 0x2

.field static final TRANSACTION_getAppKey:I = 0x5

.field static final TRANSACTION_getDefaultPasswordHash:I = 0xf

.field static final TRANSACTION_getKeyStatus:I = 0x4

.field static final TRANSACTION_getSavedPasswordHash:I = 0xe

.field static final TRANSACTION_getStatus:I = 0x3

.field static final TRANSACTION_onAppDataEncryptionChanged:I = 0x7

.field static final TRANSACTION_onKeyTypeChanged:I = 0x6

.field static final TRANSACTION_onNewPasswordSaved:I = 0xa

.field static final TRANSACTION_onPasswordFailed:I = 0xc

.field static final TRANSACTION_onPasswordVerified:I = 0x8

.field static final TRANSACTION_onRecoveryPasswordSaved:I = 0xb

.field static final TRANSACTION_onRecoveryPasswordVerified:I = 0x9

.field static final TRANSACTION_onScreenLocked:I = 0xd

.field static final TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/encryption/IEncryptionService;
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
    const-string v1, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/internal/encryption/IEncryptionService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/android/internal/encryption/IEncryptionService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->startSession(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->endSession(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->getStatus()I

    move-result v2

    .line 70
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v2           #_result:I
    :sswitch_4
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->getKeyStatus(Ljava/lang/String;)I

    move-result v2

    .line 80
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_5
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->getAppKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 90
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:[B
    :sswitch_6
    const-string v5, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onKeyTypeChanged(I)Z

    move-result v2

    .line 100
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_7
    const-string v5, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onAppDataEncryptionChanged(Ljava/lang/String;I)Z

    move-result v2

    .line 112
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_8
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onPasswordVerified(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onRecoveryPasswordVerified(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onNewPasswordSaved(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onRecoveryPasswordSaved(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onPasswordFailed()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    :sswitch_d
    const-string v5, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 164
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->onScreenLocked(Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v3

    .line 163
    goto :goto_1

    .line 170
    :sswitch_e
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->getSavedPasswordHash()[B

    move-result-object v2

    .line 172
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 178
    .end local v2           #_result:[B
    :sswitch_f
    const-string v3, "com.motorola.android.internal.encryption.IEncryptionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/motorola/android/internal/encryption/IEncryptionService$Stub;->getDefaultPasswordHash()[B

    move-result-object v2

    .line 180
    .restart local v2       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 41
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
