.class Lcom/android/hwcamera/VideoModule$8;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoModule;->initializeControlByIntent()V
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
    .line 3094
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$8;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$8;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 3099
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$8;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$8;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 3103
    :cond_0
    return-void
.end method
