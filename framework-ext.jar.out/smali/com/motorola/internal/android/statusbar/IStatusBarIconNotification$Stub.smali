.class public abstract Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;
.super Landroid/os/Binder;
.source "IStatusBarIconNotification.java"

# interfaces
.implements Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

.field static final TRANSACTION_onIconChanged:I = 0x1

.field static final TRANSACTION_onIconVisibilityChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
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
    const-string v1, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v5, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 62
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :sswitch_2
    const-string v5, "com.motorola.internal.android.statusbar.IStatusBarIconNotification"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 67
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification$Stub;->onIconVisibilityChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 66
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
