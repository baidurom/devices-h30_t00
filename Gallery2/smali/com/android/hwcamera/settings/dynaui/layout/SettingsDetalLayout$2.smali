.class Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;
.super Ljava/lang/Object;
.source "SettingsDetalLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->inflateChild(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;

.field final synthetic val$item:Lcom/android/hwcamera/settings/MenuItem;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$mModeadpter:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;Landroid/widget/SimpleAdapter;Ljava/util/List;Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->this$0:Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;

    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$mModeadpter:Landroid/widget/SimpleAdapter;

    iput-object p3, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$item:Lcom/android/hwcamera/settings/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 70
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->this$0:Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$mModeadpter:Landroid/widget/SimpleAdapter;

    #calls: Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->changeRadioImg(ILandroid/widget/SimpleAdapter;)V
    invoke-static {v0, p3, v1}, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;->access$000(Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout;ILandroid/widget/SimpleAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$item:Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->getParentItem()Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/SettingsDetalLayout$2;->val$item:Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->getParentItem()Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuItem;->onClick(Z)V

    .line 73
    :cond_0
    return-void
.end method
