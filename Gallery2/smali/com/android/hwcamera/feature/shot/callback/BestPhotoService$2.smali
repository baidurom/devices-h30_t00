.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;
.super Ljava/lang/Object;
.source "BestPhotoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBurstPicturePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".burst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->mBurstPicturePath:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->scanerPicturs(ZIZ)V

    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public scanerPicturs(ZIZ)V
    .locals 11
    .parameter "isLastHasFileScaned"
    .parameter "index"
    .parameter "isLargeThumbnailDecoded"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 132
    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z
    invoke-static {v8}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 133
    iget-object v7, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v7}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->removeMessages(I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->mBurstPicturePath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, bestPhotoDirectory:Ljava/io/File;
    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mFileFilter:Ljava/io/FileFilter;
    invoke-static {v8}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$200(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Ljava/io/FileFilter;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 139
    .local v6, pictures:[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v7

    .line 140
    .local v4, isHasPicture:Z
    :goto_1
    if-eqz v4, :cond_4

    array-length v8, v6

    if-le v8, p2, :cond_4

    move v3, v7

    .line 142
    .local v3, isHasNewPicture:Z
    :goto_2
    if-eqz v4, :cond_2

    if-nez v3, :cond_7

    .line 143
    :cond_2
    if-nez p1, :cond_5

    .line 144
    if-nez v4, :cond_0

    iget-object v7, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v7}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v3           #isHasNewPicture:Z
    .end local v4           #isHasPicture:Z
    :cond_3
    move v4, v9

    .line 139
    goto :goto_1

    .restart local v4       #isHasPicture:Z
    :cond_4
    move v3, v9

    .line 140
    goto :goto_2

    .line 149
    .restart local v3       #isHasNewPicture:Z
    :cond_5
    if-eqz v4, :cond_6

    const-wide/16 v7, 0x12c

    :goto_3
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_4
    invoke-virtual {p0, v9, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->scanerPicturs(ZIZ)V

    goto :goto_0

    .line 149
    :cond_6
    const-wide/16 v7, 0x384

    goto :goto_3

    .line 157
    :cond_7
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 159
    array-length v5, v6

    .line 160
    .local v5, pictureNum:I
    move v2, p2

    .local v2, i:I
    :goto_5
    if-ge v2, v5, :cond_a

    .line 161
    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mCancel:Z
    invoke-static {v8}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 162
    iget-object v7, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v7}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->removeMessages(I)V

    goto :goto_0

    .line 165
    :cond_8
    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    aget-object v9, v6, v2

    #calls: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->makeBestPhotoItem(Ljava/io/File;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    invoke-static {v8, v9, p3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$300(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;Ljava/io/File;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    move-result-object v1

    .line 166
    .local v1, bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    if-nez v1, :cond_9

    .line 160
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 167
    :cond_9
    iget-object v8, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->mHandler:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;
    invoke-static {v8}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;->access$100(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService;)Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;

    move-result-object v8

    invoke-virtual {v8, v10, v1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 169
    .end local v1           #bestPhotoItem:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    :cond_a
    invoke-virtual {p0, v7, v5, p3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$2;->scanerPicturs(ZIZ)V

    goto/16 :goto_0

    .line 150
    .end local v2           #i:I
    .end local v5           #pictureNum:I
    :catch_0
    move-exception v7

    goto :goto_4
.end method
