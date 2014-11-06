.class Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelixSubTitleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooseSubtitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/HelixSubTitleManager;


# direct methods
.method public constructor <init>(Lcn/real/device/HelixSubTitleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;->this$0:Lcn/real/device/HelixSubTitleManager;

    .line 366
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;->this$0:Lcn/real/device/HelixSubTitleManager;

    #getter for: Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;
    invoke-static {v0}, Lcn/real/device/HelixSubTitleManager;->access$0(Lcn/real/device/HelixSubTitleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 375
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;->this$0:Lcn/real/device/HelixSubTitleManager;

    #getter for: Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;
    invoke-static {v0}, Lcn/real/device/HelixSubTitleManager;->access$0(Lcn/real/device/HelixSubTitleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 379
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0xa

    .line 384
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;->this$0:Lcn/real/device/HelixSubTitleManager;

    #getter for: Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcn/real/device/HelixSubTitleManager;->access$1(Lcn/real/device/HelixSubTitleManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, listitem:Landroid/widget/TextView;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 386
    const/high16 v2, 0x4180

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 387
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 388
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 390
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;->this$0:Lcn/real/device/HelixSubTitleManager;

    #getter for: Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;
    invoke-static {v2}, Lcn/real/device/HelixSubTitleManager;->access$0(Lcn/real/device/HelixSubTitleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, subtitle:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-object v0
.end method
