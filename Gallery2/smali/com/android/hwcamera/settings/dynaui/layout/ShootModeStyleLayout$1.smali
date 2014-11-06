.class Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;
.super Ljava/lang/Object;
.source "ShootModeStyleLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->inflateGridView(Landroid/widget/GridView;Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$mModeadpter:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;Ljava/util/List;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->this$0:Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;

    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->val$mModeadpter:Landroid/widget/SimpleAdapter;

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
    .line 66
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->this$0:Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;

    iget-object v1, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->val$items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->val$mModeadpter:Landroid/widget/SimpleAdapter;

    #calls: Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->changeRadioImg(Ljava/util/List;ILandroid/widget/SimpleAdapter;)V
    invoke-static {v0, v1, p3, v2}, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;->access$000(Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout;Ljava/util/List;ILandroid/widget/SimpleAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/ShootModeStyleLayout$1;->val$items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    .line 68
    return-void
.end method
