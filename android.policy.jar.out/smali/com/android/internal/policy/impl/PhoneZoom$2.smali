.class Lcom/android/internal/policy/impl/PhoneZoom$2;
.super Ljava/lang/Object;
.source "PhoneZoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneZoom;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$2;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom$2;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #calls: Lcom/android/internal/policy/impl/PhoneZoom;->stopZoomWindow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneZoom;->access$400(Lcom/android/internal/policy/impl/PhoneZoom;)V

    .line 194
    return-void
.end method
