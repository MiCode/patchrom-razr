.class Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask$1;
.super Ljava/lang/Object;
.source "VzwEri.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;


# direct methods
.method constructor <init>(Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask$1;->this$1:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "player"

    .prologue
    .line 313
    const-string v0, "VzwEri"

    const-string v1, "playEriAlert() onCompletion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask$1;->this$1:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    iget-object v0, v0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/motorola/android/systemui/statusbar/VzwEri;

    #calls: Lcom/motorola/android/systemui/statusbar/VzwEri;->stopMediaPlayer()V
    invoke-static {v0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->access$100(Lcom/motorola/android/systemui/statusbar/VzwEri;)V

    .line 315
    return-void
.end method
