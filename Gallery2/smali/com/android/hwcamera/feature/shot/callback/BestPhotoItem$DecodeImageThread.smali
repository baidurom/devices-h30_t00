.class Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;
.super Ljava/lang/Thread;
.source "BestPhotoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageThread"
.end annotation


# instance fields
.field private largePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

.field final synthetic this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)V
    .locals 0
    .parameter
    .parameter "loadingLargePictureRunable"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->largePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 100
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->largePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    invoke-virtual {v5}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->loadingLargePicture()V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 102
    .local v3, t1:J
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    #getter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->path:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->largePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    invoke-virtual {v6}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->getPictureWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->makeBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v3

    .line 104
    .local v1, decodeTime:J
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode thumbnail cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v5, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->access$102(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 106
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->this$0:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    const/4 v6, 0x1

    #setter for: Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isLargeThumbnailDecoded:Z
    invoke-static {v5, v6}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->access$202(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Z)Z

    .line 107
    iget-object v5, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->largePictureRunable:Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;

    invoke-virtual {v5, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->showLargePicture(Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method
