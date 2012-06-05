.class Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation


# instance fields
.field bluetoothEnable:Z

.field browserEnabled:Z

.field cameraEnabled:Z

.field consumerEmailEnabled:Z

.field deviceEncryptionEnabled:Z

.field deviceEncryptionRequired:Z

.field final info:Lcom/motorola/motepm/MotDeviceAdminInfo;

.field internetSharingEnabled:Z

.field mIntentDisabled:Z

.field manualDatasyncinRoaming:Z

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordComplexity:I

.field minimumPasswordLength:I

.field passwordExpirationPeriod:I

.field passwordHistoryLength:I

.field passwordQuality:I

.field passwordRecoveryEnabled:Z

.field pop3imap4EmailEnabled:Z

.field sdCardEnabled:Z

.field simplePasswordEnabled:Z

.field storageCardEncryptionRequired:Z

.field textMessageEnabled:Z

.field wifiEnabled:Z


# direct methods
.method constructor <init>(Lcom/motorola/motepm/MotDeviceAdminInfo;)V
    .locals 4
    .parameter "_info"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->mIntentDisabled:Z

    .line 221
    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 222
    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 223
    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 225
    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 227
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    .line 230
    iput v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 231
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    .line 233
    const v0, 0x7fffffff

    iput v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    .line 237
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    .line 238
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    .line 239
    iput-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    .line 243
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    .line 244
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    .line 245
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    .line 249
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    .line 250
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    .line 253
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    .line 256
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    .line 260
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    .line 264
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    .line 268
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    .line 276
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    .line 277
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 560
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "uid="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 561
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "policies:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    .line 563
    .local v1, pols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_0

    .line 564
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Lcom/motorola/motepm/MotDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordQuality=0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string v2, " minimumPasswordLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 572
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "minimumPasswordComplexity="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 574
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "maximumTimeToUnlock="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget-wide v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 576
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 579
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordHistoryLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 581
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordRecoveryEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 582
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 583
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "passwordExpirationPeriod="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 587
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "deviceEncryptionEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 589
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "deviceEncryptionRequired="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 591
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "storageCardEncryptionRequired="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 595
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "wifiAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cameraAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 599
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "sdCardAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 603
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "browserAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 605
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "textMessageAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "InternetSharingAllowed ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 613
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "simplePasswordEnabled ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "bluetoothEnable ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 621
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pop3imap4EmailEnabled ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 625
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "consumerEmailEnabled ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-boolean v2, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 628
    return-void
.end method

.method getUid()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 448
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v4, :cond_28

    if-ne v2, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_28

    .line 449
    :cond_1
    if-eq v2, v9, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, tag:Ljava/lang/String;
    const-string v3, "policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v3, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 549
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 455
    :cond_2
    const-string v3, "password-quality"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    goto :goto_1

    .line 458
    :cond_3
    const-string v3, "min-password-length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    goto :goto_1

    .line 461
    :cond_4
    const-string v3, "min-password-complexity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    goto :goto_1

    .line 464
    :cond_5
    const-string v3, "max-time-to-unlock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_1

    .line 467
    :cond_6
    const-string v3, "max-failed-password-wipe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 468
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_1

    .line 471
    :cond_7
    const-string v3, "password-history-length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 472
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_1

    .line 474
    :cond_8
    const-string v3, "password-recovery-enabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 475
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    .line 477
    :cond_a
    const-string v3, "password-expiration-period"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 478
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    goto/16 :goto_1

    .line 482
    :cond_b
    const-string v3, "device-encryption-enabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 483
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    goto/16 :goto_1

    :cond_c
    move v3, v5

    goto :goto_3

    .line 485
    :cond_d
    const-string v3, "device-encryption-required"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 486
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    goto/16 :goto_1

    :cond_e
    move v3, v5

    goto :goto_4

    .line 488
    :cond_f
    const-string v3, "storage-card-encryption-required"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 489
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_5
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    goto/16 :goto_1

    :cond_10
    move v3, v5

    goto :goto_5

    .line 493
    :cond_11
    const-string v3, "manual-data-sync"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 494
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    goto/16 :goto_1

    :cond_12
    move v3, v5

    goto :goto_6

    .line 498
    :cond_13
    const-string v3, "wifi-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 499
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    goto/16 :goto_1

    :cond_14
    move v3, v5

    goto :goto_7

    .line 501
    :cond_15
    const-string v3, "camera-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 502
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    :goto_8
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    goto/16 :goto_1

    :cond_16
    move v3, v5

    goto :goto_8

    .line 504
    :cond_17
    const-string v3, "sd-card-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 505
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_18

    move v3, v4

    :goto_9
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    goto/16 :goto_1

    :cond_18
    move v3, v5

    goto :goto_9

    .line 509
    :cond_19
    const-string v3, "browser-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 510
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v4

    :goto_a
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    goto/16 :goto_1

    :cond_1a
    move v3, v5

    goto :goto_a

    .line 512
    :cond_1b
    const-string v3, "text-message-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 513
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v4

    :goto_b
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    goto/16 :goto_1

    :cond_1c
    move v3, v5

    goto :goto_b

    .line 517
    :cond_1d
    const-string v3, "internet-sharing-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 518
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    :goto_c
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    goto/16 :goto_1

    :cond_1e
    move v3, v5

    goto :goto_c

    .line 523
    :cond_1f
    const-string v3, "simple-password-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 524
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_20

    move v3, v4

    :goto_d
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    goto/16 :goto_1

    :cond_20
    move v3, v5

    goto :goto_d

    .line 529
    :cond_21
    const-string v3, "bluetooth-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 530
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v4

    :goto_e
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    goto/16 :goto_1

    :cond_22
    move v3, v5

    goto :goto_e

    .line 535
    :cond_23
    const-string v3, "pop3-imap4-email-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 536
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    goto/16 :goto_1

    :cond_24
    move v3, v5

    goto :goto_f

    .line 541
    :cond_25
    const-string v3, "consumer-email-allowed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 542
    const-string v3, "value"

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_26

    move v3, v4

    :goto_10
    iput-boolean v3, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    goto/16 :goto_1

    :cond_26
    move v3, v5

    goto :goto_10

    .line 547
    :cond_27
    const-string v3, "MotDevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown admin tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 551
    .end local v1           #tag:Ljava/lang/String;
    :cond_28
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 293
    const-string v0, "policies"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    iget-object v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/motepm/MotDeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 295
    const-string v0, "policies"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "password-quality"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    const-string v0, "password-quality"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-lez v0, :cond_0

    .line 301
    const-string v0, "min-password-length"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    const-string v0, "min-password-length"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_0
    iget-wide v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 307
    const-string v0, "max-time-to-unlock"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const-string v0, "value"

    iget-wide v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    const-string v0, "max-time-to-unlock"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_1
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "max-failed-password-wipe"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    const-string v0, "max-failed-password-wipe"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    :cond_2
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_3

    .line 319
    const-string v0, "password-history-length"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const-string v0, "password-history-length"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordRecoveryEnabled:Z

    if-ne v0, v6, :cond_4

    .line 324
    const-string v0, "password-recovery-enabled"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const-string v0, "password-recovery-enabled"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    :cond_4
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_5

    .line 330
    const-string v0, "password-expiration-period"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->passwordExpirationPeriod:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string v0, "password-expiration-period"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionEnabled:Z

    if-ne v0, v6, :cond_6

    .line 337
    const-string v0, "device-encryption-enabled"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    const-string v0, "device-encryption-enabled"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    :cond_6
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->deviceEncryptionRequired:Z

    if-ne v0, v6, :cond_7

    .line 343
    const-string v0, "device-encryption-required"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const-string v0, "device-encryption-required"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    :cond_7
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->storageCardEncryptionRequired:Z

    if-ne v0, v6, :cond_8

    .line 349
    const-string v0, "storage-card-encryption-required"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    const-string v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const-string v0, "storage-card-encryption-required"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    :cond_8
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->manualDatasyncinRoaming:Z

    if-ne v0, v6, :cond_9

    .line 356
    const-string v0, "manual-data-sync"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    const-string v0, "value"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string v0, "manual-data-sync"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    :cond_9
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->wifiEnabled:Z

    if-nez v0, :cond_a

    .line 364
    const-string v0, "wifi-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string v0, "wifi-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_a
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->cameraEnabled:Z

    if-nez v0, :cond_b

    .line 369
    const-string v0, "camera-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    const-string v0, "camera-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    :cond_b
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->sdCardEnabled:Z

    if-nez v0, :cond_c

    .line 374
    const-string v0, "sd-card-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string v0, "sd-card-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    :cond_c
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->browserEnabled:Z

    if-nez v0, :cond_d

    .line 382
    const-string v0, "browser-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    const-string v0, "browser-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    :cond_d
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->textMessageEnabled:Z

    if-nez v0, :cond_e

    .line 387
    const-string v0, "text-message-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const-string v0, "text-message-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    :cond_e
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->internetSharingEnabled:Z

    if-nez v0, :cond_f

    .line 394
    const-string v0, "internet-sharing-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    const-string v0, "internet-sharing-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    :cond_f
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-nez v0, :cond_10

    .line 402
    const-string v0, "simple-password-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    const-string v0, "simple-password-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    :cond_10
    iget v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    if-lez v0, :cond_11

    .line 411
    const-string v0, "min-password-complexity"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const-string v0, "value"

    iget v1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->minimumPasswordComplexity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const-string v0, "min-password-complexity"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    :cond_11
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->bluetoothEnable:Z

    if-nez v0, :cond_12

    .line 417
    const-string v0, "bluetooth-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 418
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const-string v0, "bluetooth-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    :cond_12
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->pop3imap4EmailEnabled:Z

    if-nez v0, :cond_13

    .line 424
    const-string v0, "pop3-imap4-email-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v0, "pop3-imap4-email-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    :cond_13
    iget-boolean v0, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->consumerEmailEnabled:Z

    if-nez v0, :cond_14

    .line 431
    const-string v0, "consumer-email-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string v0, "value"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v0, "consumer-email-allowed"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    :cond_14
    return-void
.end method
