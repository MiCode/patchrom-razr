.class Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HookRequest"
.end annotation


# instance fields
.field public data:[B

.field public msg:Landroid/os/Message;

.field public msgH:Landroid/os/Handler;


# direct methods
.method public constructor <init>([BLandroid/os/Message;Landroid/os/Handler;)V
    .locals 0
    .parameter "data"
    .parameter "msg"
    .parameter "msgH"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->data:[B

    .line 171
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msg:Landroid/os/Message;

    .line 172
    iput-object p3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msgH:Landroid/os/Handler;

    .line 173
    return-void
.end method
