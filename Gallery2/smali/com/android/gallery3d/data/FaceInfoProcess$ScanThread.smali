.class Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;
.super Ljava/lang/Thread;
.source "FaceInfoProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceInfoProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanThread"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 1
    .parameter "resolver"
    .parameter "app"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mActive:Z

    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mResolver:Landroid/content/ContentResolver;

    .line 231
    iput-object p2, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 232
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 236
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 238
    iget-object v9, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->getAllImageNotScan(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)[I
    invoke-static {v9, v10}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$200(Landroid/content/ContentResolver;Lcom/android/gallery3d/app/GalleryApp;)[I

    move-result-object v5

    .line 241
    .local v5, imageIds:[I
    if-eqz v5, :cond_0

    array-length v9, v5

    if-nez v9, :cond_2

    .line 242
    :cond_0
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanFinish()V
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$300()V

    .line 243
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyContentChanged(I)V
    invoke-static {v12}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$400(I)V

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 248
    .local v7, manager:Lcom/android/gallery3d/data/DataManager;
    array-length v8, v5

    .line 249
    .local v8, numToScan:I
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanBegin(I)V
    invoke-static {v8}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$500(I)V

    .line 250
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, v5

    if-ge v3, v9, :cond_4

    .line 252
    :try_start_0
    iget-boolean v9, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mActive:Z

    if-eqz v9, :cond_1

    .line 255
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanProgress(I)V
    invoke-static {v8}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$600(I)V

    .line 256
    iget-object v9, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v9}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v9

    aget v10, v5, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/data/FaceManage;->getFaceInfo(IZ)[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v2

    .line 257
    .local v2, faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    sget-object v9, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    aget v10, v5, v3

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 258
    .local v6, localImagePath:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocalImage;

    .line 259
    .local v4, image:Lcom/android/gallery3d/data/LocalImage;
    invoke-static {}, Lcom/android/gallery3d/util/BlackList;->getInstance()Lcom/android/gallery3d/util/BlackList;

    move-result-object v0

    .line 260
    .local v0, blackList:Lcom/android/gallery3d/util/BlackList;
    iget-object v9, v4, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/util/BlackList;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 261
    add-int/lit8 v8, v8, -0x1

    .line 250
    .end local v0           #blackList:Lcom/android/gallery3d/util/BlackList;
    .end local v2           #faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    .end local v4           #image:Lcom/android/gallery3d/data/LocalImage;
    .end local v6           #localImagePath:Lcom/android/gallery3d/data/Path;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    .restart local v0       #blackList:Lcom/android/gallery3d/util/BlackList;
    .restart local v2       #faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    .restart local v4       #image:Lcom/android/gallery3d/data/LocalImage;
    .restart local v6       #localImagePath:Lcom/android/gallery3d/data/Path;
    :cond_3
    aget v9, v5, v3

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->addReqCommand([Lcom/android/gallery3d/data/FaceInfo;I)V
    invoke-static {v2, v9}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$700([Lcom/android/gallery3d/data/FaceInfo;I)V

    .line 265
    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/LocalImage;->setFaceInfos([Lcom/android/gallery3d/data/FaceInfo;)V

    .line 266
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V

    .line 267
    aget v9, v5, v3

    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyContentChanged(I)V
    invoke-static {v9}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$400(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 269
    .end local v0           #blackList:Lcom/android/gallery3d/util/BlackList;
    .end local v2           #faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    .end local v4           #image:Lcom/android/gallery3d/data/LocalImage;
    .end local v6           #localImagePath:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "FaceInfoProcess"

    const-string v10, "ScanFaceInfo Exception"

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 274
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyScanFinish()V
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$300()V

    .line 276
    #calls: Lcom/android/gallery3d/data/FaceInfoProcess;->notifyContentChanged(I)V
    invoke-static {v12}, Lcom/android/gallery3d/data/FaceInfoProcess;->access$400(I)V

    goto :goto_0
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/data/FaceInfoProcess$ScanThread;->mActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
