.class public Lmotorola/app/admin/MotEdmDb;
.super Ljava/lang/Object;
.source "MotEdmDb.java"


# static fields
.field private static final ADMIN_COLUMN_ID:Ljava/lang/String; = "admin_id"

.field private static final CERT_COLUMN_ID:Ljava/lang/String; = "cert_id"

.field private static final CONFIG_UUID_TABLE:Ljava/lang/String; = "UuidTable"

.field private static final DB_NAME:Ljava/lang/String; = "MotEDM.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/mot.app.admin/databases/"

.field private static final EMAIL_COLUMN_ID:Ljava/lang/String; = "email_id"

.field private static final TAG:Ljava/lang/String; = "Mot EDM DB"

.field private static final VPN_COLUMN_ID:Ljava/lang/String; = "vpn_id"

.field private static m_instance:Lmotorola/app/admin/MotEdmDb;

.field private static myDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    sput-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lmotorola/app/admin/MotEdmDb;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lmotorola/app/admin/MotEdmDb;

    invoke-direct {v0}, Lmotorola/app/admin/MotEdmDb;-><init>()V

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    .line 47
    invoke-static {}, Lmotorola/app/admin/MotEdmDb;->init()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 48
    const-string v0, "Mot EDM DB"

    const-string v1, " Database Init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->m_instance:Lmotorola/app/admin/MotEdmDb;

    goto :goto_0
.end method

.method private static init()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 59
    const-string v5, "Mot EDM DB"

    const-string v6, " Database Init"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "/data/data/mot.app.admin/databases/MotEDM.db"

    .line 62
    .local v0, dbFullPath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sput-object v5, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    :goto_0
    const/4 v4, 0x1

    .end local v2           #file:Ljava/io/File;
    :goto_1
    return v4

    .line 68
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 69
    .local v3, parent:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    :cond_1
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sput-object v5, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    sget-object v5, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "CREATE TABLE UuidTable (admin_id TEXT ,email_id TEXT , vpn_id TEXT , cert_id TEXT);"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v5, "Mot EDM DB"

    const-string v6, " Database Created"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parent:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Mot EDM DB"

    const-string v6, " Database Creation failure"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    sput-object v7, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 83
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parent:Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v5, "Mot EDM DB"

    const-string v6, " Not able to create parent folder for Database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addUuid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "admin"
    .parameter "emailUuid"
    .parameter "certUuid"
    .parameter "vpnUuid"

    .prologue
    .line 184
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "admin_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "email_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "vpn_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UuidTable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "Mot EDM DB"

    const-string v2, "Added new row to table"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x1

    .line 197
    .end local v0           #values:Landroid/content/ContentValues;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAdmin(Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 113
    .local v0, admin_id:[Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 114
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UuidTable"

    const-string v5, "admin_id=?"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const-string v2, "Mot EDM DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted from database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteAll()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "Mot EDM DB"

    const-string v1, "database deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteCertUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "certUuid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    .line 169
    .local v0, certId:[Ljava/lang/String;
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 170
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UuidTable"

    const-string v5, "(cert_id =?) AND (admin_id=?)"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteEmailUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "emailUuid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    .line 155
    .local v0, emailId:[Ljava/lang/String;
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 156
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UuidTable"

    const-string v5, "(email_id =?) AND (admin_id=?)"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public deleteVpnUuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "vpnUuid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    .line 140
    .local v0, vpnId:[Ljava/lang/String;
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 141
    sget-object v3, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UuidTable"

    const-string v5, "(vpn_id =?) AND (admin_id=?)"

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public display()V
    .locals 14

    .prologue
    .line 332
    const/4 v8, 0x0

    .line 333
    .local v8, c:Landroid/database/Cursor;
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 337
    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 339
    .local v13, totalRows:I
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v12

    .line 341
    .local v12, totalColumns:I
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rows =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-lez v13, :cond_2

    if-lez v12, :cond_2

    .line 343
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    const/4 v11, 0x0

    .line 345
    .local v11, row:I
    :goto_1
    if-ge v11, v13, :cond_3

    .line 346
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->Row No=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    if-ge v10, v12, :cond_1

    .line 348
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Column No= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 350
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 351
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 354
    .end local v10           #k:I
    .end local v11           #row:I
    :cond_2
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Entries "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 356
    .end local v12           #totalColumns:I
    .end local v13           #totalRows:I
    :catch_0
    move-exception v9

    .line 357
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "Mot EDM DB"

    const-string v1, " closing Mot EDM DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    return-void
.end method

.method public getCertUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 13
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 289
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 290
    .local v9, certId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 292
    .local v8, c:Landroid/database/Cursor;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-object v0

    .line 296
    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cert_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 299
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 300
    .local v12, totalRows:I
    if-lez v12, :cond_4

    .line 301
    const/4 v11, 0x0

    .line 302
    .local v11, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 303
    :goto_1
    if-ge v11, v12, :cond_2

    .line 304
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    .end local v11           #row:I
    .end local v12           #totalRows:I
    :catch_0
    move-exception v10

    .line 320
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    const/4 v9, 0x0

    .line 323
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v9

    .line 325
    goto :goto_0

    .line 311
    .restart local v11       #row:I
    .restart local v12       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 312
    const/4 v9, 0x0

    .line 323
    .end local v11           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 316
    :cond_4
    const/4 v9, 0x0

    .line 317
    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Certificate Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 323
    .end local v12           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getEmailUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 204
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 205
    .local v10, emailId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 206
    .local v8, c:Landroid/database/Cursor;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-object v0

    .line 211
    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "email_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 214
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 215
    .local v13, totalRows:I
    if-lez v13, :cond_4

    .line 216
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v12, 0x0

    .line 217
    .local v12, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    :goto_1
    if-ge v12, v13, :cond_2

    .line 219
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    .end local v11           #i:I
    .end local v12           #row:I
    .end local v13           #totalRows:I
    :catch_0
    move-exception v9

    .line 235
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    const/4 v10, 0x0

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v10

    .line 240
    goto :goto_0

    .line 226
    .restart local v11       #i:I
    .restart local v12       #row:I
    .restart local v13       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 227
    const/4 v10, 0x0

    .line 238
    .end local v11           #i:I
    .end local v12           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 231
    :cond_4
    const/4 v10, 0x0

    .line 232
    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Email Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 238
    .end local v13           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getVpnUuids(Ljava/lang/String;)Ljava/util/Vector;
    .locals 14
    .parameter "admin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 248
    .local v13, vpnId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 249
    .local v8, c:Landroid/database/Cursor;
    sget-object v1, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-object v0

    .line 253
    :cond_0
    :try_start_0
    sget-object v0, Lmotorola/app/admin/MotEdmDb;->myDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UuidTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpn_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 256
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 257
    .local v12, totalRows:I
    if-lez v12, :cond_4

    .line 258
    const/4 v10, 0x0

    .local v10, i:I
    const/4 v11, 0x0

    .line 259
    .local v11, row:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 260
    :goto_1
    if-ge v11, v12, :cond_2

    .line 261
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    .end local v10           #i:I
    .end local v11           #row:I
    .end local v12           #totalRows:I
    :catch_0
    move-exception v9

    .line 277
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Not EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query exception  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    const/4 v13, 0x0

    .line 280
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v0, v13

    .line 282
    goto :goto_0

    .line 268
    .restart local v10       #i:I
    .restart local v11       #row:I
    .restart local v12       #totalRows:I
    :cond_2
    :try_start_2
    invoke-virtual {v13}, Ljava/util/Vector;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 269
    const/4 v13, 0x0

    .line 280
    .end local v10           #i:I
    .end local v11           #row:I
    :cond_3
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 273
    :cond_4
    const/4 v13, 0x0

    .line 274
    :try_start_3
    const-string v0, "Mot EDM DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No of Vpn Entries= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 280
    .end local v12           #totalRows:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method
