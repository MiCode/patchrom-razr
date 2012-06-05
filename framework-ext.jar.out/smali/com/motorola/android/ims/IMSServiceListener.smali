.class public Lcom/motorola/android/ims/IMSServiceListener;
.super Ljava/lang/Object;
.source "IMSServiceListener.java"


# instance fields
.field protected mService:Lcom/motorola/android/ims/IMSService;


# direct methods
.method public constructor <init>(Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/motorola/android/ims/IMSServiceListener;->mService:Lcom/motorola/android/ims/IMSService;

    .line 19
    return-void
.end method


# virtual methods
.method public processServiceClosed(Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 28
    return-void
.end method

.method public processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V
    .locals 0
    .parameter "service"
    .parameter "status"

    .prologue
    .line 39
    return-void
.end method
