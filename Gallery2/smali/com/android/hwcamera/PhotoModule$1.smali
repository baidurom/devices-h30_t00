.class Lcom/android/hwcamera/PhotoModule$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
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
    .line 256
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$1;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$1;->this$0:Lcom/android/hwcamera/PhotoModule;

    const v2, 0x7f10020b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 261
    .local v0, ctv:Landroid/widget/CheckedTextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 264
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$1;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    return-void
.end method
