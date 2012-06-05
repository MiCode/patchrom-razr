.class final Lcom/motorola/android/os/DeepSleepMediaManager$2;
.super Ljava/lang/Object;
.source "DeepSleepMediaManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/os/DeepSleepMediaManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 176
    new-instance v0, Lcom/motorola/android/os/DeepSleepMediaManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/android/os/DeepSleepMediaManager$MyHandler;-><init>(Lcom/motorola/android/os/DeepSleepMediaManager$1;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/motorola/android/os/DeepSleepMediaManager$2;->call()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
