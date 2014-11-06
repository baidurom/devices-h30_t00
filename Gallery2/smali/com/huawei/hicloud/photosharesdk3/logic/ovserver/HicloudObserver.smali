.class public Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "HicloudObserver.java"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 29
    return-void
.end method


# virtual methods
.method public getLoginMessage()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 33
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v6, contentValues:Landroid/content/ContentValues;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "featureName"

    aput-object v0, v2, v9

    const-string v0, "value"

    aput-object v0, v2, v10

    .line 38
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.huawei.android.hicloud.provider/is_login"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 40
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "featureName"

    .line 45
    const-string v1, "featureName"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "value"

    .line 47
    const-string v1, "value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 52
    :cond_1
    if-eqz v7, :cond_2

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/ovserver/HicloudObserver;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FEATURE_NAME:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "featureName"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string v3, "VALUE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v8, 0x1

    .line 61
    .local v8, result:I
    const-string v0, "value"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    const-string v0, "value"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v8, v9

    .line 66
    :cond_3
    :goto_0
    return v8

    :cond_4
    move v8, v10

    .line 63
    goto :goto_0
.end method
