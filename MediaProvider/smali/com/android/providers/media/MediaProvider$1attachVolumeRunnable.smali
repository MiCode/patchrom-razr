.class final Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->attachVolumeAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "attachVolumeRunnable"
.end annotation


# instance fields
.field mVolumeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "volumeName"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;->mVolumeName:Ljava/lang/String;

    .line 343
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$1attachVolumeRunnable;->mVolumeName:Ljava/lang/String;

    #calls: Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)Landroid/net/Uri;

    .line 349
    return-void
.end method
