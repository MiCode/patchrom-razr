.class Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$1;
.super Landroid/os/Handler;
.source "VzwHalGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$1;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 226
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 229
    .local v0, extras:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider$1;->this$0:Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;

    #calls: Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->handleXtraDataInject(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->access$000(Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;Landroid/os/Bundle;)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
