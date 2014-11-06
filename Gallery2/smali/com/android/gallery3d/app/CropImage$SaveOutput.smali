.class Lcom/android/gallery3d/app/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "cropRect"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p2, p0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 392
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 23
    .parameter "jc"

    .prologue
    .line 396
    const-wide/32 v13, 0x80000

    .line 397
    .local v13, reservedSpace:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 398
    .local v4, cropRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 400
    .local v7, extra:Landroid/os/Bundle;
    new-instance v12, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 404
    .local v12, rect:Landroid/graphics/Rect;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v15, result:Landroid/content/Intent;
    const-string v18, "cropped-rect"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 406
    const/4 v5, 0x0

    .line 407
    .local v5, cropped:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 408
    .local v11, outputted:Z
    if-eqz v7, :cond_d

    .line 409
    const-string v18, "output"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 410
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_2

    .line 411
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v15, 0x0

    .line 461
    .end local v15           #result:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v15

    .line 412
    .restart local v15       #result:Landroid/content/Intent;
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v11, 0x1

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    #calls: Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v0, v1, v5, v2}, Lcom/android/gallery3d/app/CropImage;->access$900(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    .line 416
    :cond_2
    const-string v18, "return-data"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 417
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 418
    :cond_3
    const/4 v11, 0x1

    .line 419
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 420
    :cond_4
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    :cond_5
    const-string v18, "set-as-theme"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 424
    .local v16, setAsTheme:Ljava/lang/String;
    const-string v18, "home"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "unlock"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 425
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_7

    const/4 v15, 0x0

    goto :goto_0

    .line 426
    :cond_7
    const/4 v11, 0x1

    .line 427
    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 428
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    #calls: Lcom/android/gallery3d/app/CropImage;->saveLockscreenBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/CropImage;->access$1000(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 431
    :cond_9
    const-string v18, "set-as-wallpaper"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 432
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 433
    :cond_a
    const/4 v11, 0x1

    .line 434
    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 436
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x80000

    add-long v19, v19, v21

    invoke-static/range {v18 .. v20}, Lcom/android/gallery3d/util/GalleryUtils;->checkDiskSpace(Ljava/lang/String;J)Z

    move-result v18

    if-nez v18, :cond_c

    .line 438
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 441
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/CropImage;->access$1100(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v18

    if-nez v18, :cond_d

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 444
    .end local v16           #setAsTheme:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_d
    if-nez v11, :cond_0

    .line 445
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 446
    :cond_e
    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v0, v12}, Lcom/android/gallery3d/app/CropImage;->access$800(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 448
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    #getter for: Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/app/CropImage;->access$1200(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/data/LocalImage;

    .line 451
    .local v10, localImage:Lcom/android/gallery3d/data/LocalImage;
    iget-wide v8, v10, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    .line 452
    .local v8, imgStorage:J
    const-wide/32 v18, 0x80000

    add-long v18, v18, v8

    iget-object v0, v10, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(JLjava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 453
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 458
    .end local v8           #imgStorage:J
    .end local v10           #localImage:Lcom/android/gallery3d/data/LocalImage;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage$SaveOutput;->this$0:Lcom/android/gallery3d/app/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    #calls: Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v0, v1, v5}, Lcom/android/gallery3d/app/CropImage;->access$1300(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v6

    .line 459
    .local v6, data:Landroid/net/Uri;
    if-eqz v6, :cond_0

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/CropImage$SaveOutput;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
