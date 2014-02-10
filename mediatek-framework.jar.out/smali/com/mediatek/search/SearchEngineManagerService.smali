.class public Lcom/mediatek/search/SearchEngineManagerService;
.super Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

.field private mSearchEngineInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEngineObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;-><init>()V

    .line 114
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/search/SearchEngineManagerService$1;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    .line 106
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method private getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "favicon"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 286
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "name"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 299
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchEngineInfos()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfosFromRpm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 159
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x204000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, searchEngines:[Ljava/lang/String;
    if-eqz v4, :cond_1

    const/4 v6, 0x1

    array-length v7, v4

    if-lt v6, v7, :cond_2

    .line 162
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No data found for "

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    :cond_2
    aget-object v5, v4, v8

    .line 165
    .local v5, sp:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 166
    aget-object v0, v4, v1

    .line 167
    .local v0, configInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/mediatek/common/search/SearchEngineInfo;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    .line 168
    .local v2, info:Lcom/mediatek/common/search/SearchEngineInfo;
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v0           #configInfo:Ljava/lang/String;
    .end local v2           #info:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v6, :cond_4

    .line 173
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v6}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v7}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mediatek/search/SearchEngineManagerService;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 177
    :cond_4
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-nez v6, :cond_5

    .line 178
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/search/SearchEngineInfo;

    iput-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 181
    :cond_5
    iget-object v6, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/mediatek/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initSearchEngineInfosFromRpm()Z
    .locals 21

    .prologue
    .line 189
    const-string v19, "--"

    .line 190
    .local v19, sp:Ljava/lang/String;
    const-string v8, ""

    .line 191
    .local v8, configInfo:Ljava/lang/String;
    const-string v17, "nil"

    .line 193
    .local v17, nilString:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    .line 194
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 195
    const-string v1, "SearchEngineManagerService"

    const-string v3, "context is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_2

    .line 199
    const-string v1, "SearchEngineManagerService"

    const-string v3, "content resolver is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_2
    const/4 v9, 0x0

    .line 204
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 205
    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    .line 206
    const-string v1, "searchEngineName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 207
    .local v16, nameIndex:I
    const-string v1, "searchEngineLabel"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 208
    .local v15, labelIndex:I
    const-string v1, "keyword"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 209
    .local v14, keyWordIndex:I
    const-string v1, "favicon"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 210
    .local v12, faviconIndex:I
    const-string v1, "searchURL"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 211
    .local v18, searchUriIndex:I
    const-string v1, "encoding"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 212
    .local v11, encodeIndex:I
    const-string v1, "suggestionURL"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 213
    .local v20, suggestionUriIndex:I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 229
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, configData:[Ljava/lang/String;
    array-length v1, v7

    const/4 v3, 0x7

    if-eq v1, v3, :cond_a

    .line 231
    const-string v1, "SearchEngineManagerService"

    const-string v3, "configData length is wrong."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v1, 0x0

    .line 243
    if-eqz v9, :cond_0

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7           #configData:[Ljava/lang/String;
    :cond_3
    move-object/from16 v1, v17

    .line 214
    goto/16 :goto_2

    :cond_4
    move-object/from16 v1, v17

    .line 216
    goto/16 :goto_3

    :cond_5
    move-object/from16 v1, v17

    .line 218
    goto/16 :goto_4

    :cond_6
    move-object/from16 v1, v17

    .line 220
    goto/16 :goto_5

    :cond_7
    move-object/from16 v1, v17

    .line 222
    goto :goto_6

    :cond_8
    move-object/from16 v1, v17

    .line 224
    goto :goto_7

    :cond_9
    move-object/from16 v1, v17

    .line 226
    goto :goto_8

    .line 234
    .restart local v7       #configData:[Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lcom/mediatek/common/search/SearchEngineInfo;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v13

    .line 235
    .local v13, info:Lcom/mediatek/common/search/SearchEngineInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 240
    .end local v7           #configData:[Ljava/lang/String;
    .end local v11           #encodeIndex:I
    .end local v12           #faviconIndex:I
    .end local v13           #info:Lcom/mediatek/common/search/SearchEngineInfo;
    .end local v14           #keyWordIndex:I
    .end local v15           #labelIndex:I
    .end local v16           #nameIndex:I
    .end local v18           #searchUriIndex:I
    .end local v20           #suggestionUriIndex:I
    :catch_0
    move-exception v10

    .line 241
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SearchEngineManagerService"

    const-string v3, "initSearchEngineInfosFromRpm failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    if-eqz v9, :cond_b

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v10           #e:Ljava/lang/Exception;
    :cond_b
    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v11       #encodeIndex:I
    .restart local v12       #faviconIndex:I
    .restart local v14       #keyWordIndex:I
    .restart local v15       #labelIndex:I
    .restart local v16       #nameIndex:I
    .restart local v18       #searchUriIndex:I
    .restart local v20       #suggestionUriIndex:I
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/search/SearchEngineInfo;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 238
    const/4 v1, 0x1

    .line 243
    if-eqz v9, :cond_0

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 243
    .end local v11           #encodeIndex:I
    .end local v12           #faviconIndex:I
    .end local v14           #keyWordIndex:I
    .end local v15           #labelIndex:I
    .end local v16           #nameIndex:I
    .end local v18           #searchUriIndex:I
    .end local v20           #suggestionUriIndex:I
    :cond_d
    if-eqz v9, :cond_b

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 243
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_e

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1
.end method


# virtual methods
.method public declared-synchronized getAvailableSearchEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "name"
    .parameter "favicon"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    .line 277
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    if-eqz v0, :cond_0

    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    .restart local v0       #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 319
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 315
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
    .locals 5
    .parameter "engine"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 339
    .local v0, eng:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 341
    const/4 v3, 0x1

    .line 344
    .end local v0           #eng:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
