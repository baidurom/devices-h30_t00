.class Lcom/android/hwcamera/tips/TipsService$Toast$1;
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
    .line 342
    iput-object p1, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    iget-object v0, v0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    #getter for: Lcom/android/hwcamera/tips/TipsService;->mToastContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/tips/TipsService;->access$300(Lcom/android/hwcamera/tips/TipsService;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    #getter for: Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/tips/TipsService$Toast;->access$200(Lcom/android/hwcamera/tips/TipsService$Toast;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    #setter for: Lcom/android/hwcamera/tips/TipsService$Toast;->mToast:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/android/hwcamera/tips/TipsService$Toast;->access$202(Lcom/android/hwcamera/tips/TipsService$Toast;Landroid/view/View;)Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    iget-object v0, v0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    #setter for: Lcom/android/hwcamera/tips/TipsService;->mShownToastTip:Lcom/android/hwcamera/tips/TipsService$Tip;
    invoke-static {v0, v2}, Lcom/android/hwcamera/tips/TipsService;->access$402(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Tip;)Lcom/android/hwcamera/tips/TipsService$Tip;

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    iget-object v0, v0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    #setter for: Lcom/android/hwcamera/tips/TipsService;->mShownToastView:Lcom/android/hwcamera/tips/TipsService$Toast;
    invoke-static {v0, v2}, Lcom/android/hwcamera/tips/TipsService;->access$502(Lcom/android/hwcamera/tips/TipsService;Lcom/android/hwcamera/tips/TipsService$Toast;)Lcom/android/hwcamera/tips/TipsService$Toast;

    .line 351
    iget-object v0, p0, Lcom/android/hwcamera/tips/TipsService$Toast$1;->this$1:Lcom/android/hwcamera/tips/TipsService$Toast;

    iget-object v0, v0, Lcom/android/hwcamera/tips/TipsService$Toast;->this$0:Lcom/android/hwcamera/tips/TipsService;

    #calls: Lcom/android/hwcamera/tips/TipsService;->showNextToast()V
    invoke-static {v0}, Lcom/android/hwcamera/tips/TipsService;->access$600(Lcom/android/hwcamera/tips/TipsService;)V

    .line 352
    return-void
.end method
