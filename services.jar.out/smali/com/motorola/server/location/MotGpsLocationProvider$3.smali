.class Lcom/motorola/server/location/MotGpsLocationProvider$3;
.super Landroid/location/INetInitiatedListener$Stub;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$3;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notificationId"
    .parameter "userResponse"

    .prologue
    .line 1803
    const-string v0, "MotGpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNiResponse, notifId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$3;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_send_ni_response(II)V
    invoke-static {v0, p1, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1900(Lcom/motorola/server/location/MotGpsLocationProvider;II)V

    .line 1806
    const/4 v0, 0x1

    return v0
.end method
