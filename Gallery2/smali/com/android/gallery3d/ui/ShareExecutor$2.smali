.class final Lcom/android/gallery3d/ui/ShareExecutor$2;
.super Ljava/lang/Object;
.source "ShareExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ShareExecutor;->convertShareItems(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field dataManager:Lcom/android/gallery3d/data/DataManager;

.field finishedProgress:I

.field outputFileDir:Ljava/io/File;

.field uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$listener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;

.field final synthetic val$maxProgress:I

.field final synthetic val$shouldAddWM:Z

.field final synthetic val$shouldConvertVI:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;ZLcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;ILcom/android/gallery3d/ui/MenuExecutor;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-boolean p2, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$shouldConvertVI:Z

    iput-object p3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;

    iput p4, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$maxProgress:I

    iput-object p5, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    iput-boolean p6, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$shouldAddWM:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->uris:Ljava/util/ArrayList;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->dataManager:Lcom/android/gallery3d/data/DataManager;

    .line 95
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$shouldConvertVI:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/util/ImageVideoTranser;->getWorkSpaceFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->outputFileDir:Ljava/io/File;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onProcessDone()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->uris:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->onProcessDone(Ljava/util/ArrayList;)V

    .line 128
    return-void
.end method

.method public process(Lcom/android/gallery3d/data/Path;)V
    .locals 8
    .parameter "path"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->dataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 100
    .local v1, mo:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    .line 101
    iget v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    .line 123
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;

    invoke-interface {v3, v1}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->onProgress(Lcom/android/gallery3d/data/MediaObject;)V

    .line 107
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$shouldConvertVI:Z

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->uris:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    iget v5, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$maxProgress:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v7, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->outputFileDir:Ljava/io/File;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/gallery3d/util/ImageVideoTranser;->translateVoiceImageToVideo(Lcom/android/gallery3d/data/MediaObject;IILcom/android/gallery3d/ui/MenuExecutor;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    .line 121
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$maxProgress:I

    div-int v0, v3, v4

    .line 122
    .local v0, index:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->updateProgress(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 111
    .end local v0           #index:I
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$shouldAddWM:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v3}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForItem(Lcom/android/gallery3d/data/MediaObject;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    new-instance v2, Lcom/android/gallery3d/util/WaterMarkMaker;

    invoke-direct {v2}, Lcom/android/gallery3d/util/WaterMarkMaker;-><init>()V

    .line 113
    .local v2, waterMarkMaker:Lcom/android/gallery3d/util/WaterMarkMaker;
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->uris:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->val$listener:Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getWaterMarkedPic(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    goto :goto_1

    .line 117
    .end local v2           #waterMarkMaker:Lcom/android/gallery3d/util/WaterMarkMaker;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->uris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/ShareExecutor$2;->finishedProgress:I

    goto :goto_1
.end method
