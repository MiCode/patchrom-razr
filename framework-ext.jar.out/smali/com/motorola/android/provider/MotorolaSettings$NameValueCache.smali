.class Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MotorolaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "versionSystemProperty"
    .parameter "uri"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValuesVersion:J

    .line 101
    iput-object p1, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 103
    return-void
.end method


# virtual methods
.method getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cr"
    .parameter "name"

    .prologue
    const-wide/16 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 111
    .local v8, newValuesVersion:J
    cmp-long v0, v8, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValuesVersion:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    iput-wide v8, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValuesVersion:J

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    const/4 v10, 0x0

    .line 117
    .local v10, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 119
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mUri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #value:Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v10

    .line 123
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v10       #value:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 125
    .local v7, e:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "MotrolaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 135
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #value:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_0
.end method
