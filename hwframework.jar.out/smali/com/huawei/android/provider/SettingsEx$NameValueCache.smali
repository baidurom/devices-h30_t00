.class Lcom/huawei/android/provider/SettingsEx$NameValueCache;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 68
    iput-object p1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    .line 70
    iput-object p3, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 76
    .local v12, newValuesVersion:J
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 84
    iput-wide v12, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    move-object v14, v2

    .line 144
    :cond_1
    :goto_0
    return-object v14

    .line 90
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 95
    if-nez v1, :cond_3

    .line 96
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v1           #cp:Landroid/content/IContentProvider;
    .local v10, cp:Landroid/content/IContentProvider;
    move-object v1, v10

    .line 98
    .end local v10           #cp:Landroid/content/IContentProvider;
    .restart local v1       #cp:Landroid/content/IContentProvider;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 104
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 106
    :try_start_2
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v1, v2, v0, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 107
    .local v8, b:Landroid/os/Bundle;
    if-eqz v8, :cond_4

    .line 108
    invoke-virtual {v8}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :try_start_3
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    .end local v8           #b:Landroid/os/Bundle;
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 122
    :cond_4
    const/4 v9, 0x0

    .line 124
    .local v9, c:Landroid/database/Cursor;
    :try_start_5
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 126
    if-nez v9, :cond_5

    .line 127
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 128
    const/4 v14, 0x0

    .line 144
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 90
    .end local v1           #cp:Landroid/content/IContentProvider;
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 98
    .restart local v1       #cp:Landroid/content/IContentProvider;
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 131
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_5
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 132
    .restart local v14       #value:Ljava/lang/String;
    :goto_1
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 133
    :try_start_9
    iget-object v2, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 144
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 131
    .end local v14           #value:Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 134
    .restart local v14       #value:Ljava/lang/String;
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 140
    .end local v14           #value:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 141
    .local v11, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 142
    const/4 v14, 0x0

    .line 144
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #e:Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public getStringnoCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "cr"
    .parameter "name"

    .prologue
    const/4 v12, 0x0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 154
    if-nez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v9

    iput-object v9, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0           #cp:Landroid/content/IContentProvider;
    .local v9, cp:Landroid/content/IContentProvider;
    move-object v0, v9

    .line 157
    .end local v9           #cp:Landroid/content/IContentProvider;
    .restart local v0       #cp:Landroid/content/IContentProvider;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 165
    .local v7, b:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 166
    invoke-virtual {v7}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v11

    .line 167
    .local v11, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :try_start_2
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    .end local v7           #b:Landroid/os/Bundle;
    .end local v11           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v11

    .line 157
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 169
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v11       #value:Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 174
    .end local v7           #b:Landroid/os/Bundle;
    .end local v11           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 180
    :cond_2
    const/4 v8, 0x0

    .line 182
    .local v8, c:Landroid/database/Cursor;
    :try_start_6
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 184
    if-nez v8, :cond_4

    .line 185
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 202
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v12

    goto :goto_0

    .line 189
    :cond_4
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 190
    .restart local v11       #value:Ljava/lang/String;
    :goto_1
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 191
    :try_start_8
    iget-object v1, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 202
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11           #value:Ljava/lang/String;
    :cond_5
    move-object v11, v12

    .line 189
    goto :goto_1

    .line 192
    .restart local v11       #value:Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 198
    .end local v11           #value:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 199
    .local v10, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 202
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v11, v12

    goto/16 :goto_0

    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_3
    move-exception v1

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method
