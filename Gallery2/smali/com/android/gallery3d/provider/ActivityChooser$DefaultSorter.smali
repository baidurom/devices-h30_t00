.class final Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooser.java"

# interfaces
.implements Lcom/android/gallery3d/provider/ActivityChooser$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/provider/ActivityChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 590
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;->mActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/provider/ActivityChooser$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter "intent"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p2, activities:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    .local p3, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;>;"
    iget-object v3, p0, Lcom/android/gallery3d/provider/ActivityChooser$DefaultSorter;->mActivityMap:Ljava/util/Map;

    .line 597
    .local v3, activityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 599
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 600
    .local v1, activityCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 601
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 602
    .local v0, activity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    .line 603
    iget-object v8, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 604
    .local v2, activityKey:Ljava/lang/String;
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    .end local v0           #activity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v2           #activityKey:Ljava/lang/String;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 608
    .local v6, lastShareIndex:I
    const/high16 v7, 0x3f80

    .line 609
    .local v7, nextRecordWeight:F
    move v5, v6

    :goto_1
    if-ltz v5, :cond_2

    .line 610
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;

    .line 611
    .local v4, historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    iget-object v8, v4, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 612
    .restart local v2       #activityKey:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 613
    .restart local v0       #activity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    if-eqz v0, :cond_1

    .line 614
    iget v8, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    iget v9, v4, Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;->weight:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    .line 615
    const v8, 0x3f733333

    mul-float/2addr v7, v8

    .line 609
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 619
    .end local v0           #activity:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    .end local v2           #activityKey:Ljava/lang/String;
    .end local v4           #historicalRecord:Lcom/android/gallery3d/provider/ActivityChooser$HistoricalRecord;
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 626
    return-void
.end method
