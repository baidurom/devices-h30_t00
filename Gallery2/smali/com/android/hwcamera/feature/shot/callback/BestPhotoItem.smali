.class public Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
.super Ljava/lang/Object;
.source "BestPhotoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;
    }
.end annotation


# instance fields
.field private bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

.field private isLargeThumbnailDecoded:Z

.field private isPressed:Z

.field private isSelected:Z

.field private largeThumbnail:Landroid/graphics/Bitmap;

.field private path:Ljava/lang/String;

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0
    .parameter "thumbnail"
    .parameter "largeThumbnail"
    .parameter "path"
    .parameter "isLargeThumbnailDecoded"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->thumbnail:Landroid/graphics/Bitmap;

    .line 24
    iput-object p2, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    .line 25
    iput-object p3, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->path:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isLargeThumbnailDecoded:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isLargeThumbnailDecoded:Z

    return p1
.end method

.method public static newInstance(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    .locals 1
    .parameter "thumbnail"
    .parameter "largeThumbnail"
    .parameter "path"
    .parameter "isDecodeLargeThumbnail"

    .prologue
    .line 30
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 31
    .local v0, item:Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;
    return-object v0
.end method


# virtual methods
.method public getBestPhotoView()Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    return-object v0
.end method

.method public getLargeThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isLargeThumbnailDecoded()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isLargeThumbnailDecoded:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isPressed:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isSelected:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->thumbnail:Landroid/graphics/Bitmap;

    .line 58
    iput-object v1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method

.method public setBestPhotoView(Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;)V
    .locals 1
    .parameter "bestPhotoView"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setBestPhotoItem(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;)V

    .line 73
    return-void
.end method

.method public setBestPhotoViewPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isPressed:Z

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->bestPhotoView:Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoView;->setPressed(Z)V

    .line 64
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isSelected:Z

    .line 40
    return-void
.end method

.method public showLargePicture(Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)V
    .locals 1
    .parameter "mLoadingLargePictureRunable"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->isLargeThumbnailDecoded:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;->largeThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;->showLargePicture(Landroid/graphics/Bitmap;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;-><init>(Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem;Lcom/android/hwcamera/feature/shot/callback/BestPhotoService$LoadingLargePictureRunable;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoItem$DecodeImageThread;->start()V

    goto :goto_0
.end method
