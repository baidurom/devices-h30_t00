.class Lcom/android/hwcamera/tips/TipsService$Toast$2;
.super Ljava/lang/Object;
.source "TipsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/tips/TipsService$Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/tips/TipsService$Toast;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/tips/TipsService$Toast;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$Toast$2;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$2;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    #getter for: Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/tips/TipsService$Toast;->access$200(Lcom/android/hwcamera/tips/TipsService$Toast;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    return-void
.end method
