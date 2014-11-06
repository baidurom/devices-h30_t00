.class Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;
.super Ljava/lang/Object;
.source "AbstractSettingsListStyleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;->inflate(Landroid/content/Context;Lcom/android/hwcamera/settings/MenuItem;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;

.field final synthetic val$item:Lcom/android/hwcamera/settings/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;->this$0:Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout;

    iput-object p2, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;->val$item:Lcom/android/hwcamera/settings/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/settings/dynaui/layout/AbstractSettingsListStyleLayout$1;->val$item:Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->getParentItem()Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuItem;->onClick(Z)V

    .line 50
    return-void
.end method
