.class Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FreeShareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceInfoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method public constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/freeshare/client/device/DeviceInfo;>;"
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 737
    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;
    invoke-static {p1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 738
    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;
    invoke-static {p1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 739
    return-void
.end method

.method private updateItemView(ILandroid/view/View;)V
    .locals 8
    .parameter "index"
    .parameter "view"

    .prologue
    .line 767
    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/freeshare/client/device/DeviceInfo;

    .line 768
    .local v0, devices:Lcom/huawei/android/freeshare/client/device/DeviceInfo;
    const v5, 0x7f100208

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 769
    .local v1, imageView:Landroid/widget/ImageView;
    const v5, 0x7f1000ee

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 771
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getDeviceType()I

    move-result v4

    .line 772
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 780
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, name:Ljava/lang/String;
    const-string v5, "FreeShare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    return-void

    .line 774
    .end local v2           #name:Ljava/lang/String;
    :pswitch_0
    const v5, 0x7f020191

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDevices:Ljava/util/List;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 748
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 754
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 762
    .local v0, itemView:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$DeviceInfoAdapter;->updateItemView(ILandroid/view/View;)V

    .line 763
    return-object v0
.end method
