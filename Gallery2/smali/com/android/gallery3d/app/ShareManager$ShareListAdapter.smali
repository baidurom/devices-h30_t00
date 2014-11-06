.class Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private iconView:Landroid/widget/ImageView;

.field private labelView:Landroid/widget/TextView;

.field private manager:Landroid/content/pm/PackageManager;

.field private resolves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/gallery3d/app/ShareManager;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/ShareManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->this$0:Lcom/android/gallery3d/app/ShareManager;

    .line 432
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->context:Landroid/content/Context;

    .line 434
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->manager:Landroid/content/pm/PackageManager;

    .line 435
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->resolves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;
    invoke-static {v1}, Lcom/android/gallery3d/app/ShareManager;->access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 453
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 458
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->resolves:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 443
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->manager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x7f100207

    const v7, 0x7f100206

    const/4 v6, 0x0

    .line 463
    move-object v3, p2

    .line 464
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    .line 466
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    .line 468
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    if-nez v4, :cond_2

    .line 469
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040077

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 470
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    .line 471
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    .line 473
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;
    invoke-static {v4}, Lcom/android/gallery3d/app/ShareManager;->access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 474
    .local v0, addonCount:I
    if-ge p1, v0, :cond_3

    .line 475
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->this$0:Lcom/android/gallery3d/app/ShareManager;

    #getter for: Lcom/android/gallery3d/app/ShareManager;->mAddOnItems:Ljava/util/List;
    invoke-static {v4}, Lcom/android/gallery3d/app/ShareManager;->access$000(Lcom/android/gallery3d/app/ShareManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/ShareManager$IShareItem;

    .line 476
    .local v2, item:Lcom/android/gallery3d/app/ShareManager$IShareItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    invoke-interface {v2}, Lcom/android/gallery3d/app/ShareManager$IShareItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/android/gallery3d/app/ShareManager$IShareItem;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    .end local v2           #item:Lcom/android/gallery3d/app/ShareManager$IShareItem;
    :goto_0
    iput-object v6, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    .line 485
    iput-object v6, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    .line 486
    return-object v3

    .line 479
    :cond_3
    sub-int/2addr p1, v0

    .line 480
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->resolves:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 481
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->iconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->manager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    iget-object v4, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->labelView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->manager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setResolves(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, resolves:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/ShareManager$ShareListAdapter;->resolves:Ljava/util/List;

    .line 439
    return-void
.end method
