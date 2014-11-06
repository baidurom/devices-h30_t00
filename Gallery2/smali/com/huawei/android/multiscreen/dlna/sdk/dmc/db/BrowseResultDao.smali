.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;
.super Ljava/lang/Object;
.source "BrowseResultDao.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I = null

.field public static final AUDIO:I = 0x3

.field public static final FOLDER:I = 0x1

.field public static final IMAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BrowseResultDao"

.field public static final VIDEO:I = 0x2

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private getColumnName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "tagName"
    .parameter "tableType"

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 513
    .local v1, columnName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    const/4 v3, 0x0

    .line 543
    :goto_0
    return-object v3

    .line 517
    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    move-object v3, v1

    .line 543
    goto :goto_0

    .line 519
    :pswitch_0
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->FOLDER_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 520
    goto :goto_1

    .line 522
    :pswitch_1
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->VIDEO_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 523
    goto :goto_1

    .line 525
    :pswitch_2
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->AUDIO_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 526
    goto :goto_1

    .line 528
    :pswitch_3
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAConst;->IMAGE_MAP:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_1

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "BrowseResultDao"

    const-string v4, "BrowseResultDao.getColumnName exception "

    invoke-static {v3, v4, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getIntance()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;

    return-object v0
.end method

.method private getSqlFromLastDelList(ILjava/util/List;)[[Ljava/lang/String;
    .locals 9
    .parameter "deviceID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, delList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v4, sqlBuffer:Ljava/lang/StringBuffer;
    const-string v5, "( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 413
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, sql:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 419
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sqlArgs:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 421
    .restart local v2       #sqlArgs:[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [[Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v7

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    return-object v5

    .line 407
    .end local v1           #sql:Ljava/lang/String;
    .end local v2           #sqlArgs:[Ljava/lang/String;
    .end local v3           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 408
    const-string v5, "? )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 411
    :cond_1
    const-string v5, "?,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 1
    .parameter "tableType"

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, tableName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 494
    :goto_0
    return-object v0

    .line 476
    :pswitch_0
    const-string v0, "Folder"

    .line 477
    goto :goto_0

    .line 479
    :pswitch_1
    const-string v0, "Video"

    .line 480
    goto :goto_0

    .line 482
    :pswitch_2
    const-string v0, "Audio"

    .line 483
    goto :goto_0

    .line 485
    :pswitch_3
    const-string v0, "Image"

    .line 486
    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTableType(Ljava/lang/String;)I
    .locals 8
    .parameter "itemClass"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 76
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 79
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 85
    const/4 v0, 0x0

    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-lt v0, v1, :cond_4

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "object.item.audioItem"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v2, v3

    .line 92
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->VIDEO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    const/4 v2, 0x2

    goto :goto_0

    .line 79
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->AUDIO_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v3

    .line 87
    goto :goto_0

    .line 85
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_6
    const/4 v0, 0x0

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-lt v0, v1, :cond_7

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "object.item.imageItem"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v2, v4

    .line 102
    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->IMAGE_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v4

    .line 97
    goto :goto_0

    .line 95
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_9
    const/4 v0, 0x0

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-lt v0, v1, :cond_a

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "object.container"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    .line 112
    goto/16 :goto_0

    .line 106
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/constant/DLNAXMLConst;->FOLDER_CLASS:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v2, v5

    .line 107
    goto/16 :goto_0

    .line 105
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public createDelDataForLastChangeSql(Ljava/util/List;II)[[Ljava/lang/String;
    .locals 18
    .parameter
    .parameter "tableType"
    .parameter "deviceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;II)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, tagAttrList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 141
    :cond_0
    const/4 v14, 0x0

    .line 173
    :goto_0
    return-object v14

    .line 143
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getTableName(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, tableName:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 145
    const/4 v14, 0x0

    goto :goto_0

    .line 149
    :cond_2
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v11, sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, i:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, size:I
    :goto_1
    if-lt v7, v8, :cond_3

    .line 173
    .end local v7           #i:I
    .end local v8           #size:I
    .end local v11           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    const/4 v14, 0x0

    goto :goto_0

    .line 153
    .restart local v7       #i:I
    .restart local v8       #size:I
    .restart local v11       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 154
    .local v13, tagList:[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v2, v13, v14

    .line 155
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getColumnName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, columnName:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v3, v13, v14

    .line 157
    .local v3, attrValue:Ljava/lang/String;
    move-object v5, v3

    .line 158
    .local v5, columnValue:Ljava/lang/String;
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 160
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 161
    const-string v14, "item_id"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 162
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "delete from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " where item_id = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, sql:Ljava/lang/String;
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    new-array v10, v14, [Ljava/lang/String;

    .line 165
    .local v10, sqlArgs:[Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sqlArgs:[Ljava/lang/String;
    check-cast v10, [Ljava/lang/String;

    .line 166
    .restart local v10       #sqlArgs:[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v14, v14, [[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 170
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v4           #columnName:Ljava/lang/String;
    .end local v5           #columnValue:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #size:I
    .end local v9           #sql:Ljava/lang/String;
    .end local v10           #sqlArgs:[Ljava/lang/String;
    .end local v11           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #tagList:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 171
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "BrowseResultDao"

    const-string v15, "BrowseResultDao.createDelDataForLastChangeSql exception "

    invoke-static {v14, v15, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 152
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v4       #columnName:Ljava/lang/String;
    .restart local v5       #columnValue:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #size:I
    .restart local v11       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13       #tagList:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public createInsertDataSql(Ljava/util/List;II)[[Ljava/lang/String;
    .locals 19
    .parameter
    .parameter "tableType"
    .parameter "deviceID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;II)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, tagAttrList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 188
    :cond_0
    const/4 v15, 0x0

    .line 268
    :goto_0
    return-object v15

    .line 191
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getTableName(I)Ljava/lang/String;

    move-result-object v13

    .line 193
    .local v13, tableName:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 194
    const/4 v15, 0x0

    goto :goto_0

    .line 199
    :cond_2
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v11, sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v4, columnBuffer:Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v14, valueBuffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-lt v8, v15, :cond_4

    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-lez v15, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 240
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v12, sqlBuffer:Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "insert into "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string v15, ")"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v15, " values("

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v15, " )"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 249
    .local v9, sql:Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    new-array v10, v15, [Ljava/lang/String;

    .line 250
    .local v10, sqlArgs:[Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sqlArgs:[Ljava/lang/String;
    check-cast v10, [Ljava/lang/String;

    .line 260
    .restart local v10       #sqlArgs:[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v9, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 264
    .end local v4           #columnBuffer:Ljava/lang/StringBuffer;
    .end local v8           #i:I
    .end local v9           #sql:Ljava/lang/String;
    .end local v10           #sqlArgs:[Ljava/lang/String;
    .end local v11           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #sqlBuffer:Ljava/lang/StringBuffer;
    .end local v14           #valueBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v7

    .line 265
    .local v7, e:Ljava/lang/Exception;
    const-string v15, "BrowseResultDao"

    const-string v16, "BrowseResultDao.createInsertDataSql exception "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v4       #columnBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #i:I
    .restart local v11       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #valueBuffer:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v2, v15, v16

    .line 207
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v3, v15, v16

    .line 209
    .local v3, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getColumnName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, columnName:Ljava/lang/String;
    move-object v6, v3

    .line 212
    .local v6, columnValue:Ljava/lang/String;
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 213
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 214
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 216
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v16, "refID"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 217
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 218
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 221
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_7

    .line 231
    const-string v15, "device_id"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method public deleteDeviceData(I)V
    .locals 6
    .parameter "deviceID"

    .prologue
    .line 283
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 287
    .local v1, sqlArgs:[Ljava/lang/String;
    const-string v4, "delete from Image where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v4, "delete from Video where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v4, "delete from Audio where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v4, "delete from Folder where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v4, "delete from Device where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->batchExecSQL(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1           #sqlArgs:[Ljava/lang/String;
    .end local v2           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3           #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BrowseResultDao"

    const-string v5, "BrowseResultDao.deleteFolder exception "

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteDeviceDataFromLastDel(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/util/List;)V
    .locals 7
    .parameter "deviceID"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, delList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 394
    :goto_0
    return-void

    .line 365
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v3, sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v2, sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->getSqlFromLastDelList(ILjava/util/List;)[[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, ret:[[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 390
    :goto_1
    :pswitch_0
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->batchExecSQL(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1           #ret:[[Ljava/lang/String;
    .end local v2           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3           #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BrowseResultDao"

    const-string v5, "BrowseResultDao.deleteDeviceDataPartial exception "

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #ret:[[Ljava/lang/String;
    .restart local v2       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3       #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Image where device_id=? and item_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 375
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Video where device_id=? and item_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 379
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Audio where device_id=? and item_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Video where device_id=? and item_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete from Image where device_id=? and item_id in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public deleteDeviceDataPartial(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 6
    .parameter "deviceID"
    .parameter "type"

    .prologue
    .line 317
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v3, sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v2, sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 322
    .local v1, sqlArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/BrowseResultDao;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->batchExecSQL(Ljava/util/List;Ljava/util/List;)V

    .line 353
    .end local v1           #sqlArgs:[Ljava/lang/String;
    .end local v2           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3           #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 324
    .restart local v1       #sqlArgs:[Ljava/lang/String;
    .restart local v2       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3       #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string v4, "delete from Image where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v1           #sqlArgs:[Ljava/lang/String;
    .end local v2           #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .end local v3           #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BrowseResultDao"

    const-string v5, "BrowseResultDao.deleteDeviceDataPartial exception "

    invoke-static {v4, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 328
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #sqlArgs:[Ljava/lang/String;
    .restart local v2       #sqlArgsList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v3       #sqlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    :try_start_1
    const-string v4, "delete from Video where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :pswitch_3
    const-string v4, "delete from Audio where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :pswitch_4
    const-string v4, "delete from Video where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v4, "delete from Image where device_id=?"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public insertData(Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;)V
    .locals 2
    .parameter "ret"

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->getSqls()Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/xml/ParseResult;->getValues()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->batchExecInsert(Ljava/util/List;Ljava/util/List;)V

    .line 130
    .end local v0           #sqls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #values:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public insertDevice(ILjava/lang/String;ILjava/lang/String;I)I
    .locals 9
    .parameter "deviceID"
    .parameter "deviceName"
    .parameter "deviceType"
    .parameter "udn"
    .parameter "deviceProduct"

    .prologue
    .line 433
    const-string v6, "BrowseResultDao"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BrowseResultDao.insertDevice deviceNetID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 434
    const-string v8, ",deviceName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",udn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-static {v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, -0x1

    .line 439
    .local v0, devicePId:I
    :try_start_0
    const-string v4, "delete from Folder where device_id=?"

    .line 440
    .local v4, sql:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 442
    const-string v4, "delete from Device where device_id=?"

    .line 443
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 445
    const-string v4, "insert into Device (_display_name,device_id,device_type,udn,device_product) values(?,?,?,?,?)"

    .line 446
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    .line 447
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    .line 448
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 450
    .local v5, sqlArgs:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->insert(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 451
    .local v2, pid:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 459
    .end local v2           #pid:J
    .end local v4           #sql:Ljava/lang/String;
    .end local v5           #sqlArgs:[Ljava/lang/String;
    :goto_0
    return v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BrowseResultDao"

    const-string v7, "BrowseResultDao.insertDevice exception "

    invoke-static {v6, v7, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
