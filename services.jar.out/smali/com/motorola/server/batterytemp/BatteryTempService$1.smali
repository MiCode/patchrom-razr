.class Lcom/motorola/server/batterytemp/BatteryTempService$1;
.super Ljava/lang/Object;
.source "BatteryTempService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/server/batterytemp/BatteryTempService;->showBatteryTempAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/batterytemp/BatteryTempService;


# direct methods
.method constructor <init>(Lcom/motorola/server/batterytemp/BatteryTempService;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/motorola/server/batterytemp/BatteryTempService$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    iget-object v0, p0, Lcom/motorola/server/batterytemp/BatteryTempService$1;->this$0:Lcom/motorola/server/batterytemp/BatteryTempService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/server/batterytemp/BatteryTempService;->tempAlert:Landroid/app/AlertDialog;

    .line 237
    return-void
.end method
