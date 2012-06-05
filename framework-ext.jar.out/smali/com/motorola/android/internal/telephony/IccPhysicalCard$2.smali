.class Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;
.super Ljava/lang/Object;
.source "IccPhysicalCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/IccPhysicalCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    #getter for: Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->access$100(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reboot due to SIM swap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;->this$0:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    #getter for: Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->access$200(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 212
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 214
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
