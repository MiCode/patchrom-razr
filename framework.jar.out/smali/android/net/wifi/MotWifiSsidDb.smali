.class public Landroid/net/wifi/MotWifiSsidDb;
.super Ljava/lang/Object;
.source "MotWifiSsidDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final WIFI_PNO_DATABASE_CREATE:Ljava/lang/String; = "create table MotWifiSsidDbTable (id integer primary key autoincrement,ssid text not null,bssid text not null,timestamp long,count long);"

.field private static final WIFI_PNO_DATABASE_NAME:Ljava/lang/String; = "MotWifiSsidDb"

.field private static final WIFI_PNO_DATABASE_TABLE:Ljava/lang/String; = "MotWifiSsidDbTable"

.field private static final WIFI_PNO_DATABASE_VERSION:I = 0x1

.field private static final WIFI_SSID_DB_LOG_TAG:Ljava/lang/String; = "PNO-DB"

.field public static final WIFI_SSID_DB_TBL_BSSID:Ljava/lang/String; = "bssid"

.field public static final WIFI_SSID_DB_TBL_COUNT:Ljava/lang/String; = "count"

.field public static final WIFI_SSID_DB_TBL_ROWID:Ljava/lang/String; = "id"

.field public static final WIFI_SSID_DB_TBL_SSID:Ljava/lang/String; = "ssid"

.field public static final WIFI_SSID_DB_TBL_TSTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private DBHelper:Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/MotWifiSsidDb;->dbEnable:Z

    .line 69
    iput-object p1, p0, Landroid/net/wifi/MotWifiSsidDb;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    iget-object v1, p0, Landroid/net/wifi/MotWifiSsidDb;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->DBHelper:Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "enable"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p2, p0, Landroid/net/wifi/MotWifiSsidDb;->dbEnable:Z

    .line 62
    iput-object p1, p0, Landroid/net/wifi/MotWifiSsidDb;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    iget-object v1, p0, Landroid/net/wifi/MotWifiSsidDb;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->DBHelper:Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    .line 64
    return-void
.end method

.method private checkSsidInTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, ret:Z
    const/4 v0, 0x0

    .line 243
    .local v0, index:I
    invoke-direct {p0, p1}, Landroid/net/wifi/MotWifiSsidDb;->getRecords(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 244
    .local v1, mCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    const-string/jumbo v5, "ssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, tempSsid:Ljava/lang/String;
    const-string v5, "bssid"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, tempBssid:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    const/4 v2, 0x1

    .line 269
    .end local v3           #tempBssid:Ljava/lang/String;
    .end local v4           #tempSsid:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_1
    return v2

    .line 265
    .restart local v3       #tempBssid:Ljava/lang/String;
    .restart local v4       #tempSsid:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private close()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->DBHelper:Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    invoke-virtual {v0}, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;->close()V

    .line 121
    return-void
.end method

.method private getAllSortedRecords()Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 309
    const/4 v10, 0x0

    .line 312
    .local v10, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MotWifiSsidDbTable"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ssid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "bssid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "timestamp"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "count"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "count DESC, timestamp DESC"

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 336
    :goto_0
    return-object v10

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getRecords(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "ssid"

    .prologue
    .line 278
    const/4 v10, 0x0

    .line 281
    .local v10, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MotWifiSsidDbTable"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ssid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "bssid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "timestamp"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "count"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ssid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 304
    :goto_0
    return-object v10

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getRowId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 378
    const/4 v2, -0x1

    .line 379
    .local v2, rowId:I
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->getUniqueRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 380
    .local v1, mCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, index:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, temp:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 390
    .end local v0           #index:I
    .end local v3           #temp:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_1
    return v2
.end method

.method private getSsidCount(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 217
    const-wide/16 v0, 0x0

    .line 220
    .local v0, count:J
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->getUniqueRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 221
    .local v3, mCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 226
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    const-string v4, "count"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, index:I
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    .line 230
    .end local v2           #index:I
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1
    return-wide v0
.end method

.method private getUniqueRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 341
    const/4 v10, 0x0

    .line 344
    .local v10, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "MotWifiSsidDbTable"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ssid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "bssid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "timestamp"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "count"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ssid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AND"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bssid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 363
    if-eqz v10, :cond_0

    .line 372
    :cond_0
    :goto_0
    return-object v10

    .line 367
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private open()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x1

    .line 105
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/MotWifiSsidDb;->DBHelper:Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;

    invoke-virtual {v2}, Landroid/net/wifi/MotWifiSsidDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/database/SQLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 182
    .local v3, ret:Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, args:Landroid/content/ContentValues;
    const-string/jumbo v6, "ssid"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v6, "bssid"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->getSsidCount(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v1, v6, v8

    .line 191
    .local v1, count:J
    const-string v6, "count"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->getRowId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 197
    .local v5, rowId:I
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "MotWifiSsidDbTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 203
    .local v4, row:I
    if-lez v4, :cond_0

    .line 204
    const/4 v3, 0x1

    .line 212
    .end local v4           #row:I
    :cond_0
    :goto_0
    return v3

    .line 206
    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public deleteSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 399
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/MotWifiSsidDb;->getRowId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, rowId:I
    iget-object v1, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MotWifiSsidDbTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteSsidInDb(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    .line 494
    const/4 v3, 0x1

    .line 495
    .local v3, ret:Z
    const/4 v1, 0x0

    .local v1, index:I
    const/4 v4, -0x1

    .line 496
    .local v4, rowId:I
    const/4 v0, 0x0

    .line 499
    .local v0, fs:[Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->open()Z

    move-result v7

    if-nez v7, :cond_0

    .line 500
    const/4 v7, 0x0

    .line 533
    :goto_0
    return v7

    .line 503
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/MotWifiSsidDb;->getRecords(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 504
    .local v2, mCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 506
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 508
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 511
    const-string/jumbo v7, "ssid"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 512
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, tempSsid:Ljava/lang/String;
    const-string v7, "bssid"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 515
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, tempBssid:Ljava/lang/String;
    invoke-virtual {p0, v6, v5}, Landroid/net/wifi/MotWifiSsidDb;->deleteSsid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 522
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 525
    .end local v5           #tempBssid:Ljava/lang/String;
    .end local v6           #tempSsid:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 531
    :goto_2
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->close()V

    move v7, v3

    .line 533
    goto :goto_0

    .line 527
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getOrderedSsidList()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 434
    const/4 v2, 0x0

    .line 435
    .local v2, fs:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 438
    .local v0, count:I
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->open()Z

    move-result v13

    if-nez v13, :cond_0

    move-object v3, v2

    .line 488
    .end local v2           #fs:[Ljava/lang/String;
    .local v3, fs:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 443
    .end local v3           #fs:[Ljava/lang/String;
    .restart local v2       #fs:[Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->getAllSortedRecords()Landroid/database/Cursor;

    move-result-object v6

    .line 444
    .local v6, mCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 455
    new-array v2, v0, [Ljava/lang/String;

    .line 458
    const-string/jumbo v13, "ssid"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 459
    .local v5, index:I
    const-string v13, "count"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 460
    .local v1, countIdx:I
    const-string/jumbo v13, "timestamp"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 463
    .local v10, timeIdx:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 465
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, temp:Ljava/lang/String;
    aput-object v9, v2, v4

    .line 469
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 470
    .local v11, val:J
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 480
    .local v7, stamp:J
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 482
    .end local v7           #stamp:J
    .end local v9           #temp:Ljava/lang/String;
    .end local v11           #val:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    .end local v1           #countIdx:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v10           #timeIdx:I
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->close()V

    move-object v3, v2

    .line 488
    .end local v2           #fs:[Ljava/lang/String;
    .restart local v3       #fs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public getSsidCount()J
    .locals 6

    .prologue
    .line 409
    const-wide/16 v0, 0x0

    .line 411
    .local v0, count:J
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->open()Z

    move-result v5

    if-nez v5, :cond_0

    move-wide v2, v0

    .line 428
    .end local v0           #count:J
    .local v2, count:J
    :goto_0
    return-wide v2

    .line 415
    .end local v2           #count:J
    .restart local v0       #count:J
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->getAllSortedRecords()Landroid/database/Cursor;

    move-result-object v4

    .line 416
    .local v4, mCursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 418
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v0, v5

    .line 419
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->close()V

    move-wide v2, v0

    .line 428
    .end local v0           #count:J
    .restart local v2       #count:J
    goto :goto_0
.end method

.method public insertSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    .line 130
    const/4 v6, 0x0

    .line 133
    .local v6, ret:Z
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->open()Z

    move-result v12

    if-nez v12, :cond_0

    move v7, v6

    .line 172
    .end local v6           #ret:Z
    .local v7, ret:I
    :goto_0
    return v7

    .line 137
    .end local v7           #ret:I
    .restart local v6       #ret:Z
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/net/wifi/MotWifiSsidDb;->checkSsidInTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 141
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v4, initialValues:Landroid/content/ContentValues;
    const-string/jumbo v12, "ssid"

    move-object/from16 v0, p1

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v12, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 148
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 149
    .local v5, now:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 152
    .local v10, timestamp:J
    const-string/jumbo v12, "timestamp"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-wide/16 v2, 0x1

    .line 155
    .local v2, count:J
    const-string v12, "count"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    iget-object v12, p0, Landroid/net/wifi/MotWifiSsidDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "MotWifiSsidDbTable"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 161
    .local v8, rowId:J
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-lez v12, :cond_1

    const/4 v6, 0x1

    .line 170
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #count:J
    .end local v4           #initialValues:Landroid/content/ContentValues;
    .end local v5           #now:Ljava/util/Date;
    .end local v8           #rowId:J
    .end local v10           #timestamp:J
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/net/wifi/MotWifiSsidDb;->close()V

    move v7, v6

    .line 172
    .restart local v7       #ret:I
    goto :goto_0

    .line 166
    .end local v7           #ret:I
    :cond_2
    invoke-direct/range {p0 .. p2}, Landroid/net/wifi/MotWifiSsidDb;->updateSsid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_1
.end method
