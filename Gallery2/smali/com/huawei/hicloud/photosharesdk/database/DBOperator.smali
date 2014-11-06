.class public abstract Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "DBOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DBOperator"

.field private static volatile counter:I

.field protected static volatile mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbCreator:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    .local p0, this:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 27
    return-void
.end method

.method public static close()V
    .locals 4

    .prologue
    .line 63
    const-class v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    monitor-enter v1

    .line 64
    :try_start_0
    sget v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDbCreator:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 66
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    const-string v0, "DBOperator"

    const-string v2, "database closed"

    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "DBOperator"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count after close:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    monitor-exit v1

    .line 74
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteDatabase()V
    .locals 5

    .prologue
    .line 53
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    const/4 v1, 0x0

    sput v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    .line 56
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PhotoStream.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteDatabase result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static open()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBCreator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDbCreator:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 35
    const-class v1, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDbCreator:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    :cond_1
    sget v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    .line 40
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_2

    .line 41
    const-string v0, "DBOperator"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "count after open:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->counter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_2
    monitor-exit v1

    .line 46
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract drop()V
.end method

.method public abstract insert(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public abstract query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 90
    .local p0, this:Lcom/huawei/hicloud/photosharesdk/database/DBOperator;,"Lcom/huawei/hicloud/photosharesdk/database/DBOperator<TT;>;"
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public varargs abstract update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract updateOrInsert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
