.class Lcom/android/hwcamera/settings/MenuController$1;
.super Ljava/lang/Object;
.source "MenuController.java"

# interfaces
.implements Lcom/android/hwcamera/settings/MenuItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/MenuController;->makeItem(Lcom/android/hwcamera/MenuIconListPreference;IZ)Lcom/android/hwcamera/settings/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/MenuController;

.field final synthetic val$currentIndex:I

.field final synthetic val$pref:Lcom/android/hwcamera/MenuIconListPreference;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/MenuController;Lcom/android/hwcamera/MenuIconListPreference;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    iput-object p2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    iput p3, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$currentIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/hwcamera/settings/MenuItem;Z)V
    .locals 4
    .parameter "item"
    .parameter "revert"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    #getter for: Lcom/android/hwcamera/settings/MenuController;->mPreferenceMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/hwcamera/settings/MenuController;->access$000(Lcom/android/hwcamera/settings/MenuController;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 384
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getChildViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 385
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-virtual {v2}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, index:I
    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/android/hwcamera/settings/MenuItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    goto :goto_0

    .line 393
    .end local v0           #index:I
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    #getter for: Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;
    invoke-static {v1}, Lcom/android/hwcamera/settings/MenuController;->access$100(Lcom/android/hwcamera/settings/MenuController;)Lcom/android/hwcamera/settings/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/hwcamera/settings/MenuInflater;->inflateItems(Lcom/android/hwcamera/settings/MenuItem;Z)V

    goto :goto_0

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-virtual {v1}, Lcom/android/hwcamera/MenuIconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_shooting_mode_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    #getter for: Lcom/android/hwcamera/settings/MenuController;->mMenuInflater:Lcom/android/hwcamera/settings/MenuInflater;
    invoke-static {v1}, Lcom/android/hwcamera/settings/MenuController;->access$100(Lcom/android/hwcamera/settings/MenuController;)Lcom/android/hwcamera/settings/MenuInflater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuInflater;->popupDismissed()V

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    #calls: Lcom/android/hwcamera/settings/MenuController;->hasEntries(Lcom/android/hwcamera/MenuIconListPreference;)Z
    invoke-static {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->access$200(Lcom/android/hwcamera/settings/MenuController;Lcom/android/hwcamera/MenuIconListPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-virtual {v2}, Lcom/android/hwcamera/MenuIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/MenuIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 401
    .restart local v0       #index:I
    iget v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$currentIndex:I

    if-eq v0, v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    iget v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$currentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/MenuIconListPreference;->setValueIndex(I)V

    .line 403
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->reloadPreference(Lcom/android/hwcamera/MenuIconListPreference;)V

    .line 404
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuController$1;->this$0:Lcom/android/hwcamera/settings/MenuController;

    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuController$1;->val$pref:Lcom/android/hwcamera/MenuIconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->onSettingChanged(Lcom/android/hwcamera/MenuIconListPreference;)V

    goto/16 :goto_0
.end method
