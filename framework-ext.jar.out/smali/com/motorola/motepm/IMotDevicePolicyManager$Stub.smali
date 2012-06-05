.class public abstract Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IMotDevicePolicyManager.java"

# interfaces
.implements Lcom/motorola/motepm/IMotDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/IMotDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.motepm.IMotDevicePolicyManager"

.field static final TRANSACTION_addEmailAccount:I = 0x23

.field static final TRANSACTION_configureVpn:I = 0x27

.field static final TRANSACTION_deleteSDcardData:I = 0x26

.field static final TRANSACTION_deleteVpn:I = 0x28

.field static final TRANSACTION_enforcePasswordSet:I = 0xa

.field static final TRANSACTION_getActiveAdmins:I = 0x3

.field static final TRANSACTION_getActiveSyncID:I = 0x24

.field static final TRANSACTION_getDeviceEncryptionStatus:I = 0x32

.field static final TRANSACTION_getDisabledPackages:I = 0x2f

.field static final TRANSACTION_getManualDataSyncinRoaming:I = 0xd

.field static final TRANSACTION_getPackageDisableInfo:I = 0x30

.field static final TRANSACTION_getPasswordExpirationStatus:I = 0x19

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x15

.field static final TRANSACTION_getPasswordMinimumComplexity:I = 0x11

.field static final TRANSACTION_getRecoveryPassword:I = 0x1c

.field static final TRANSACTION_getRemoveWarning:I = 0x5

.field static final TRANSACTION_getStorageCardEncryptionStatus:I = 0x31

.field static final TRANSACTION_getVpnByID:I = 0x29

.field static final TRANSACTION_hasGrantedPolicy:I = 0x13

.field static final TRANSACTION_installCertificate:I = 0x2a

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x12

.field static final TRANSACTION_isActivePasswordSufficientForComplexity:I = 0xf

.field static final TRANSACTION_isAdminActive:I = 0x2

.field static final TRANSACTION_isDeviceEncryptionEnabled:I = 0x1e

.field static final TRANSACTION_isDeviceEncryptionRequired:I = 0x20

.field static final TRANSACTION_isPasswordNeedChangetoNotSimple:I = 0x9

.field static final TRANSACTION_isPasswordRecoveryEnabled:I = 0x17

.field static final TRANSACTION_isPasswordSetEnforced:I = 0xb

.field static final TRANSACTION_isPolicyAllowed:I = 0x2c

.field static final TRANSACTION_isPolicySupported:I = 0x33

.field static final TRANSACTION_isStorageCardEncryptionRequired:I = 0x22

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x4

.field static final TRANSACTION_removeActiveAdmin:I = 0x6

.field static final TRANSACTION_removeEmailAccount:I = 0x25

.field static final TRANSACTION_reportExpirationWarningShow:I = 0x1a

.field static final TRANSACTION_reportPasswordChanged:I = 0x1b

.field static final TRANSACTION_reportPolicyEnforcedResult:I = 0x2e

.field static final TRANSACTION_setActiveAdmin:I = 0x1

.field static final TRANSACTION_setActivePasswordComplexity:I = 0xe

.field static final TRANSACTION_setActivePasswordSimpleState:I = 0x8

.field static final TRANSACTION_setAllowPolicies:I = 0x2b

.field static final TRANSACTION_setDeviceEncryptionEnabled:I = 0x1d

.field static final TRANSACTION_setDeviceEncryptionRequired:I = 0x1f

.field static final TRANSACTION_setIntentDisabled:I = 0x7

.field static final TRANSACTION_setManualDataSyncinRoaming:I = 0xc

.field static final TRANSACTION_setPasswordExpirationPeriod:I = 0x18

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x14

.field static final TRANSACTION_setPasswordMinimumComplexity:I = 0x10

.field static final TRANSACTION_setPasswordRecoveryEnabled:I = 0x16

.field static final TRANSACTION_setStorageCardEncryptionRequired:I = 0x21

.field static final TRANSACTION_wipeData:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/motepm/IMotDevicePolicyManager;
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
    const-string v1, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/motorola/motepm/IMotDevicePolicyManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 715
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 55
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 61
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v2, v9

    .line 62
    .local v2, _arg1:Z
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    :cond_1
    move v2, v0

    .line 61
    goto :goto_2

    .line 68
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 71
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 76
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v6

    .line 77
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v6, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 83
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 91
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_4
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    .line 95
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 110
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 116
    .local v2, _arg1:Landroid/os/RemoteCallback;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 114
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_5

    .line 122
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_6
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 130
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .line 136
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    .line 139
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 145
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v2, v9

    .line 146
    .local v2, _arg1:Z
    :goto_8
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setIntentDisabled(Landroid/content/ComponentName;Z)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    :cond_9
    move v2, v0

    .line 145
    goto :goto_8

    .line 152
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    move v1, v9

    .line 155
    .local v1, _arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActivePasswordSimpleState(Z)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_a
    move v1, v0

    .line 154
    goto :goto_9

    .line 161
    :sswitch_9
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordNeedChangetoNotSimple()Z

    move-result v6

    .line 163
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v6, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v6           #_result:Z
    :sswitch_a
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    move v1, v9

    .line 172
    .restart local v1       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->enforcePasswordSet(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_c
    move v1, v0

    .line 171
    goto :goto_a

    .line 178
    :sswitch_b
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordSetEnforced()Z

    move-result v6

    .line 180
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v6           #_result:Z
    :sswitch_c
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    .line 189
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 195
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    move v2, v9

    .line 196
    .restart local v2       #_arg1:Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I

    move-result v6

    .line 197
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v6           #_result:I
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    :cond_f
    move v2, v0

    .line 195
    goto :goto_c

    .line 203
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_11

    .line 206
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 211
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v6

    .line 212
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v6, :cond_10

    move v0, v9

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 209
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 218
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActivePasswordComplexity(I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 227
    .end local v1           #_arg0:I
    :sswitch_f
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isActivePasswordSufficientForComplexity()Z

    move-result v6

    .line 229
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v6, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v6           #_result:Z
    :sswitch_10
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 244
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I

    move-result v6

    .line 246
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :cond_13
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 252
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 255
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 260
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v6

    .line 261
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:I
    :cond_14
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 267
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v6

    .line 269
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v6, :cond_15

    move v0, v9

    :cond_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    .end local v6           #_result:Z
    :sswitch_13
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 278
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 284
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v6

    .line 286
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v6, :cond_16

    move v0, v9

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .line 292
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 295
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 301
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v6

    .line 303
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :cond_18
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 309
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 312
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 317
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v6

    .line 318
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:I
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 324
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 327
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 333
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    move v2, v9

    .line 334
    .local v2, _arg1:Z
    :goto_14
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I

    move-result v6

    .line 335
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 330
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v6           #_result:I
    :cond_1a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    :cond_1b
    move v2, v0

    .line 333
    goto :goto_14

    .line 341
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1d

    .line 344
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 349
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    .line 350
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v6, :cond_1c

    move v0, v9

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .line 356
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 359
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 365
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I

    move-result v6

    .line 367
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v6           #_result:I
    :cond_1e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .line 373
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordExpirationStatus()I

    move-result v6

    .line 375
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 381
    .end local v6           #_result:I
    :sswitch_1a
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportExpirationWarningShow()V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 388
    :sswitch_1b
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportPasswordChanged()V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 395
    :sswitch_1c
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 398
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 403
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Ljava/lang/String;
    :cond_1f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 410
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    .line 413
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 419
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21

    move v2, v9

    .line 420
    .local v2, _arg1:Z
    :goto_19
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setDeviceEncryptionEnabled(Landroid/content/ComponentName;Z)I

    move-result v6

    .line 421
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 416
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v6           #_result:I
    :cond_20
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    :cond_21
    move v2, v0

    .line 419
    goto :goto_19

    .line 427
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    .line 430
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 435
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isDeviceEncryptionEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    .line 436
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v6, :cond_22

    move v0, v9

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_23
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .line 442
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_24

    .line 445
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 451
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    move v2, v9

    .line 452
    .restart local v2       #_arg1:Z
    :goto_1c
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setDeviceEncryptionRequired(Landroid/content/ComponentName;Z)I

    move-result v6

    .line 453
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 448
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v6           #_result:I
    :cond_24
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    :cond_25
    move v2, v0

    .line 451
    goto :goto_1c

    .line 459
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27

    .line 462
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 467
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isDeviceEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    .line 468
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v6, :cond_26

    move v0, v9

    :cond_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_27
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d

    .line 474
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_28

    .line 477
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 483
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_29

    move v2, v9

    .line 484
    .restart local v2       #_arg1:Z
    :goto_1f
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setStorageCardEncryptionRequired(Landroid/content/ComponentName;Z)I

    move-result v6

    .line 485
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v6           #_result:I
    :cond_28
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_1e

    :cond_29
    move v2, v0

    .line 483
    goto :goto_1f

    .line 491
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_22
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2b

    .line 494
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 499
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isStorageCardEncryptionRequired(Landroid/content/ComponentName;)Z

    move-result v6

    .line 500
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v6, :cond_2a

    move v0, v9

    :cond_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Z
    :cond_2b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .line 506
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c

    move v5, v9

    .local v5, _arg4:Z
    :goto_21
    move-object v0, p0

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->addEmailAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v5           #_arg4:Z
    :cond_2c
    move v5, v0

    .line 516
    goto :goto_21

    .line 523
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_24
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getActiveSyncID()V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 530
    :sswitch_25
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->removeEmailAccount(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 539
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->deleteSDcardData(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 548
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_27
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 551
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 556
    .local v1, _arg0:Landroid/os/Bundle;
    :goto_22
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->configureVpn(Landroid/os/Bundle;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 554
    .end local v1           #_arg0:Landroid/os/Bundle;
    :cond_2d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Bundle;
    goto :goto_22

    .line 562
    .end local v1           #_arg0:Landroid/os/Bundle;
    :sswitch_28
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    .line 565
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 570
    .restart local v1       #_arg0:Landroid/os/Bundle;
    :goto_23
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->deleteVpn(Landroid/os/Bundle;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 568
    .end local v1           #_arg0:Landroid/os/Bundle;
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Bundle;
    goto :goto_23

    .line 576
    .end local v1           #_arg0:Landroid/os/Bundle;
    :sswitch_29
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 579
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 584
    .restart local v1       #_arg0:Landroid/os/Bundle;
    :goto_24
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getVpnByID(Landroid/os/Bundle;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 582
    .end local v1           #_arg0:Landroid/os/Bundle;
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/os/Bundle;
    goto :goto_24

    .line 590
    .end local v1           #_arg0:Landroid/os/Bundle;
    :sswitch_2a
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 594
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 598
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 599
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 605
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_2b
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_30

    .line 608
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 614
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_31

    move v3, v9

    .line 617
    .local v3, _arg2:Z
    :goto_26
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAllowPolicies(Landroid/content/ComponentName;IZ)I

    move-result v6

    .line 618
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 611
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v6           #_result:I
    :cond_30
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .restart local v2       #_arg1:I
    :cond_31
    move v3, v0

    .line 616
    goto :goto_26

    .line 624
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    :sswitch_2c
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_33

    .line 627
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 633
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v6

    .line 635
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v6, :cond_32

    move v0, v9

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 630
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_33
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 641
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_34

    move v1, v9

    .line 645
    .local v1, _arg0:Z
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_35

    move v2, v9

    .line 646
    .local v2, _arg1:Z
    :goto_29
    invoke-virtual {p0, v1, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->wipeData(ZZ)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :cond_34
    move v1, v0

    .line 643
    goto :goto_28

    .restart local v1       #_arg0:Z
    :cond_35
    move v2, v0

    .line 645
    goto :goto_29

    .line 652
    .end local v1           #_arg0:Z
    :sswitch_2e
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36

    .line 655
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 661
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 663
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 665
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_37

    move v4, v9

    .line 666
    .local v4, _arg3:Z
    :goto_2b
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 658
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :cond_36
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .restart local v2       #_arg1:I
    .restart local v3       #_arg2:I
    :cond_37
    move v4, v0

    .line 665
    goto :goto_2b

    .line 672
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_2f
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getDisabledPackages()Ljava/util/List;

    move-result-object v8

    .line 674
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 680
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_30
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPackageDisableInfo(Ljava/lang/String;)I

    move-result v6

    .line 684
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 690
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_31
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getStorageCardEncryptionStatus()I

    move-result v6

    .line 692
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 698
    .end local v6           #_result:I
    :sswitch_32
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getDeviceEncryptionStatus()I

    move-result v6

    .line 700
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 706
    .end local v6           #_result:I
    :sswitch_33
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPolicySupported(I)Z

    move-result v6

    .line 710
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v6, :cond_38

    move v0, v9

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
