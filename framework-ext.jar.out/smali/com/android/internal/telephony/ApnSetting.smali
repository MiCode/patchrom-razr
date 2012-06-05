.class public Lcom/android/internal/telephony/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public apnclass:I

.field public final authType:I

.field public final bearer:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field mDunTraffic:Z

.field mIsDedicatedHiPri:Z

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public mtuSize:I

.field public final numeric:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public timer:I

.field public final types:[Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "carrierEnabled"
    .parameter "bearer"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ApnSetting;->mIsDedicatedHiPri:Z

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ApnSetting;->mDunTraffic:Z

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 98
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 104
    iput-object p8, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 105
    iput-object p9, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 106
    iput-object p10, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 107
    iput-object p11, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 108
    iput p12, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 109
    iput-object p13, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 110
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 112
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    .line 113
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ApnSetting;->timer:I

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ApnSetting;->apnclass:I

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    .line 125
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIZZ)V
    .locals 1
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "carrierEnabled"
    .parameter "bearer"
    .parameter "timer"
    .parameter "apnClass"
    .parameter "mtuSize"
    .parameter "isDedicatedHiPri"
    .parameter "dunTraffic"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p17}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 79
    move/from16 v0, p18

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->timer:I

    .line 80
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->apnclass:I

    .line 82
    move/from16 v0, p20

    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->mtuSize:I

    .line 85
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->mIsDedicatedHiPri:Z

    .line 86
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->mDunTraffic:Z

    .line 88
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;
    .locals 22
    .parameter "data"

    .prologue
    .line 151
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    .line 155
    :cond_0
    const-string v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    const/16 v21, 0x2

    .line 157
    .local v21, version:I
    const-string v1, "^\\[ApnSettingV2\\]\\s*"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    :goto_1
    const-string v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 163
    .local v19, a:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 164
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    .end local v19           #a:[Ljava/lang/String;
    .end local v21           #version:I
    :cond_1
    const/16 v21, 0x1

    .restart local v21       #version:I
    goto :goto_1

    .line 169
    .restart local v19       #a:[Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 178
    .local v13, authType:I
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 179
    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 180
    .local v14, typeArray:[Ljava/lang/String;
    const/16 v1, 0xd

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, -0xd

    move-object/from16 v0, v19

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    const-string v15, "IP"

    .line 182
    .local v15, protocol:Ljava/lang/String;
    const-string v16, "IP"

    .line 183
    .local v16, roamingProtocol:Ljava/lang/String;
    const/16 v17, 0x1

    .line 184
    .local v17, carrierEnabled:Z
    const/16 v18, 0x0

    .line 200
    .local v18, bearer:I
    :goto_3
    new-instance v1, Lcom/android/internal/telephony/ApnSetting;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    const/4 v5, 0x1

    aget-object v5, v19, v5

    const/4 v6, 0x2

    aget-object v6, v19, v6

    const/4 v7, 0x3

    aget-object v7, v19, v7

    const/4 v8, 0x7

    aget-object v8, v19, v8

    const/16 v9, 0x8

    aget-object v9, v19, v9

    const/16 v10, 0x9

    aget-object v10, v19, v10

    const/4 v11, 0x4

    aget-object v11, v19, v11

    const/4 v12, 0x5

    aget-object v12, v19, v12

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 170
    .end local v13           #authType:I
    .end local v14           #typeArray:[Ljava/lang/String;
    .end local v15           #protocol:Ljava/lang/String;
    .end local v16           #roamingProtocol:Ljava/lang/String;
    .end local v17           #carrierEnabled:Z
    .end local v18           #bearer:I
    :catch_0
    move-exception v20

    .line 171
    .local v20, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13       #authType:I
    goto :goto_2

    .line 186
    .end local v20           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, v19

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_4

    .line 187
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 189
    :cond_4
    const/16 v1, 0xd

    aget-object v1, v19, v1

    const-string v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 190
    .restart local v14       #typeArray:[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v19, v1

    .line 191
    .restart local v15       #protocol:Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v19, v1

    .line 193
    .restart local v16       #roamingProtocol:Ljava/lang/String;
    const/16 v1, 0x10

    :try_start_1
    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 197
    .restart local v17       #carrierEnabled:Z
    :goto_4
    const/16 v1, 0x11

    aget-object v1, v19, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .restart local v18       #bearer:I
    goto :goto_3

    .line 194
    .end local v17           #carrierEnabled:Z
    .end local v18           #bearer:I
    :catch_1
    move-exception v20

    .line 195
    .restart local v20       #e:Ljava/lang/Exception;
    const/16 v17, 0x1

    .restart local v17       #carrierEnabled:Z
    goto :goto_4
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    const-string v6, "entitle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "corpsync"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 237
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 274
    .end local v3           #t:Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 236
    .restart local v3       #t:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #t:Ljava/lang/String;
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->mDunTraffic:Z

    if-eqz v6, :cond_4

    const-string v6, "dun"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 248
    .restart local v3       #t:Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 255
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #t:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 259
    .restart local v3       #t:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->mIsDedicatedHiPri:Z

    if-eqz v6, :cond_6

    .line 260
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    move v4, v5

    .line 261
    goto :goto_1

    .line 267
    :cond_6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "hipri"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move v4, v5

    .line 270
    goto :goto_1

    .line 255
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 280
    instance-of v3, p1, Lcom/android/internal/telephony/ApnSetting;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 312
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    const/4 v2, 0x0

    .local v2, result:Z
    move-object v0, p1

    .line 282
    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 283
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->apnclass:I

    iget v4, v0, Lcom/android/internal/telephony/ApnSetting;->apnclass:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    iget-boolean v4, v0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    iget v4, v0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->timer:I

    iget v4, v0, Lcom/android/internal/telephony/ApnSetting;->timer:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    const/4 v2, 0x1

    .line 298
    :cond_2
    if-eqz v2, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 301
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 303
    const/4 v2, 0x0

    .line 304
    goto/16 :goto_0

    .line 301
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1           #i:I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 220
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
