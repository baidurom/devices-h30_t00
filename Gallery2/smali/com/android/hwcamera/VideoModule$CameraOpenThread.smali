.class public Lcom/android/hwcamera/VideoModule$CameraOpenThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraOpenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method protected constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$CameraOpenThread;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$CameraOpenThread;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->openCamera()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1400(Lcom/android/hwcamera/VideoModule;)V

    .line 448
    return-void
.end method
