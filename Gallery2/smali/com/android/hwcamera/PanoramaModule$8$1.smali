.class Lcom/android/hwcamera/PanoramaModule$8$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/PanoramaModule$8;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule$8;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$8$1;->this$1:Lcom/android/hwcamera/PanoramaModule$8;

    iput p2, p0, Lcom/android/hwcamera/PanoramaModule$8$1;->val$progress:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule$8$1;->this$1:Lcom/android/hwcamera/PanoramaModule$8;

    iget-object v0, v0, Lcom/android/hwcamera/PanoramaModule$8;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;
    invoke-static {v0}, Lcom/android/hwcamera/PanoramaModule;->access$2600(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/PanoProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/PanoramaModule$8$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setProgress(I)V

    .line 799
    return-void
.end method
