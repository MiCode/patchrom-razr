.class public Lcom/motorola/android/server/checkin/CheckinProvider;
.super Landroid/content/ContentProvider;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;,
        Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;
    }
.end annotation


# static fields
.field private static final CHECKIN_INTENT:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.CHECKIN"

.field private static final CHECKIN_REQUEST_ID:Ljava/lang/String; = "com.motorola.blur.service.blur.checkin.request_id"

.field private static final CRASH_LIMIT:I = 0x19

.field private static final CRASH_SIZE:I = 0x4000

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "checkin_mot.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DELETE_COUNT:I = 0x64

.field private static final EVENT_LIMIT:I = 0x3e8

.field private static final EVENT_SIZE:I = 0x2000

.field private static final EVENT_TAGS:Ljava/lang/String; = "."

.field private static final PROCESS_TAGS:Ljava/lang/String; = "."

.field private static final PROPERTIES_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_CHECKIN_PROPERTIES"

.field private static final TAG:Ljava/lang/String; = "CheckinProvider"


# instance fields
.field private _allEventTagsAllowed:Z

.field private _allProcessTagsAllowed:Z

.field private volatile _checkinEventTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _checkinProcessTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _eventLimit:I

.field private final _eventLock:Ljava/lang/Object;

.field private _logLevel:I

.field private _requestedCheckin:Z

.field private _storedEvents:I

.field private mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mStatsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 120
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    .line 121
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I

    .line 125
    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    .line 126
    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    .line 617
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/server/checkin/CheckinProvider;[Landroid/content/ContentValues;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvents([Landroid/content/ContentValues;I)V

    return-void
.end method

.method private checkPermissions(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 991
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 992
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 996
    .local v0, table:Ljava/lang/String;
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_CHECKIN_PROPERTIES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Cannot access checkin properties"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1001
    :cond_1
    return-void
.end method

.method private deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 957
    iget-object v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v4

    .line 959
    const/4 v0, 0x0

    .line 960
    .local v0, count:I
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 961
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "events"

    invoke-virtual {v1, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 962
    iget v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 963
    iget v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    if-gez v5, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 964
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :try_start_1
    monitor-exit v4

    .line 969
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v0

    .line 966
    .restart local v0       #count:I
    :catch_0
    move-exception v2

    .line 967
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "CheckinProvider"

    const-string v6, "deleteFromEvents"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v5

    iput v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 969
    monitor-exit v4

    move v0, v3

    goto :goto_0

    .line 971
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getEventCount()I
    .locals 7

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 261
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT COUNT (_id) FROM events"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 262
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 263
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 274
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    .line 276
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return v5

    .line 265
    :catch_0
    move-exception v4

    .line 266
    .local v4, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v5, "CheckinProvider"

    const-string v6, "SQLiteDiskIOException:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v4           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_1
    const/4 v1, 0x0

    .line 276
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    .local v0, ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_2
    const-string v5, "CheckinProvider"

    const-string v6, "SQLiteDatabaseCorruptException:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 269
    .end local v0           #ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_2
    move-exception v3

    .line 270
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v5, "CheckinProvider"

    const-string v6, "SQLiteException:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 271
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v3

    .line 272
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    const-string v5, "CheckinProvider"

    const-string v6, "getEventCount"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_2
    throw v5

    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private initEventCount()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initTags(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .parameter "commaSeparatedTags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, beginEscape:Z
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v4, tag:Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 242
    :goto_0
    return-object v3

    .line 221
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 224
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 221
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    :cond_1
    if-eqz v0, :cond_2

    .line 228
    const/4 v0, 0x0

    .line 229
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 231
    :cond_2
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_3

    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #tag:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v4       #tag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 240
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private insertCrash(Landroid/content/ContentValues;)J
    .locals 10
    .parameter "values"

    .prologue
    .line 861
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 862
    .local v0, crashSize:I
    const/16 v5, 0x4000

    if-le v0, v5, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_TRUNCATED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 866
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v0           #crashSize:I
    :catch_0
    move-exception v4

    .line 888
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "CheckinProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting crash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-wide/16 v2, -0x1

    .end local v4           #t:Ljava/lang/Throwable;
    :goto_0
    return-wide v2

    .line 870
    .restart local v0       #crashSize:I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/provider/Checkin$Stats$Tag;->CRASHES_REPORTED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 874
    iget-object v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 875
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 876
    .local v2, id:J
    const-string v5, "DELETE FROM crashes WHERE _id IN (SELECT _id FROM crashes ORDER BY _id DESC LIMIT -1 OFFSET 24)"

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    const-string v5, "crashes"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 885
    goto :goto_0
.end method

.method private insertEvent(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 9
    .parameter "values"
    .parameter "queryType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 483
    const-string v2, "tag"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, tag:Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, value:Ljava/lang/String;
    const-string v2, "date"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    :cond_0
    const-string v2, "eventTags"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    iget-boolean v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 506
    const-string v2, "CheckinProvider"

    const-string v3, "insertEvents Event tag not allowed: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-wide v5

    .line 509
    :cond_1
    const-string v2, "processTags"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    iget-boolean v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    const-string v2, "CheckinProvider"

    const-string v3, "insertEvents Process tag not allowed: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v2, p1}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueInsert(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private insertEvents([Landroid/content/ContentValues;I)V
    .locals 17
    .parameter "events"
    .parameter "numEvents"

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 532
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 533
    .local v1, askForCheckin:Z
    const/4 v6, 0x0

    .line 534
    .local v6, eventsDropped:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v12

    .line 537
    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    add-int v11, v11, p2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    if-lt v11, v13, :cond_2

    .line 539
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 542
    .local v5, eventsCurrent:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DELETE FROM events WHERE _id IN (SELECT _id FROM events ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I

    add-int/lit8 v13, v13, -0x64

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    .line 551
    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    sub-int v6, v5, v11

    .line 553
    :cond_1
    const/4 v1, 0x1

    .line 555
    const-string v11, "CheckinProvider"

    const-string v13, "insertEvents removed events %d left"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 573
    .end local v5           #eventsCurrent:I
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 574
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_4

    .line 575
    const-string v11, "events"

    const/4 v13, 0x0

    aget-object v14, p1, v7

    invoke-virtual {v3, v11, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 576
    .local v9, rowId:J
    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-ltz v11, :cond_3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 574
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 557
    .end local v7           #i:I
    .end local v9           #rowId:J
    :catch_0
    move-exception v8

    .line 558
    .local v8, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteDiskIOException:"

    invoke-static {v11, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 600
    .end local v8           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 560
    :catch_1
    move-exception v2

    .line 561
    .local v2, ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_3
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteDatabaseCorruptException:"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 563
    .end local v2           #ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_2
    move-exception v4

    .line 564
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteException:"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_0

    .line 566
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v4

    .line 568
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "CheckinProvider"

    const-string v13, "Exception:"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 578
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #i:I
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 594
    .end local v7           #i:I
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 600
    :goto_3
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 602
    if-eqz v6, :cond_5

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/motorola/android/provider/Checkin$Stats$Tag;->EVENTS_DROPPED:Lcom/motorola/android/provider/Checkin$Stats$Tag;

    const/4 v13, 0x0

    int-to-double v14, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/motorola/android/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Lcom/motorola/android/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 606
    :cond_5
    if-eqz v1, :cond_6

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->requestCheckin()V

    .line 609
    :cond_6
    return-void

    .line 579
    :catch_4
    move-exception v8

    .line 580
    .restart local v8       #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_7
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteDiskIOException:"

    invoke-static {v11, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 582
    .end local v8           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v2

    .line 583
    .restart local v2       #ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteDatabaseCorruptException:"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 585
    .end local v2           #ce:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_6
    move-exception v4

    .line 586
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v11, "CheckinProvider"

    const-string v13, "SQLiteException:"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 588
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catch_7
    move-exception v4

    .line 590
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "CheckinProvider"

    const-string v13, "Exception:"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    goto :goto_2

    .line 595
    .end local v4           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 597
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "CheckinProvider"

    const-string v13, "Exception:"

    invoke-static {v11, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getEventCount()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private insertStats(Landroid/content/ContentValues;)J
    .locals 21
    .parameter "values"

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 779
    :try_start_0
    const-string v2, "tag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 780
    .local v19, tag:Ljava/lang/String;
    if-nez v19, :cond_0

    .line 781
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag required:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v19           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 784
    .restart local v19       #tag:Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    .line 787
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 788
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const-string v3, "stats"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sum"

    aput-object v6, v4, v5

    const-string v5, "tag=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v19, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 799
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 801
    :cond_1
    const-string v2, "stats"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v14

    .line 849
    if-eqz v13, :cond_2

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 844
    :goto_0
    return-wide v14

    .line 804
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 805
    .local v14, id:J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 806
    .local v11, count:I
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    .line 808
    .local v16, sum:D
    const-string v2, "count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 809
    .local v12, countAdd:Ljava/lang/Integer;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v11, v2

    .line 811
    :cond_4
    const-string v2, "sum"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    .line 812
    .local v18, sumAdd:Ljava/lang/Double;
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v16, v16, v2

    .line 814
    :cond_5
    if-gtz v11, :cond_8

    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_8

    .line 816
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 818
    :try_start_4
    const-string v2, "stats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/android/provider/Checkin$Stats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 824
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 826
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 828
    const-wide/16 v14, -0x1

    .line 849
    .end local v14           #id:J
    if-eqz v13, :cond_6

    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_6
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 826
    .restart local v14       #id:J
    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 849
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #count:I
    .end local v12           #countAdd:Ljava/lang/Integer;
    .end local v14           #id:J
    .end local v16           #sum:D
    .end local v18           #sumAdd:Ljava/lang/Double;
    :catchall_2
    move-exception v2

    if-eqz v13, :cond_7

    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 830
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #count:I
    .restart local v12       #countAdd:Ljava/lang/Integer;
    .restart local v14       #id:J
    .restart local v16       #sum:D
    .restart local v18       #sumAdd:Ljava/lang/Double;
    :cond_8
    :try_start_9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 832
    if-eqz v12, :cond_9

    :try_start_a
    const-string v2, "count"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    :cond_9
    const-string v2, "stats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    if-eqz v18, :cond_a

    const-string v2, "sum"

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 837
    :cond_a
    const-string v2, "stats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 840
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 842
    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 849
    if-eqz v13, :cond_b

    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 844
    :cond_b
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 842
    :catchall_3
    move-exception v2

    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method

.method private readAndSetProperties()V
    .locals 17

    .prologue
    .line 299
    const/4 v10, 0x0

    .line 301
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 302
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "properties"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 304
    const-string v2, "tag"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 305
    .local v15, tag:I
    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 307
    .local v16, value:I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 309
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, sTag:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, sValue:Ljava/lang/String;
    const-string v2, "CheckinProvider"

    const-string v3, "readAndSetProperties %s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 315
    .local v12, i:I
    const/16 v2, 0x3e8

    if-le v12, v2, :cond_0

    .line 316
    const-string v2, "CheckinProvider"

    const-string v3, "setting log event limit: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 319
    .end local v12           #i:I
    :catch_0
    move-exception v11

    .line 320
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "CheckinProvider"

    const-string v3, "failed setting EVENT_LIMIT:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 376
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #sTag:Ljava/lang/String;
    .end local v14           #sValue:Ljava/lang/String;
    .end local v15           #tag:I
    .end local v16           #value:I
    :catch_1
    move-exception v11

    .line 377
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "CheckinProvider"

    const-string v3, "failed to read and set properties"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    if-eqz v10, :cond_1

    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_1
    return-void

    .line 324
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #sTag:Ljava/lang/String;
    .restart local v14       #sValue:Ljava/lang/String;
    .restart local v15       #tag:I
    .restart local v16       #value:I
    :cond_2
    :try_start_4
    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->PROCESS_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    if-nez v14, :cond_6

    .line 326
    const-string v2, "CheckinProvider"

    const-string v3, "Value provided for Checkin.Properties.Tag.PROCESS_TAGS is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    :goto_2
    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_TAGS:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    if-nez v14, :cond_a

    .line 345
    const-string v2, "CheckinProvider"

    const-string v3, "Value provided for Checkin.Properties.Tag.EVENT_TAGS is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    :goto_3
    sget-object v2, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 365
    .restart local v12       #i:I
    const/4 v2, 0x2

    if-gt v2, v12, :cond_0

    const/4 v2, 0x7

    if-gt v12, v2, :cond_0

    .line 366
    const-string v2, "CheckinProvider"

    const-string v3, "setting log level: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iput v12, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_logLevel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 369
    .end local v12           #i:I
    :catch_2
    move-exception v11

    .line 370
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "CheckinProvider"

    const-string v3, "failed setting LOG_LEVEL:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 379
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #sTag:Ljava/lang/String;
    .end local v14           #sValue:Ljava/lang/String;
    .end local v15           #tag:I
    .end local v16           #value:I
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 328
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #sTag:Ljava/lang/String;
    .restart local v14       #sValue:Ljava/lang/String;
    .restart local v15       #tag:I
    .restart local v16       #value:I
    :cond_6
    :try_start_7
    const-string v2, "CheckinProvider"

    const-string v3, "setting checkin.process_tags: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/motorola/android/server/checkin/CheckinProvider;->initTags(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinProcessTags:Ljava/util/HashSet;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 337
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    goto/16 :goto_2

    .line 339
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allProcessTagsAllowed:Z

    goto/16 :goto_2

    .line 347
    :cond_a
    const-string v2, "CheckinProvider"

    const-string v3, "setting checkin.event_tags: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/motorola/android/server/checkin/CheckinProvider;->initTags(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_checkinEventTags:Ljava/util/HashSet;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 356
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z

    goto/16 :goto_3

    .line 358
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/motorola/android/server/checkin/CheckinProvider;->_allEventTagsAllowed:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 379
    .end local v13           #sTag:Ljava/lang/String;
    .end local v14           #sValue:Ljava/lang/String;
    :cond_e
    if-eqz v10, :cond_1

    goto/16 :goto_1
.end method

.method private readEventCount()I
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_eventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_storedEvents:I

    monitor-exit v1

    return v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestCheckin()V
    .locals 3

    .prologue
    .line 388
    iget-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    if-eqz v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->_requestedCheckin:Z

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.checkin.request_id"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "where"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 923
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 924
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 925
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 926
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHERE clause not supported for delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 929
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 930
    const/4 p3, 0x0

    .line 935
    :cond_1
    const/4 v0, 0x0

    .line 936
    .local v0, count:I
    const-string v3, "events"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 937
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/server/checkin/CheckinProvider;->deleteFromEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 938
    const-string v3, "CheckinProvider"

    const-string v4, "%d events delete %d left"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 948
    return v0

    .line 931
    .end local v0           #count:I
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 932
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid delete URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 941
    .restart local v0       #count:I
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 942
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 943
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 944
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "CheckinProvider"

    const-string v4, "delete: Error in deleting database"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 976
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.dir/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    .line 978
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor.item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 981
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 440
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, table:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 446
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid insert URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_0
    :try_start_0
    const-string v6, "events"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    const-string v6, "tagType"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvent(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 466
    .local v2, id:J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 471
    .end local v2           #id:J
    :goto_1
    return-object v5

    .line 452
    :cond_1
    const-string v6, "stats"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertStats(Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2       #id:J
    goto :goto_0

    .line 454
    .end local v2           #id:J
    :cond_2
    const-string v6, "crashes"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 455
    invoke-direct {p0, p2}, Lcom/motorola/android/server/checkin/CheckinProvider;->insertCrash(Landroid/content/ContentValues;)J

    move-result-wide v2

    .restart local v2       #id:J
    goto :goto_0

    .line 457
    .end local v2           #id:J
    :cond_3
    iget-object v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 458
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 459
    .restart local v2       #id:J
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #id:J
    :catch_0
    move-exception v1

    .line 462
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CheckinProvider"

    const-string v7, "insert: Error in inserting the data to database"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 469
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #id:J
    :cond_4
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 470
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v5, p1

    .line 471
    goto :goto_1
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 396
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;

    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/server/checkin/CheckinProvider$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 400
    new-instance v0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    const/16 v1, 0x10

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;-><init>(Lcom/motorola/android/server/checkin/CheckinProvider;IJ)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    .line 401
    iget-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->start()V

    .line 402
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readAndSetProperties()V

    .line 403
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->initEventCount()V

    .line 404
    const-string v0, "CheckinProvider"

    const-string v1, "Current Event Count is : %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->readEventCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "select"
    .parameter "where"
    .parameter "args"
    .parameter "sort"

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 412
    .local v10, table:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 413
    const-string v2, "events"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const-string v2, "CheckinProvider"

    const-string v3, "flushing event queue"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mEventInsertThread:Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;

    invoke-virtual {v2}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueFlush()V

    .line 417
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 418
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 425
    :cond_1
    const/4 v8, 0x0

    .line 427
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 428
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 429
    if-eqz v8, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    return-object v8

    .line 421
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 433
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "CheckinProvider"

    const-string v3, "query: Error in querying table %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "args"

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider;->checkPermissions(Landroid/net/Uri;)V

    .line 899
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 900
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 901
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHERE clause not supported for update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 904
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 905
    const/4 p4, 0x0

    .line 910
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 911
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 913
    .local v0, count:I
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 914
    invoke-virtual {p0}, Lcom/motorola/android/server/checkin/CheckinProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return v0

    .line 906
    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 907
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid update URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 915
    .restart local v0       #count:I
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 916
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "CheckinProvider"

    const-string v4, "Update: Error in updating database"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
