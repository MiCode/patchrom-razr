.class public final Landroid/provider/BTMapUtils;
.super Ljava/lang/Object;
.source "BTMapUtils.java"


# static fields
.field public static final EVENT_DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field public static final EVENT_DELIVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field public static final EVENT_MESSAGE_DELETED:Ljava/lang/String; = "MessageDeleted"

.field public static final EVENT_MESSAGE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final EVENT_NEW_MESSAGE:Ljava/lang/String; = "NewMessage"

.field public static final EVENT_SEND_FAILURE:Ljava/lang/String; = "SendingFailure"

.field public static final EVENT_SEND_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field public static final EXTRA_SENDEVENT_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final EXTRA_SENDEVENT_FOLDER:Ljava/lang/String; = "folder"

.field public static final EXTRA_SENDEVENT_HANDLE:Ljava/lang/String; = "handle"

.field public static final EXTRA_SENDEVENT_MSGTYPE:Ljava/lang/String; = "msg_type"

.field public static final EXTRA_SENDEVENT_OLDFOLDER:Ljava/lang/String; = "old_folder"

.field public static final EXTRA_SENDEVENT_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_SETNOTIFREGISTER_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final INTENT_ACTION_DELETE_EMAIL_WARN:Ljava/lang/String; = "com.motorola.bt.del_email_warn"

.field public static final INTENT_ACTION_DELETE_MMS_WARN:Ljava/lang/String; = "com.motorola.bt.del_mms_warn"

.field public static final INTENT_ACTION_DELETE_SMS_WARN:Ljava/lang/String; = "com.motorola.bt.del_sms_warn"

.field public static final INTENT_ACTION_PUSHMESSAGE_EMAIL:Ljava/lang/String; = "com.motorola.bt.push_email_message"

.field public static final INTENT_ACTION_PUSHMESSAGE_MMS:Ljava/lang/String; = "com.motorola.contracts.messaging.intent.SEND_MMS"

.field public static final INTENT_ACTION_PUSHMESSAGE_SMS:Ljava/lang/String; = "com.motorola.contracts.messaging.intent.SEND_SMS"

.field public static final INTENT_ACTION_PUSH_MMS_WARN:Ljava/lang/String; = "com.motorola.bt.push_mms_warn"

.field public static final INTENT_ACTION_PUSH_SMS_WARN:Ljava/lang/String; = "com.motorola.bt.push_sms_warn"

.field public static final INTENT_ACTION_SENDEVENT:Ljava/lang/String; = "android.intent.action.BT_MAP_SEND_EVENT"

.field public static final INTENT_ACTION_SETNOTIFREGISTER:Ljava/lang/String; = "com.motorola.bt.BT_MAP_SET_NOTIF_REGISTER"

.field public static final INTENT_ACTION_UPDATE_INBOX:Ljava/lang/String; = "com.motorola.bt.update_inbox"

.field private static final LOG_DEV:Z = true

.field public static final PREF_EMAIL_DEL:Ljava/lang/String; = "pref_key_btmap_email_del"

.field public static final PREF_EMAIL_PUSH:Ljava/lang/String; = "pref_key_btmap_email_push"

.field public static final PREF_MMS_DEL:Ljava/lang/String; = "pref_key_btmap_mms_del"

.field public static final PREF_MMS_PUSH:Ljava/lang/String; = "pref_key_btmap_mms_push"

.field public static final PREF_NOTIFICATION:Ljava/lang/String; = "pref_key_btmap_event_notify"

.field public static final PREF_SMS_DEL:Ljava/lang/String; = "pref_key_btmap_sms_del"

.field public static final PREF_SMS_PUSH:Ljava/lang/String; = "pref_key_btmap_sms_push"

.field public static final PUSH_MESSAGE_THREAD_ID:J = -0x42L

.field public static final TAG:Ljava/lang/String; = "BTMapUtils"

.field public static final TELECOM_MSG:Ljava/lang/String; = "/telecom/msg"

.field public static final TYPE_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final TYPE_MMS:Ljava/lang/String; = "MMS"

.field public static final TYPE_SMS_CDMA:Ljava/lang/String; = "SMS_CDMA"

.field public static final TYPE_SMS_GSM:Ljava/lang/String; = "SMS_GSM"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderName(ZI)Ljava/lang/String;
    .locals 1
    .parameter "mms"
    .parameter "folder_int"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, folder:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 171
    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "inbox"

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "outbox"

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const-string v0, "drafts"

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    const-string/jumbo v0, "sent"

    goto :goto_0

    .line 150
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 152
    :pswitch_4
    const-string v0, "inbox"

    .line 153
    goto :goto_0

    .line 155
    :pswitch_5
    const-string v0, "outbox"

    .line 156
    goto :goto_0

    .line 158
    :pswitch_6
    const-string v0, "drafts"

    .line 159
    goto :goto_0

    .line 161
    :pswitch_7
    const-string/jumbo v0, "sent"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_8
    const-string v0, "queued"

    .line 165
    goto :goto_0

    .line 167
    :pswitch_9
    const-string v0, "failed"

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static getTypeFromHandle(J)Ljava/lang/String;
    .locals 2
    .parameter "handle"

    .prologue
    .line 198
    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-string v0, "MMS"

    goto :goto_0

    .line 203
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    const-string v0, "EMAIL"

    goto :goto_0

    .line 204
    :cond_2
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static isEventReportOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_btmap_event_notify"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "handle"
    .parameter "folder"
    .parameter "old_folder"
    .parameter "msg_type"

    .prologue
    .line 98
    const-string v1, "BTMapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT MAP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    .line 102
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    .line 103
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BT_MAP_SEND_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "handle"

    invoke-static {p2, p3, p6}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    const-string v1, "folder"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "old_folder"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "msg_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter
    .parameter "msg_type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 118
    .local v3, msg:Landroid/os/Bundle;
    const-string v4, "BTMapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT MAP : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "handle"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", folder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "folder"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", old folder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "old_folder"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msg type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3           #msg:Landroid/os/Bundle;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.BT_MAP_SEND_EVENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v4, "bundle"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    const-string v4, "msg_type"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    return-void
.end method

.method public static transformHandle(JLjava/lang/String;)J
    .locals 4
    .parameter "handle"
    .parameter "type"

    .prologue
    .line 180
    const-wide/16 v0, -0x1

    .line 181
    .local v0, msb:J
    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    .line 188
    :goto_0
    const/16 v2, 0x3c

    shl-long v2, v0, v2

    or-long/2addr p0, v2

    .line 191
    .end local p0
    :goto_1
    return-wide p0

    .line 182
    .restart local p0
    :cond_0
    const-string v2, "MMS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x2

    goto :goto_0

    .line 184
    :cond_2
    const-wide/16 p0, 0x0

    goto :goto_1
.end method

.method public static typeSms()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    const-string v0, "SMS_CDMA"

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SMS_GSM"

    goto :goto_0
.end method
