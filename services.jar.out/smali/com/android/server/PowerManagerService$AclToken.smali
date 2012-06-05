.class Lcom/android/server/PowerManagerService$AclToken;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AclToken"
.end annotation


# instance fields
.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "token"

    .prologue
    .line 4708
    iput-object p1, p0, Lcom/android/server/PowerManagerService$AclToken;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4709
    iput-object p2, p0, Lcom/android/server/PowerManagerService$AclToken;->mToken:Landroid/os/IBinder;

    .line 4710
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 4713
    iget-object v0, p0, Lcom/android/server/PowerManagerService$AclToken;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$AclToken;->mToken:Landroid/os/IBinder;

    #calls: Lcom/android/server/PowerManagerService;->unTrackAcl(Landroid/os/IBinder;Lcom/android/server/PowerManagerService$AclToken;)V
    invoke-static {v0, v1, p0}, Lcom/android/server/PowerManagerService;->access$10000(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;Lcom/android/server/PowerManagerService$AclToken;)V

    .line 4714
    return-void
.end method
