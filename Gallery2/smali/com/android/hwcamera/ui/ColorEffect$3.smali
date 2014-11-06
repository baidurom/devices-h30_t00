.class Lcom/android/hwcamera/ui/ColorEffect$3;
.super Ljava/lang/Object;
.source "ColorEffect.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/ui/ColorEffect;->initListView(Ljava/util/List;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ui/ColorEffect;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$3;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$3;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$500(Lcom/android/hwcamera/ui/ColorEffect;)V

    .line 156
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "arg0"
    .parameter "scrollState"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$3;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->collapseCameraControls()V

    .line 140
    packed-switch p2, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$3;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$800(Lcom/android/hwcamera/ui/ColorEffect;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$3;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V
    invoke-static {v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$500(Lcom/android/hwcamera/ui/ColorEffect;)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
