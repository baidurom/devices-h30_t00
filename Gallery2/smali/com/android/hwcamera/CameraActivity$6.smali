.class Lcom/android/hwcamera/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraActivity;->relocateView(Landroid/view/View;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity$6;->this$0:Lcom/android/hwcamera/CameraActivity;

    iput-object p2, p0, Lcom/android/hwcamera/CameraActivity$6;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$6;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;FFJ)V

    .line 917
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity$6;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 918
    return-void
.end method