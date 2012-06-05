.class public abstract Lcom/motorola/sensorhub/ISensorHub$Stub;
.super Landroid/os/Binder;
.source "ISensorHub.java"

# interfaces
.implements Lcom/motorola/sensorhub/ISensorHub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/sensorhub/ISensorHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/sensorhub/ISensorHub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.sensorhub.ISensorHub"

.field static final TRANSACTION_disableMovement:I = 0x2

.field static final TRANSACTION_disableRadius:I = 0x4

.field static final TRANSACTION_enableMovement:I = 0x1

.field static final TRANSACTION_enableRadius:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/sensorhub/ISensorHub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHub;
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
    const-string v1, "com.motorola.sensorhub.ISensorHub"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/sensorhub/ISensorHub;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/sensorhub/ISensorHub;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/sensorhub/ISensorHub$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/sensorhub/ISensorHub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubMovementListener;

    move-result-object v0

    .line 54
    .local v0, _arg0:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/sensorhub/ISensorHub$Stub;->enableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;II)Z

    move-result v3

    .line 58
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_result:Z
    :sswitch_2
    const-string v4, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/sensorhub/ISensorHubMovementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubMovementListener;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    invoke-virtual {p0, v0}, Lcom/motorola/sensorhub/ISensorHub$Stub;->disableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Lcom/motorola/sensorhub/ISensorHubMovementListener;
    :sswitch_3
    const-string v6, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubRadiusListener;

    move-result-object v0

    .line 77
    .local v0, _arg0:Lcom/motorola/sensorhub/ISensorHubRadiusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 78
    .local v1, _arg1:F
    invoke-virtual {p0, v0, v1}, Lcom/motorola/sensorhub/ISensorHub$Stub;->enableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;F)Z

    move-result v3

    .line 79
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:Lcom/motorola/sensorhub/ISensorHubRadiusListener;
    .end local v1           #_arg1:F
    .end local v3           #_result:Z
    :sswitch_4
    const-string v4, "com.motorola.sensorhub.ISensorHub"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubRadiusListener;

    move-result-object v0

    .line 88
    .restart local v0       #_arg0:Lcom/motorola/sensorhub/ISensorHubRadiusListener;
    invoke-virtual {p0, v0}, Lcom/motorola/sensorhub/ISensorHub$Stub;->disableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
