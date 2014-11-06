.class Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/lang/String;

.field private final mSourceType:I

.field private final mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V
    .locals 2
    .parameter
    .parameter "title"
    .parameter "count"
    .parameter "sourceType"
    .parameter "styleType"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 177
    iput-object p5, p0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    .line 178
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "jc"

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v16

    .line 184
    .local v16, s:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 185
    .local v4, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 190
    .local v10, count:Ljava/lang/String;
    monitor-enter p0

    .line 191
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$200(Lcom/android/gallery3d/ui/AlbumLabelMaker;)I

    move-result v15

    .line 192
    .local v15, labelWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mBitmapPool:Lcom/android/gallery3d/data/BitmapPool;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 193
    .local v13, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-nez v13, :cond_0

    .line 196
    const/4 v14, 0x0

    .line 197
    .local v14, borders:I
    add-int v2, v15, v14

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v3, v14

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 201
    .end local v14           #borders:I
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v1, v2, v3, v5, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v2

    iget v2, v2, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x0

    .line 229
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v13

    .line 193
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v15           #labelWidth:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 213
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #labelWidth:I
    :cond_1
    sget-object v2, Lcom/android/gallery3d/ui/AlbumLabelMaker$1;->$SwitchMap$com$android$gallery3d$ui$AlbumLabelMaker$StyleType:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mStyleType:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTextPaint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    .line 223
    .local v6, textPaint:Landroid/text/TextPaint;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #calls: Lcom/android/gallery3d/ui/AlbumLabelMaker;->getTextLocation(Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    invoke-static {v2, v4, v10, v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/android/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;

    move-result-object v17

    .line 224
    .local v17, textLocation:Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleX:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleY:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->titleLenLimit:I

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 215
    .end local v6           #textPaint:Landroid/text/TextPaint;
    .end local v17           #textLocation:Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mTextPaint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    .line 216
    .restart local v6       #textPaint:Landroid/text/TextPaint;
    goto :goto_1

    .line 218
    .end local v6           #textPaint:Landroid/text/TextPaint;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    #getter for: Lcom/android/gallery3d/ui/AlbumLabelMaker;->mSelectTextPaint:Landroid/text/TextPaint;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/android/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    .line 219
    .restart local v6       #textPaint:Landroid/text/TextPaint;
    goto :goto_1

    .line 228
    .restart local v17       #textLocation:Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
    :cond_2
    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countX:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countY:I

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;->countLenLimit:I

    move-object v7, v1

    move-object v12, v6

    invoke-static/range {v7 .. v12}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
