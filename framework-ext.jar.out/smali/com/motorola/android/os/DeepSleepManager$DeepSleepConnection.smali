.class Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;
.super Ljava/lang/Object;
.source "DeepSleepManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/os/DeepSleepManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeepSleepConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/os/DeepSleepManager;


# direct methods
.method private constructor <init>(Lcom/motorola/android/os/DeepSleepManager;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;->this$0:Lcom/motorola/android/os/DeepSleepManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/os/DeepSleepManager;Lcom/motorola/android/os/DeepSleepManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/motorola/android/os/DeepSleepManager$DeepSleepConnection;-><init>(Lcom/motorola/android/os/DeepSleepManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 166
    invoke-static {p2}, Lcom/motorola/android/os/IDeepSleepService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/os/IDeepSleepService;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/os/DeepSleepManager;->access$102(Lcom/motorola/android/os/IDeepSleepService;)Lcom/motorola/android/os/IDeepSleepService;

    .line 167
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/android/os/DeepSleepManager;->access$102(Lcom/motorola/android/os/IDeepSleepService;)Lcom/motorola/android/os/IDeepSleepService;

    .line 174
    return-void
.end method
