.class Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotEPMPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #calls: Lcom/motorola/motepm/MotEPMPhoneStateListener;->handleServiceStateChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$500(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/telephony/ServiceState;)V

    .line 112
    return-void
.end method
