.class final Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DemoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DemoActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/DemoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/DemoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/DemoActivity;Lcom/motorola/Camera/DemoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/DemoActivity;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    const/16 v1, 0x64

    .line 301
    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 304
    :cond_0
    if-ne p1, v1, :cond_2

    .line 305
    const-string v0, "MotoCameraDemo"

    const-string v1, "ERROR: MediaServer Crashed. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/DemoActivity;

    invoke-virtual {v0}, Lcom/motorola/Camera/DemoActivity;->finish()V

    .line 313
    :cond_1
    return-void

    .line 307
    :cond_2
    const-string v0, "MotoCameraDemo"

    const-string v1, "ERROR: unknown error from camera h/w. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
