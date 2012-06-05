.class Lcom/motorola/android/ims/ConnectionStateListener$1;
.super Lcom/motorola/android/ims/IConnectionStateListener$Stub;
.source "ConnectionStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/ConnectionStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/android/ims/ConnectionStateListener$1;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    invoke-direct {p0}, Lcom/motorola/android/ims/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(IZ)V
    .locals 5
    .parameter "connectionState"
    .parameter "isLimited"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/motorola/android/ims/ConnectionStateListener$1;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    iget-object v3, v0, Lcom/motorola/android/ims/ConnectionStateListener;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v1, v0, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    return-void

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0
.end method
