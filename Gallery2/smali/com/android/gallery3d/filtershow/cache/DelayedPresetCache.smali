.class public Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;
.super Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;
.source "DelayedPresetCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final COMPUTE_PRESET:I = 0x1

.field private static final NEW_PRESET:I


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessingHandler:Landroid/os/Handler;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V
    .locals 3
    .parameter "loader"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;I)V

    .line 29
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache$1;-><init>(Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageProcessing"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 50
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 59
    :goto_0
    return v3

    .line 52
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;

    .line 53
    .local v0, cache:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->compute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V

    .line 54
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, uimsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public quitHandlerThread()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 84
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 89
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method protected willCompute(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)V
    .locals 3
    .parameter "cache"

    .prologue
    const/4 v2, 0x1

    .line 71
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->setBusy(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/DelayedPresetCache;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
