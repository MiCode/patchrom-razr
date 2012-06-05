.class public Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModemInfo"
.end annotation


# static fields
.field public static final MAX_RADIO_MODULE:I = 0x2


# instance fields
.field mCdmaPhone:Lcom/android/internal/telephony/Phone;

.field mCdmaSource:I

.field mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mCurrentActivePhoneType:I

.field mGsmPhone:Lcom/android/internal/telephony/Phone;

.field mModemId:I

.field mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field mPhoneProxy:Lcom/android/internal/telephony/Phone;

.field mPreferredNetworkMode:I

.field mRadioModuleNum:I

.field mRadioModules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V
    .locals 4
    .parameter
    .parameter "c"
    .parameter "phoneNotifier"
    .parameter "modemId"
    .parameter "networkMode"
    .parameter "cdmaSource"
    .parameter "radioModuleNum"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    .line 149
    iput p4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    .line 150
    iput p6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    .line 151
    iput p5, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    .line 152
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 153
    iput p7, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/RIL;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    iget v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 158
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getDefaultActivePhoneType()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    .line 159
    return-void
.end method

.method private createPhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 5
    .parameter "phoneType"

    .prologue
    .line 174
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    const-string v0, "ModemConfigManager"

    const-string v1, "Creating CDMAPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 197
    :goto_1
    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "ModemConfigManager"

    const-string v1, "Creating CDMALTEPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 191
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 192
    const-string v0, "ModemConfigManager"

    const-string v1, "Creating GSMPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v1, "Get invalid phone type when createPhone, failed to create"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$000(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 285
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 317
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 297
    goto :goto_0

    .line 303
    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneTypeInGlobalNetworkMode()I

    move-result v0

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 313
    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V
    .locals 1
    .parameter "radioModule"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    return v0
.end method

.method public getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getCdmaSubscriptionSource()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    return v0
.end method

.method public getDefaultActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getDefaultActivePhoneType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultActivePhoneType()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPreferredNetworkMode:I

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getModemId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    return v0
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 225
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 227
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v1, "invalid phone type to get Phone"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$000(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getPhoneTypeInGlobalNetworkMode()I
    .locals 2

    .prologue
    .line 323
    const-string v0, "persist.radio.ap.phonetype"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRIL()Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method initPhoneInstances()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 167
    .local v1, r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->createPhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneObj:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 171
    .end local v1           #r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :cond_1
    return-void
.end method

.method public isCdmaOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    iget v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    if-ne v3, v1, :cond_0

    .line 245
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 246
    .local v0, radio:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 250
    .end local v0           #radio:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isDualMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 254
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    if-ne v0, v3, :cond_2

    .line 255
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    .line 266
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public setPhoneProxy(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phoneProxy"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 206
    return-void
.end method

.method public setPhoneTypeInGlobalNetworkMode(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 328
    iput p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCurrentActivePhoneType:I

    .line 330
    const-string v0, "persist.radio.ap.phonetype"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method
