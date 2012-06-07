.class Lcom/motorola/Camera/DemoActivity$1;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/DemoActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DemoActivity;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DemoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/motorola/Camera/DemoActivity$1;->this$0:Lcom/motorola/Camera/DemoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity$1;->this$0:Lcom/motorola/Camera/DemoActivity;

    #calls: Lcom/motorola/Camera/DemoActivity;->startPreview()V
    invoke-static {v0}, Lcom/motorola/Camera/DemoActivity;->access$000(Lcom/motorola/Camera/DemoActivity;)V

    .line 78
    return-void
.end method
