.class Lcom/android/internal/telephony/SMSDispatcher$ImsConnectionListener;
.super Lcom/motorola/android/ims/ConnectionStateListener;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ImsConnectionListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Lcom/motorola/android/ims/ConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public processImsConnected(Z)V
    .locals 0
    .parameter "isLimited"

    .prologue
    .line 1435
    return-void
.end method

.method public processImsDisconnected()V
    .locals 0

    .prologue
    .line 1439
    return-void
.end method
