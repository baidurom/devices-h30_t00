.class Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "MorphoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESUME_UI_AFTER_SAVE:I


# instance fields
.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

.field private mProgressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

.field private mProgressThread:Ljava/lang/Thread;

.field private mSaveHandle:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;

.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 2
    .parameter

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2170
    new-instance v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;Lcom/morpho/app/panorama_gp/MorphoPanorama$1;)V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mSaveHandle:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;

    .line 2168
    return-void
.end method

.method static synthetic access$1800(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2161
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->resumeUIAfterSave()V

    return-void
.end method

.method static synthetic access$2300(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2161
    invoke-virtual {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private resumeUIAfterSave()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2302
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPanoramaFinished()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 2303
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->showLastPhoto()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$3000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 2304
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2306
    iput-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2307
    iput-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2308
    iput-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    .line 2309
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$3100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2310
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 2311
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2313
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #setter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsProcessing:Z
    invoke-static {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$3202(Lcom/morpho/app/panorama_gp/MorphoPanorama;Z)Z

    .line 2315
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2189
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->finishAttachStillImageTask()V
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 2191
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->savePanoramaInputData()V
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 2192
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v7

    invoke-virtual {v7}, Lcom/morpho/core/MorphoPanoramaGP;->end()I

    move-result v6

    .line 2193
    .local v6, ret:I
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v7

    const/16 v8, 0xa

    aput v8, v7, v12

    .line 2194
    new-array v7, v12, [Ljava/lang/Integer;

    invoke-virtual {p0, v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 2195
    if-eqz v6, :cond_0

    .line 2196
    const-string v7, "HwCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MorphoPanorama:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "end() -> 0x%x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2216
    .local v1, c_rect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/morpho/core/MorphoPanoramaGP;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v6

    .line 2217
    if-eqz v6, :cond_1

    .line 2218
    const-string v7, "HwCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MorphoPanorama:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getClippingRect() -> 0x%x"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDateLong:J
    invoke-static {v8}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2224
    .local v0, c_file_path:Ljava/lang/String;
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v7

    aget v8, v7, v12

    add-int/lit8 v8, v8, 0x5

    aput v8, v7, v12

    .line 2225
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;

    invoke-direct {v8, p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressThread:Ljava/lang/Thread;

    .line 2237
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2239
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    invoke-static {v7, v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2400(Lcom/morpho/app/panorama_gp/MorphoPanorama;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2242
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;
    invoke-static {v8}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1300(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preview.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2245
    .local v5, p_file_path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2247
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2248
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPreviewImage:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {v7, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2249
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2266
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #p_file_path:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 2250
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #p_file_path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2251
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2252
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 2253
    .local v2, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2252
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2250
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2161
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 2287
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:SaveOutputImageTask.onPostExecute!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v0

    aput v2, v0, v3

    .line 2289
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2291
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->finish()I

    .line 2292
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    const/4 v1, 0x0

    #setter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;
    invoke-static {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1502(Lcom/morpho/app/panorama_gp/MorphoPanorama;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;

    .line 2293
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mSaveHandle:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2295
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCType:I
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2700(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSCLenearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2800(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2298
    :cond_0
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:SaveOutputImageTask.onPostExecute finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2161
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2271
    const-string v0, "HwCamera"

    const-string v1, "MorphoPanorama:SaveOutputImageTask.onPreExecute!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 2273
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mPanoramaPreviewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2274
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideBackGround()V

    .line 2275
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const v1, 0x7f100135

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    .line 2276
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const v1, 0x7f1001f0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLinearLayout;

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2277
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    const v1, 0x7f1001eb

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLinearLayout;

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 2278
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->rotateProgressLayout()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2600(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V

    .line 2279
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2280
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2281
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2282
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgressCircle:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2283
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    .line 2318
    const-string v0, "HwCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MorphoPanorama save image progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->mProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2322
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2161
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
