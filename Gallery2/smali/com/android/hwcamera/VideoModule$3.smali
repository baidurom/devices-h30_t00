.class Lcom/android/hwcamera/VideoModule$3;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
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
    .line 774
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$3;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$3;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3200(Lcom/android/hwcamera/VideoModule;)V

    .line 778
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$3;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1900(Lcom/android/hwcamera/VideoModule;)V

    .line 779
    return-void
.end method
