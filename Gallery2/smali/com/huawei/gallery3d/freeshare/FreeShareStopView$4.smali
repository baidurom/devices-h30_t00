.class Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;
.super Ljava/lang/Object;
.source "FreeShareStopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareStopView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$100(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->selectDevice(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)V

    .line 90
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$100(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->cancelShare()V

    .line 91
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->hide()Z

    .line 92
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03b2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$200(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, toastString:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$4;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    return-void
.end method
