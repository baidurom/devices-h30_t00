.class Lcom/android/hwcamera/PhotoModule$29;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 6167
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$29;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6170
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$29;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->showSmallPreviewTipsUI()V
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$8500(Lcom/android/hwcamera/PhotoModule;)V

    .line 6171
    return-void
.end method
