.class final Lcom/motorola/android/os/DeepSleepMediaManager$3;
.super Ljava/lang/Object;
.source "DeepSleepMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/os/DeepSleepMediaManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 188
    return-void
.end method
