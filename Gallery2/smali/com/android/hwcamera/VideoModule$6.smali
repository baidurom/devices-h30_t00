.class Lcom/android/hwcamera/VideoModule$6;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$6;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$6;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoModule;->onShutterButtonClick()V

    .line 1416
    return-void
.end method
