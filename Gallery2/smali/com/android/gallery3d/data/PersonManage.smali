.class public Lcom/android/gallery3d/data/PersonManage;
.super Ljava/lang/Object;
.source "PersonManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri; = null

.field static final INDEX_CONTACTID:I = 0x1

.field static final INDEX_ID:I = 0x0

.field static final INDEX_NAME:I = 0x2

.field static final INDEX_PRIVATE:I = 0x4

.field static final INDEX_SORTKEY:I = 0x3

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PersonManage"

.field private static sInstance:Lcom/android/gallery3d/data/PersonManage;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPersonIdName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/gallery3d/data/FaceStore$Images$Persons;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/data/PersonManage;->initialize()V

    .line 47
    return-void
.end method

.method public static getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 50
    const-class v1, Lcom/android/gallery3d/data/PersonManage;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/PersonManage;->sInstance:Lcom/android/gallery3d/data/PersonManage;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/gallery3d/data/PersonManage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/PersonManage;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/gallery3d/data/PersonManage;->sInstance:Lcom/android/gallery3d/data/PersonManage;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/PersonManage;->sInstance:Lcom/android/gallery3d/data/PersonManage;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public delete(I)V
    .locals 7
    .parameter "personId"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PersonManage"

    const-string v2, "delete Exception"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContactId(I)I
    .locals 10
    .parameter "personId"

    .prologue
    const/4 v8, 0x0

    .line 86
    const/4 v6, 0x0

    .line 88
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PersonManage"

    const-string v1, "getContactId Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getPeronIdByContactId(I)I
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    .line 102
    const/4 v6, 0x0

    .line 104
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 109
    :catch_0
    move-exception v7

    .line 110
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PersonManage"

    const-string v1, "getContactId contactId is null"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getPersonName(I)Ljava/lang/String;
    .locals 5
    .parameter "personId"

    .prologue
    const/4 v2, 0x0

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;

    .line 61
    .local v1, nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    if-eqz v1, :cond_2

    .line 62
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isPrivacyMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mIsPrivate:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, canNotShowName:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 64
    monitor-exit p0

    .line 69
    .end local v0           #canNotShowName:Z
    :goto_1
    return-object v2

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    .restart local v0       #canNotShowName:Z
    :cond_1
    iget-object v2, v1, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mName:Ljava/lang/String;

    monitor-exit p0

    goto :goto_1

    .line 71
    .end local v0           #canNotShowName:Z
    .end local v1           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 69
    .restart local v1       #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getSortKey(I)Ljava/lang/String;
    .locals 3
    .parameter "personId"

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;

    .line 77
    .local v0, nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, v0, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mSortKey:Ljava/lang/String;

    monitor-exit p0

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 82
    .end local v0           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    const/4 v6, 0x0

    .line 188
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    new-instance v8, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v8, v1, v2, v0}, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .local v8, nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .end local v8           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    :catch_0
    move-exception v7

    .line 197
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "PersonManage"

    const-string v1, "PersonManage initialize Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 199
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 185
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    move v0, v9

    .line 190
    goto :goto_1

    .line 199
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public insert(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .parameter "contactId"
    .parameter "name"
    .parameter "sortKey"
    .parameter "isPrivate"

    .prologue
    .line 119
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v4, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    sget-object v5, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v5, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v5, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    iget-object v5, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 125
    .local v3, personUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, personId:I
    new-instance v1, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    .local v1, nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit p0

    .line 133
    .end local v1           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .end local v2           #personId:I
    .end local v3           #personUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 129
    .restart local v1       #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .restart local v2       #personId:I
    .restart local v3       #personUri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    .end local v1           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .end local v2           #personId:I
    .end local v3           #personUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 132
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "PersonManage"

    const-string v6, "RuntimeException Exception"

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reset(I)V
    .locals 8
    .parameter "personId"

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget-object v2, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p0

    .line 180
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 176
    .restart local v1       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PersonManage"

    const-string v3, "reset Exception"

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "personId"
    .parameter "contactId"
    .parameter "name"
    .parameter "sortKey"
    .parameter "isPrivate"

    .prologue
    .line 139
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v3, values:Landroid/content/ContentValues;
    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 144
    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, PersonIdUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/data/PersonManage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    new-instance v2, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;

    invoke-direct {v2, p3, p4, p5}, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    .local v2, nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/data/PersonManage;->mPersonIdName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit p0

    .line 153
    .end local v0           #PersonIdUri:Landroid/net/Uri;
    .end local v2           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 149
    .restart local v0       #PersonIdUri:Landroid/net/Uri;
    .restart local v2       #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    .end local v0           #PersonIdUri:Landroid/net/Uri;
    .end local v2           #nameSortKey:Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PersonManage"

    const-string v5, "update Exception"

    invoke-static {v4, v5}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
