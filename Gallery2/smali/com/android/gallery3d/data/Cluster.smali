.class Lcom/android/gallery3d/data/Cluster;
.super Ljava/lang/Object;
.source "TimeClustering.java"


# static fields
.field private static final MMDDYY_FORMAT:Ljava/lang/String; = "MMddyy"

.field private static final TAG:Ljava/lang/String; = "Cluster"


# instance fields
.field public mGeographicallySeparatedFromPrevCluster:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    .line 388
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/gallery3d/data/SmallItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public generateCaption(Landroid/content/Context;)Ljava/lang/String;
    .locals 25
    .parameter "context"

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 409
    .local v20, n:I
    sget-boolean v2, Lcom/android/gallery3d/data/TimeClustering;->USE_YYYYMM_ALGO:Z

    if-eqz v2, :cond_2

    .line 411
    if-nez v20, :cond_1

    .line 412
    const-string v13, ""

    .line 477
    :cond_0
    :goto_0
    return-object v13

    .line 414
    :cond_1
    const/16 v16, 0x24

    .line 415
    .local v16, format:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SmallItem;

    iget-wide v10, v2, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v10, v11, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v13

    .local v13, caption:Ljava/lang/String;
    goto :goto_0

    .line 420
    .end local v13           #caption:Ljava/lang/String;
    .end local v16           #format:I
    :cond_2
    const-wide/16 v3, 0x0

    .line 421
    .local v3, minTimestamp:J
    const-wide/16 v5, 0x0

    .line 423
    .local v5, maxTimestamp:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/SmallItem;

    iget-wide v0, v2, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v21, v0

    .line 425
    .local v21, t:J
    const-wide/16 v10, 0x0

    cmp-long v2, v21, v10

    if-nez v2, :cond_3

    .line 423
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 426
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v2, v3, v10

    if-nez v2, :cond_4

    .line 427
    move-wide/from16 v5, v21

    move-wide/from16 v3, v21

    goto :goto_2

    .line 429
    :cond_4
    move-wide/from16 v0, v21

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 430
    move-wide/from16 v0, v21

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_2

    .line 433
    .end local v21           #t:J
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v2, v3, v10

    if-nez v2, :cond_6

    const-string v13, ""

    goto :goto_0

    .line 436
    :cond_6
    const-string v2, "MMddyy"

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 438
    .local v19, minDay:Ljava/lang/String;
    const-string v2, "MMddyy"

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 441
    .local v18, maxDay:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 444
    const/high16 v7, 0x8

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    .line 450
    .restart local v13       #caption:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const v7, 0x10010

    .line 454
    .local v7, flags:I
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    .line 456
    .local v14, dateRangeWithOptionalYear:Ljava/lang/String;
    const v2, 0x10014

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    .line 458
    .local v15, dateRangeWithYear:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    add-long v10, v3, v5

    const-wide/16 v23, 0x2

    div-long v8, v10, v23

    .line 464
    .local v8, midTimestamp:J
    const v12, 0x10011

    move-object/from16 v7, p1

    move-wide v10, v8

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v7           #flags:I
    move-result-object v13

    goto/16 :goto_0

    .line 471
    .end local v8           #midTimestamp:J
    .end local v13           #caption:Ljava/lang/String;
    .end local v14           #dateRangeWithOptionalYear:Ljava/lang/String;
    .end local v15           #dateRangeWithYear:Ljava/lang/String;
    :cond_7
    const v7, 0x10030

    .restart local v7       #flags:I
    move-object/from16 v2, p1

    .line 473
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #caption:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastItem()Lcom/android/gallery3d/data/SmallItem;
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 400
    .local v0, n:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/SmallItem;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/data/Cluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
