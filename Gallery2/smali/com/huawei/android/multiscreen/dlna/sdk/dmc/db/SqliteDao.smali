.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;
.super Ljava/lang/Object;
.source "SqliteDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SqliteDao"

.field private static dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    .line 33
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batchExecInsert(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, sql:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 193
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 197
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 201
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->batchInsertWithoutTransaction(Ljava/lang/String;[Ljava/lang/String;)J

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static batchExecSQL(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, sql:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 176
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SqliteDao"

    const-string v4, "SqliteDao.batchExecSQL exception "

    invoke-static {v3, v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #database:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #i:I
    :cond_2
    :try_start_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static batchInsertWithoutTransaction(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 12
    .parameter "sql"
    .parameter "values"

    .prologue
    const-wide/16 v3, -0x1

    .line 107
    const/4 v5, 0x0

    .line 109
    .local v5, statement:Landroid/database/sqlite/SQLiteStatement;
    sget-object v8, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    :cond_0
    if-eqz v5, :cond_1

    .line 150
    throw v5

    .line 147
    :cond_1
    :goto_0
    return-wide v3

    .line 117
    :cond_2
    if-eqz p1, :cond_0

    :try_start_1
    array-length v8, p1

    if-eqz v8, :cond_0

    .line 121
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v7, temp:Ljava/lang/StringBuffer;
    array-length v9, p1

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_3

    .line 129
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 130
    if-nez v5, :cond_4

    .line 149
    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 122
    :cond_3
    :try_start_2
    aget-object v6, p1, v8

    .line 123
    .local v6, str:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 133
    .end local v6           #str:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 135
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v8, p1

    if-lt v2, v8, :cond_5

    .line 141
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v3

    .line 149
    .local v3, id:J
    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 136
    .end local v3           #id:J
    :cond_5
    add-int/lit8 v8, v2, 0x1

    :try_start_3
    aget-object v9, p1, v2

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    .end local v2           #i:I
    .end local v7           #temp:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v8, "SqliteDao"

    const-string v9, "SqliteDao.insert exception "

    invoke-static {v8, v9, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 149
    if-eqz v5, :cond_6

    .line 150
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 152
    :cond_6
    throw v8
.end method

.method public static delete(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "sqls"
    .parameter "conditions"

    .prologue
    .line 344
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    .line 353
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 354
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 360
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SqliteDao"

    const-string v3, "SqliteDao.delete exception "

    invoke-static {v2, v3, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static insert(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 10
    .parameter "sql"
    .parameter "values"

    .prologue
    const-wide/16 v6, -0x1

    .line 45
    const/4 v5, 0x0

    .line 47
    .local v5, statement:Landroid/database/sqlite/SQLiteStatement;
    sget-object v8, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 52
    if-eqz p1, :cond_0

    :try_start_0
    array-length v8, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_3

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    if-eqz v5, :cond_1

    .line 91
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    move-wide v3, v6

    .line 87
    :cond_2
    :goto_0
    return-wide v3

    .line 56
    :cond_3
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 69
    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 74
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, p1

    if-lt v2, v8, :cond_4

    .line 80
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3

    .line 81
    .local v3, id:J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    if-eqz v5, :cond_2

    .line 91
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 75
    .end local v3           #id:J
    :cond_4
    add-int/lit8 v8, v2, 0x1

    :try_start_2
    aget-object v9, p1, v2

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "SqliteDao"

    const-string v9, "SqliteDao.insert exception "

    invoke-static {v8, v9, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    if-eqz v5, :cond_5

    .line 91
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    move-wide v3, v6

    .line 87
    goto :goto_0

    .line 88
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    if-eqz v5, :cond_6

    .line 91
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 93
    :cond_6
    throw v6
.end method

.method public static query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "sql"
    .parameter "conditions"

    .prologue
    const/4 v0, 0x0

    .line 215
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 217
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 232
    :goto_0
    return-object v0

    .line 223
    :cond_1
    if-eqz v1, :cond_0

    .line 226
    :try_start_1
    invoke-virtual {v1, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 235
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    goto :goto_0

    .line 230
    .end local v0           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "SqliteDao"

    const-string v4, "SqliteDao.query exception "

    invoke-static {v3, v4, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    goto :goto_0

    .line 234
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 235
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 236
    throw v3
.end method

.method public static update(Ljava/lang/String;)V
    .locals 4
    .parameter "sql"

    .prologue
    .line 313
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 325
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SqliteDao"

    const-string v3, "SqliteDao.update exception "

    invoke-static {v2, v3, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static update(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "sqls"
    .parameter "conditions"

    .prologue
    .line 280
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p1, :cond_0

    array-length v2, p1

    if-eqz v2, :cond_0

    .line 288
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->dbHelper:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 289
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0           #database:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SqliteDao"

    const-string v3, "SqliteDao.update exception "

    invoke-static {v2, v3, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
