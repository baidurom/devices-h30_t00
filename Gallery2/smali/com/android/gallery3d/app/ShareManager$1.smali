.class Lcom/android/gallery3d/app/ShareManager$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ShareManager;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ShareManager;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
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
    .line 211
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    .local v1, addonCount:I
    move/from16 v0, p3

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;

    move-result-object v11

    move/from16 v0, p3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/app/ShareManager$IShareItem;

    .line 214
    .local v6, item:Lcom/android/gallery3d/app/ShareManager$IShareItem;
    invoke-interface {v6}, Lcom/android/gallery3d/app/ShareManager$IShareItem;->onClicked()V

    .line 215
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$100(Lcom/android/gallery3d/app/ShareManager;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 216
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$100(Lcom/android/gallery3d/app/ShareManager;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 264
    .end local v6           #item:Lcom/android/gallery3d/app/ShareManager$IShareItem;
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sub-int p3, p3, v1

    .line 223
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$200(Lcom/android/gallery3d/app/ShareManager;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareHistoryFileName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/gallery3d/app/ShareManager;->access$300(Lcom/android/gallery3d/app/ShareManager;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/provider/ActivityChooser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/gallery3d/provider/ActivityChooser;

    move-result-object v4

    .line 225
    .local v4, dataModel:Lcom/android/gallery3d/provider/ActivityChooser;
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/provider/ActivityChooser;->chooseActivityInfo(I)Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    move-result-object v5

    .line 226
    .local v5, info:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v11, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v3, chosenName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v2, choiceIntent:Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    const/high16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    iget v12, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    iput v12, v11, Lcom/android/gallery3d/app/ShareManager;->mSelectIntentType:I

    .line 233
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$400(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 235
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$500(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 236
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mOnShareTargetSelectedListener:Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$500(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/android/gallery3d/app/ShareManager$OnShareTargetSelectedListener;->onShareTargetSelected(Landroid/content/Intent;)Z

    .line 237
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mListener:Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$400(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;

    move-result-object v11

    iget-object v12, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareListAdapter:Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;
    invoke-static {v12}, Lcom/android/gallery3d/app/ShareManager;->access$600(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v12

    iget v13, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->action:I

    iget v14, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    invoke-interface {v11, v2, v12, v13, v14}, Lcom/android/gallery3d/app/ShareManager$OnItemClickedListener;->onItemClicked(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 261
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$100(Lcom/android/gallery3d/app/ShareManager;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 262
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$100(Lcom/android/gallery3d/app/ShareManager;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 238
    :cond_4
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mSingleIntentShare:Z
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$700(Lcom/android/gallery3d/app/ShareManager;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mIntent:Landroid/content/Intent;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$800(Lcom/android/gallery3d/app/ShareManager;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 244
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    iget v12, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    #calls: Lcom/android/gallery3d/app/ShareManager;->filterShareList(I)V
    invoke-static {v11, v12}, Lcom/android/gallery3d/app/ShareManager;->access$900(Lcom/android/gallery3d/app/ShareManager;I)V

    .line 246
    iget v10, v5, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->type:I

    .line 247
    .local v10, type:I
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #calls: Lcom/android/gallery3d/app/ShareManager;->shouldCovertVI(I)Z
    invoke-static {v11, v10}, Lcom/android/gallery3d/app/ShareManager;->access$1100(Lcom/android/gallery3d/app/ShareManager;I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    .line 248
    .local v9, shouldTransToVideo:Z
    :goto_2
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mShareProcessListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$1000(Lcom/android/gallery3d/app/ShareManager;)Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #calls: Lcom/android/gallery3d/app/ShareManager;->shouldAddWaterMark()Z
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$1200(Lcom/android/gallery3d/app/ShareManager;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x1

    .line 249
    .local v8, shouldAddWaterMark:Z
    :goto_3
    if-eqz v9, :cond_7

    .line 250
    new-instance v7, Lcom/android/gallery3d/app/ShareManager$1$1;

    invoke-direct {v7, p0, v8, v3}, Lcom/android/gallery3d/app/ShareManager$1$1;-><init>(Lcom/android/gallery3d/app/ShareManager$1;ZLandroid/content/ComponentName;)V

    .line 256
    .local v7, mShareUserVIListener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mActivity:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/gallery3d/app/ShareManager;->access$200(Lcom/android/gallery3d/app/ShareManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v7, v10}, Lcom/android/gallery3d/ui/ShareExecutor;->requestForUserConfirmForVI(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;I)V

    goto :goto_1

    .line 247
    .end local v7           #mShareUserVIListener:Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;
    .end local v8           #shouldAddWaterMark:Z
    .end local v9           #shouldTransToVideo:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 248
    .restart local v9       #shouldTransToVideo:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 258
    .restart local v8       #shouldAddWaterMark:Z
    :cond_7
    iget-object v11, p0, Lcom/android/gallery3d/app/ShareManager$1;->this$0:Lcom/android/gallery3d/app/ShareManager;

    const/4 v12, 0x0

    #calls: Lcom/android/gallery3d/app/ShareManager;->handleSingleIntentShareInternal(ZZLandroid/content/ComponentName;)V
    invoke-static {v11, v12, v8, v3}, Lcom/android/gallery3d/app/ShareManager;->access$1300(Lcom/android/gallery3d/app/ShareManager;ZZLandroid/content/ComponentName;)V

    goto :goto_1
.end method
