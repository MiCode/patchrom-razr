.class Lcom/vzw/location/VzwLocationManager$ListenerTransport;
.super Lcom/vzw/location/IVzwLocationListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationListener$Stub;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 93
    if-nez p3, :cond_0

    .line 94
    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport$2;-><init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 146
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 167
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    #getter for: Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManager;->access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/vzw/location/IVzwLocationManager;->locationCallbackFinished(Lcom/vzw/location/IVzwLocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    return-void

    .line 148
    :pswitch_0
    new-instance v3, Lcom/vzw/location/VzwLocation;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/vzw/location/VzwLocation;

    invoke-direct {v3, v6}, Lcom/vzw/location/VzwLocation;-><init>(Lcom/vzw/location/VzwLocation;)V

    .line 149
    .local v3, location:Lcom/vzw/location/VzwLocation;
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 152
    .end local v3           #location:Lcom/vzw/location/VzwLocation;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 153
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, provider:Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 155
    .local v5, status:I
    const-string v6, "extras"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 156
    .local v2, extras:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v6, v4, v5, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 159
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #provider:Ljava/lang/String;
    .end local v5           #status:I
    :pswitch_2
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v6}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "VzwLocationManager"

    const-string v7, "locationCallbackFinished: RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 111
    const-string v1, "VzwLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged() location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 141
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "provider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    if-eqz p3, :cond_0

    .line 125
    const-string v2, "extras"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method
