.class public final Lcom/motorola/android/locationproxy/settings/Settings$Supl;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Supl"
.end annotation


# static fields
.field public static final ACTION_HSLP_ADDR_CHANGED:Ljava/lang/String; = "action_hslp_addr_changed"

.field public static final ACTION_SUPL_APN_CHANGED:Ljava/lang/String; = "action_supl_apn_changed"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final HSLP_ADDRESS:Ljava/lang/String; = "hslp_address"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SUPL_ALT_APNS:Ljava/lang/String; = "supl_alt_apns"

.field public static final SUPL_CARRIER_SETTINGS_ENABLED:Ljava/lang/String; = "supl_carrier_settings_enabled"

.field public static final SUPL_DM_ADDR_TYPE:Ljava/lang/String; = "supl_dm_addr_type"

.field public static final SUPL_DM_APP_ID:Ljava/lang/String; = "supl_dm_app_id"

.field public static final SUPL_DM_ENABLED:Ljava/lang/String; = "supl_dm_enabled"

.field public static final SUPL_DM_NAME:Ljava/lang/String; = "supl_dm_name"

.field public static final SUPL_DM_PROVIDER_ID:Ljava/lang/String; = "supl_dm_provider_id"

.field public static final SUPL_PREF_APN:Ljava/lang/String; = "supl_pref_apn"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 115
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 114
    .restart local p2
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 51
    const-class v9, Lcom/motorola/android/locationproxy/settings/Settings$Supl;

    monitor-enter v9

    const/4 v8, 0x0

    .line 52
    .local v8, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 61
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :cond_1
    :goto_0
    monitor-exit v9

    return-object v8

    .line 57
    :catch_0
    move-exception v7

    .line 59
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "LocationProxySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 51
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 61
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    sget-object v0, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isFeatureEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3
    .parameter "cr"
    .parameter "feature"

    .prologue
    const/4 v1, 0x0

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 76
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "value"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v4, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 83
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "LocationProxySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t set key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
