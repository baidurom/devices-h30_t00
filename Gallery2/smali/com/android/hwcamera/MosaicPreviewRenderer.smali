.class public final Lcom/android/hwcamera/MosaicPreviewRenderer;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I = null

.field private static final DEBUG:Z = false

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MosaicPreviewRenderer"


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLandscape:Z

.field private mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    return-void

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 2
    .parameter "tex"
    .parameter "w"
    .parameter "h"
    .parameter "isLandscape"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 193
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 194
    iput p2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mWidth:I

    .line 195
    iput p3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mHeight:I

    .line 196
    iput-boolean p4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaRealtimeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 199
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;-><init>(Lcom/android/hwcamera/MosaicPreviewRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/MosaicPreviewRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/MosaicPreviewRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/MosaicPreviewRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/MosaicPreviewRenderer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/MosaicPreviewRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->draw()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method static synthetic access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 234
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 235
    const-string v1, "MosaicPreviewRenderer"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 249
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 250
    .local v5, numConfig:[I
    sget-object v2, Lcom/android/hwcamera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    aget v10, v5, v4

    .line 255
    .local v10, numConfigs:I
    if-gtz v10, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 260
    .local v9, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/android/hwcamera/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private draw()V
    .locals 0

    .prologue
    .line 229
    invoke-static {}, Lcom/android/hwcamera/MosaicRenderer;->step()V

    .line 230
    return-void
.end method


# virtual methods
.method public alignFrameSync()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 222
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 210
    return-void
.end method

.method public showPreviewFrame()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public showPreviewFrameSync()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglHandler:Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 214
    return-void
.end method
