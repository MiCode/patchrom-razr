.class public Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;
.super Landroid/os/Binder;
.source "SaveImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/SaveImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SaveImageServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/SaveImageService;


# direct methods
.method protected constructor <init>(Lcom/motorola/Camera/SaveImageService;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;->this$0:Lcom/motorola/Camera/SaveImageService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/motorola/Camera/SaveImageService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/Camera/SaveImageService$SaveImageServiceBinder;->this$0:Lcom/motorola/Camera/SaveImageService;

    return-object v0
.end method
