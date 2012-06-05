.class public abstract Lcom/motorola/batterymanager/IBatteryManager$Stub;
.super Landroid/os/Binder;
.source "IBatteryManager.java"

# interfaces
.implements Lcom/motorola/batterymanager/IBatteryManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/batterymanager/IBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.batterymanager.IBatteryManager"

.field static final TRANSACTION_changeBatteryManagerMode:I = 0x6

.field static final TRANSACTION_changeCellDataSettings:I = 0x1

.field static final TRANSACTION_changeDataSettings:I = 0x2

.field static final TRANSACTION_enableApnType:I = 0x3

.field static final TRANSACTION_getCurrentBatteryManagerMode:I = 0x4

.field static final TRANSACTION_getCurrentDataStatus:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/batterymanager/IBatteryManager;
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
    const-string v1, "com.motorola.batterymanager.IBatteryManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/batterymanager/IBatteryManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/batterymanager/IBatteryManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 56
    .local v1, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    .line 57
    .local v3, _arg2:Z
    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeCellDataSettings(IJZ)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:I
    .end local v1           #_arg1:J
    .end local v3           #_arg2:Z
    :sswitch_2
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 69
    .restart local v1       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v3, v5

    .line 70
    .restart local v3       #_arg2:Z
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeDataSettings(IJZ)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:I
    .end local v1           #_arg1:J
    .end local v3           #_arg2:Z
    :sswitch_3
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_4
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->getCurrentBatteryManagerMode()I

    move-result v4

    .line 88
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v4           #_result:I
    :sswitch_5
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->getCurrentDataStatus()I

    move-result v4

    .line 96
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v4           #_result:I
    :sswitch_6
    const-string v6, "com.motorola.batterymanager.IBatteryManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/batterymanager/IBatteryManager$Stub;->changeBatteryManagerMode(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
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
