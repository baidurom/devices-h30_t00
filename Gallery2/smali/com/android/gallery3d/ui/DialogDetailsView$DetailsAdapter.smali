.class Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsAdapter"
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 3
    .parameter
    .parameter "details"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 129
    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {p1}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, context:Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaDetails;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 132
    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->setDetails(Landroid/content/Context;Lcom/android/gallery3d/data/MediaDetails;)V

    .line 133
    return-void
.end method

.method private getLengthInteger(Ljava/lang/Object;)I
    .locals 3
    .parameter "lengthObj"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, ret:I
    if-nez p1, :cond_0

    move v1, v0

    .line 287
    .end local v0           #ret:I
    .local v1, ret:I
    :goto_0
    return v1

    .line 284
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 287
    .end local v0           #ret:I
    .restart local v1       #ret:I
    goto :goto_0

    .line 285
    .end local v1           #ret:I
    .restart local v0       #ret:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private setDetails(Landroid/content/Context;Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 26
    .parameter "context"
    .parameter "details"

    .prologue
    .line 137
    const/16 v18, 0x3e6

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->getLengthInteger(Ljava/lang/Object;)I

    move-result v12

    .line 139
    .local v12, orientation:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/data/MediaDetails;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 142
    .local v4, detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    .line 144
    .local v11, omitAreabian:Z
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    .line 254
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 256
    .local v17, valueObj:Ljava/lang/Object;
    if-eqz v17, :cond_0

    .line 259
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 262
    .end local v17           #valueObj:Ljava/lang/Object;
    .local v16, value:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 263
    .local v8, key:I
    const-string v18, "%s: "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, title:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/MediaDetails;->hasUnit(I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 266
    const-string v18, "%s %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/MediaDetails;->getUnit(I)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 273
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    .end local v8           #key:I
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :sswitch_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [D

    move-object/from16 v9, v18

    check-cast v9, [D

    .line 147
    .local v9, latlng:[D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    move-object/from16 v18, v0

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2}, Lcom/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;Z)Ljava/lang/String;

    move-result-object v16

    .line 151
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 154
    .end local v9           #latlng:[D
    .end local v16           #value:Ljava/lang/String;
    :sswitch_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 156
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 159
    .end local v16           #value:Ljava/lang/String;
    :sswitch_3
    const-string v18, "1"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const v18, 0x7f0d02cb

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 162
    .restart local v16       #value:Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .line 159
    .end local v16           #value:Ljava/lang/String;
    :cond_2
    const v18, 0x7f0d02cc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 165
    :sswitch_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    .line 169
    .local v5, flash:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaDetails$FlashState;->isFlashFired()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 170
    const v18, 0x7f0d02cd

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 172
    .end local v16           #value:Ljava/lang/String;
    :cond_3
    const v18, 0x7f0d02ce

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 174
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 177
    .end local v5           #flash:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    .end local v16           #value:Ljava/lang/String;
    :sswitch_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 178
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 179
    .local v13, time:D
    const-wide/high16 v18, 0x3ff0

    cmpg-double v18, v13, v18

    if-gez v18, :cond_4

    .line 180
    const-string v18, "1/%d s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/high16 v21, 0x3fe0

    const-wide/high16 v23, 0x3ff0

    div-double v23, v23, v13

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 182
    :cond_4
    double-to-int v7, v13

    .line 183
    .local v7, integer:I
    int-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v13, v13, v18

    .line 184
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 185
    const-wide v18, 0x3f1a36e2eb1c432dL

    cmpl-double v18, v13, v18

    if-lez v18, :cond_1

    .line 186
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " 1/%d s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-wide/high16 v22, 0x3fe0

    const-wide/high16 v24, 0x3ff0

    div-double v24, v24, v13

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 192
    .end local v7           #integer:I
    .end local v13           #time:D
    .end local v16           #value:Ljava/lang/String;
    :sswitch_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 193
    .local v3, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f110006

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 194
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 197
    .end local v3           #count:I
    .end local v16           #value:Ljava/lang/String;
    :sswitch_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_5

    const v18, 0x7f0d034f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 200
    .restart local v16       #value:Ljava/lang/String;
    :goto_4
    goto/16 :goto_1

    .line 197
    .end local v16           #value:Ljava/lang/String;
    :cond_5
    const v18, 0x7f0d0350

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 203
    :sswitch_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const v18, 0x7f0d0356

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 206
    .restart local v16       #value:Ljava/lang/String;
    :goto_5
    goto/16 :goto_1

    .line 203
    .end local v16           #value:Ljava/lang/String;
    :cond_6
    const v18, 0x7f0d0357

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 209
    :sswitch_9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0x7f0d0353

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 212
    .restart local v16       #value:Ljava/lang/String;
    :goto_6
    goto/16 :goto_1

    .line 209
    .end local v16           #value:Ljava/lang/String;
    :cond_7
    const v18, 0x7f0d0354

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    .line 216
    :sswitch_a
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->getFomattedDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 218
    .restart local v16       #value:Ljava/lang/String;
    const/4 v11, 0x0

    .line 220
    goto/16 :goto_1

    .line 223
    .end local v16           #value:Ljava/lang/String;
    :sswitch_b
    const v19, 0x7f0d02c5

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    aput-object v18, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 224
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 233
    .end local v16           #value:Ljava/lang/String;
    :sswitch_c
    rem-int/lit16 v0, v12, 0xb4

    move/from16 v18, v0

    if-nez v18, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->getLengthInteger(Ljava/lang/Object;)I

    move-result v10

    .line 236
    .local v10, length:I
    :goto_7
    if-eqz v10, :cond_0

    .line 238
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 239
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 233
    .end local v10           #length:I
    .end local v16           #value:Ljava/lang/String;
    :cond_8
    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->getLengthInteger(Ljava/lang/Object;)I

    move-result v10

    goto :goto_7

    .line 243
    :sswitch_d
    rem-int/lit16 v0, v12, 0xb4

    move/from16 v18, v0

    if-nez v18, :cond_9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->getLengthInteger(Ljava/lang/Object;)I

    move-result v10

    .line 246
    .restart local v10       #length:I
    :goto_8
    if-eqz v10, :cond_0

    .line 248
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 249
    .restart local v16       #value:Ljava/lang/String;
    goto/16 :goto_1

    .line 243
    .end local v10           #length:I
    .end local v16           #value:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->getLengthInteger(Ljava/lang/Object;)I

    move-result v10

    goto :goto_8

    .line 267
    .restart local v8       #key:I
    .restart local v15       #title:Ljava/lang/String;
    .restart local v16       #value:Ljava/lang/String;
    :cond_a
    if-eqz v11, :cond_b

    .line 268
    const-string v18, "\u200e%s\u200e"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 270
    :cond_b
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 275
    .end local v4           #detail:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v8           #key:I
    .end local v11           #omitAreabian:Z
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_c
    return-void

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_a
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x65 -> :sswitch_5
        0x68 -> :sswitch_b
        0x69 -> :sswitch_3
        0x6a -> :sswitch_4
        0x96 -> :sswitch_6
        0x97 -> :sswitch_7
        0x99 -> :sswitch_9
        0x9a -> :sswitch_8
        0x3e6 -> :sswitch_0
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$300(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 312
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 318
    if-nez p2, :cond_0

    .line 319
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 324
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x7f10004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 325
    .local v1, title:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;

    iget-object v3, v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v3, 0x7f100050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    .local v0, content:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;

    iget-object v3, v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-object v2

    .line 322
    .end local v0           #content:Landroid/widget/TextView;
    .end local v1           #title:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 335
    const-string v1, "%s: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->mLocationIndex:I

    new-instance v3, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;

    invoke-direct {v3, v0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;->notifyDataSetChanged()V

    .line 338
    return-void
.end method
