.class Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;
.super Landroid/os/Handler;
.source "EncryptionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;


# direct methods
.method constructor <init>(Lcom/motorola/server/encryption/EncryptionService$AdminHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/server/encryption/EncryptionService;->handlePasswordVerified(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v0, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    invoke-virtual {v0}, Lcom/motorola/server/encryption/EncryptionService;->handlePasswordFailed()V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/server/encryption/EncryptionService;->handleNewPasswordSaved(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/server/encryption/EncryptionService;->handleRecoveryPasswordVerified(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v1, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/server/encryption/EncryptionService;->handleRecoveryPasswordSaved(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_6
    iget-object v0, p0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler$1;->this$1:Lcom/motorola/server/encryption/EncryptionService$AdminHandler;

    iget-object v0, v0, Lcom/motorola/server/encryption/EncryptionService$AdminHandler;->this$0:Lcom/motorola/server/encryption/EncryptionService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/motorola/server/encryption/EncryptionService;->handleScreenLocked(I)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method
