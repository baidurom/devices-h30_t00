.class Lcom/android/hwcamera/ui/ColorEffect$2;
.super Ljava/lang/Object;
.source "ColorEffect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$effects:Ljava/util/List;

.field final synthetic val$mModeadpter:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    iput-object p2, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->val$mModeadpter:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;

    iput-object p3, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->val$effects:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->isEnable:Z
    invoke-static {v1}, Lcom/android/hwcamera/ui/ColorEffect;->access$400(Lcom/android/hwcamera/ui/ColorEffect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->collapseCameraControls()V

    .line 129
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->hidehideColorEffectContentDelayed()V
    invoke-static {v1}, Lcom/android/hwcamera/ui/ColorEffect;->access$500(Lcom/android/hwcamera/ui/ColorEffect;)V

    .line 130
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    iget-object v2, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->val$mModeadpter:Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->changeRadioImg(ILandroid/widget/SimpleAdapter;)V
    invoke-static {v1, p3, v2}, Lcom/android/hwcamera/ui/ColorEffect;->access$600(Lcom/android/hwcamera/ui/ColorEffect;ILandroid/widget/SimpleAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->val$effects:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/ui/ColorEffect;->access$100(Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraActivity;->updateColorEffect(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/hwcamera/ui/ColorEffect$2;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #setter for: Lcom/android/hwcamera/ui/ColorEffect;->mCurrentColorEffect:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/hwcamera/ui/ColorEffect;->access$702(Lcom/android/hwcamera/ui/ColorEffect;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
