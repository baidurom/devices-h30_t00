.class Lcom/android/hwcamera/ActivityBase$MyAppBridge;
.super Lcom/android/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/hwcamera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mIsHoldScreenNail:Z

.field private mServer:Lcom/android/gallery3d/app/AppBridge$Server;

.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 1
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AppBridge;-><init>()V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mIsHoldScreenNail:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setOrientationEnableWhenCapture(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 924
    :cond_0
    return-void
.end method

.method private setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 912
    :cond_0
    return-void
.end method

.method private setOrientationEnableWhenCapture(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setOrientationEnableWhenCapture(Z)V

    .line 928
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 920
    :cond_0
    return-void
.end method

.method private switchWithCaptureAnimation(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->switchWithCaptureAnimation(I)Z

    .line 916
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge$Server;->addSecureAlbumItem(ZI)V

    .line 908
    :cond_0
    return-void
.end method

.method public attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3

    .prologue
    .line 826
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v1, :cond_0

    .line 827
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 828
    new-instance v1, Lcom/android/hwcamera/CameraScreenNail;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/CameraScreenNail;-><init>(Lcom/android/hwcamera/CameraScreenNail$Listener;)V

    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 835
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v1

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/hwcamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020322

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/hwcamera/StaticBitmapScreenNail;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/StaticBitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public detachScreenNail()V
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mIsHoldScreenNail:Z

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 842
    :cond_0
    return-void
.end method

.method public draw(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/ActivityBase;->draw(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v7

    .line 901
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ActivityBase"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public holdHoldScreenNail()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mIsHoldScreenNail:Z

    .line 847
    :cond_0
    return-void
.end method

.method public isInMeteringRect(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    #calls: Lcom/android/hwcamera/ActivityBase;->isInMeteringRect(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->access$1000(Lcom/android/hwcamera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method public isStaticCamera()Z
    .locals 1

    .prologue
    .line 893
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->lockOrientation()V

    .line 948
    :cond_0
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->onCaptureTextureCopied()V

    .line 879
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ActivityBase;->onFullScreenChanged(Z)V

    .line 864
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->onPreviewTextureCopied()V

    .line 874
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    #calls: Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->access$900(Lcom/android/hwcamera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRenderForced()V

    .line 869
    return-void
.end method

.method public setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    .line 884
    return-void
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->unlockOrientation()V

    .line 944
    :cond_0
    return-void
.end method

.method public updateMeteringPos(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    #calls: Lcom/android/hwcamera/ActivityBase;->updateMeteringPos(IIZ)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->access$1100(Lcom/android/hwcamera/ActivityBase;IIZ)V

    .line 940
    return-void
.end method
