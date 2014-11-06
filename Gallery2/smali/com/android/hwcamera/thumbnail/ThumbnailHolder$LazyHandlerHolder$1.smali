.class final Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder$1;
.super Ljava/lang/Object;
.source "ThumbnailHolder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/thumbnail/ThumbnailHolder$LazyHandlerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 42
    :pswitch_0
    #calls: Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->cleanLastThumbnail()V
    invoke-static {}, Lcom/android/hwcamera/thumbnail/ThumbnailHolder;->access$000()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
