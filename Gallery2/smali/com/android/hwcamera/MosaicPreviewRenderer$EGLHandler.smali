.class Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;
.super Landroid/os/Handler;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/MosaicPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_ALIGN_FRAME_SYNC:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_RELEASE:I = 0x4

.field public static final MSG_SHOW_PREVIEW_FRAME:I = 0x2

.field public static final MSG_SHOW_PREVIEW_FRAME_SYNC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/MosaicPreviewRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method

.method private doAlignFrame()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$200(Lcom/android/hwcamera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/MosaicRenderer;->setWarping(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$200(Lcom/android/hwcamera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/MosaicRenderer;->preprocess([F)V

    .line 110
    invoke-static {}, Lcom/android/hwcamera/MosaicRenderer;->transferGPUtoCPU()V

    .line 111
    invoke-static {}, Lcom/android/hwcamera/MosaicRenderer;->updateMatrix()V

    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #calls: Lcom/android/hwcamera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$300(Lcom/android/hwcamera/MosaicPreviewRenderer;)V

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 114
    return-void
.end method

.method private doInitGL()V
    .locals 8

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3, v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$602(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 131
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2, v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$402(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 132
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 133
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 136
    .local v1, version:[I
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    const-string v2, "MosaicPreviewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 142
    .local v0, attribList:[I
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    #calls: Lcom/android/hwcamera/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$800(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v2, v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$702(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 143
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$700(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2, v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$902(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 146
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$900(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$900(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 147
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$700(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v6}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$1000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2, v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$502(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 151
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 152
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v6}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$900(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 156
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/android/hwcamera/MosaicRenderer;->init()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v2, v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$102(Lcom/android/hwcamera/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 160
    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mWidth:I
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$1100(Lcom/android/hwcamera/MosaicPreviewRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mHeight:I
    invoke-static {v3}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$1200(Lcom/android/hwcamera/MosaicPreviewRenderer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$1300(Lcom/android/hwcamera/MosaicPreviewRenderer;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/MosaicRenderer;->reset(IIZ)V

    .line 161
    return-void

    .line 141
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private doRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$900(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 169
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$502(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$902(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 171
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #setter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$402(Lcom/android/hwcamera/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 173
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$1400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 174
    return-void
.end method

.method private doShowPreviewFrame()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$100(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$200(Lcom/android/hwcamera/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/MosaicRenderer;->setWarping(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$200(Lcom/android/hwcamera/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/MosaicRenderer;->preprocess([F)V

    .line 123
    invoke-static {}, Lcom/android/hwcamera/MosaicRenderer;->updateMatrix()V

    .line 124
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #calls: Lcom/android/hwcamera/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$300(Lcom/android/hwcamera/MosaicPreviewRenderer;)V

    .line 125
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$600(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$400(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$500(Lcom/android/hwcamera/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 126
    return-void
.end method

.method private releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->doInitGL()V

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    goto :goto_0

    .line 89
    :pswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->doAlignFrame()V

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-direct {p0}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->doRelease()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 187
    iget-object v0, p0, Lcom/android/hwcamera/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/android/hwcamera/MosaicPreviewRenderer;

    #getter for: Lcom/android/hwcamera/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;->access$000(Lcom/android/hwcamera/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 188
    return-void
.end method
