.class public Lcom/motorola/flex/DatabaseTable;
.super Ljava/lang/Object;
.source "DatabaseTable.java"


# static fields
.field public static final TABLE_INFO_PRAGMA_COLUMNNAME:I = 0x1

.field public static final TABLE_INFO_PRAGMA_DATA_TYPE:I = 0x2

.field public static final TABLE_INFO_PRAGMA_DEFAULT:I = 0x4

.field public static final TABLE_INFO_PRAGMA_NULL_ALLOWED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TableRecord"


# instance fields
.field protected mColumns:Ljava/util/HashMap;
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

.field protected final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "name"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    .line 48
    iput-object p2, p0, Lcom/motorola/flex/DatabaseTable;->mName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lcom/motorola/flex/DatabaseTable;->init(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "sep"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v2, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    .line 207
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    .local v0, cnt:I
    if-lez v0, :cond_1

    .line 209
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 210
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    .end local v0           #cnt:I
    .end local v1           #i:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static joinNTimes(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "cnt"

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v1, sb:Ljava/lang/StringBuffer;
    if-lez p1, :cond_1

    .line 225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_0

    .line 226
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clearTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 112
    const-string v3, "TableRecord"

    const-string v4, "clearTable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v3, "DELETE FROM %s ;"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/flex/DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, clear:Ljava/lang/String;
    const/4 v2, 0x0

    .line 116
    .local v2, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 124
    :cond_0
    :goto_0
    const-string v3, "TableRecord"

    const-string v4, "clearTable - complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "TableRecord"

    const-string v4, "Unexpected exception for %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v3
.end method

.method public columnExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getColumnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberColumns()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected init(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 11
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 82
    .local v2, cur:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PRAGMA table_info("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/flex/DatabaseTable;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 84
    .local v0, cnt:I
    const-string v6, "TableRecord"

    const-string v7, "Cursor count for table %s is %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/motorola/flex/DatabaseTable;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-lez v0, :cond_2

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .end local v4           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, columnName:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, dataType:Ljava/lang/String;
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v6, "TableRecord"

    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v1           #columnName:Ljava/lang/String;
    .end local v3           #dataType:Ljava/lang/String;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v0           #cnt:I
    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v6

    .end local v4           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0       #cnt:I
    .restart local v5       #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v4, v5

    .end local v5           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_3
    return-object v4

    .line 95
    .end local v0           #cnt:I
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method protected insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "db"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p2, cols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 171
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    .local v3, numberColumns:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 174
    .local v4, numberValues:I
    if-eq v3, v4, :cond_0

    .line 175
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "vals.size() != cols.size()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_0
    const-string v6, "INSERT OR REPLACE INTO %s (%s) VALUES(%s);"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/flex/DatabaseTable;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, ", "

    invoke-static {p2, v8}, Lcom/motorola/flex/DatabaseTable;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const-string v8, "?"

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Lcom/motorola/flex/DatabaseTable;->joinNTimes(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, insert:Ljava/lang/String;
    const-string v6, "TableRecord"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v5, 0x0

    .line 183
    .local v5, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 184
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 185
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 194
    .end local v1           #i:I
    :cond_2
    :goto_1
    const-string v6, "TableRecord"

    const-string v7, "insertRow - complete"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "TableRecord"

    const-string v7, "Unexpected exception for %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    throw v6
.end method

.method public insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 12
    .parameter "db"
    .parameter "row"

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, cols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v8, vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, entryObject:Ljava/lang/Object;
    move-object v2, v3

    .line 139
    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 141
    .local v6, key:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/motorola/flex/DatabaseTable;->columnExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 142
    const-string v9, "TableRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt to flex invalid column "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, val:Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #entryObject:Ljava/lang/Object;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #val:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/motorola/flex/DatabaseTable;->rowValid(Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    :try_start_0
    invoke-virtual {p0, p1, v0, v8}, Lcom/motorola/flex/DatabaseTable;->insertRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :cond_2
    :goto_1
    const-string v9, "TableRecord"

    const-string v10, "insertRow - complete"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, iae:Ljava/lang/IllegalArgumentException;
    const-string v9, "TableRecord"

    const-string v10, "Column count does not match values cannot create insert"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v5           #iae:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "TableRecord"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public rowValid(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, cols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, col:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/flex/DatabaseTable;->columnExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, "TableRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to flex invalid column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v2, 0x0

    .line 108
    .end local v0           #col:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/flex/DatabaseTable;->mColumns:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
