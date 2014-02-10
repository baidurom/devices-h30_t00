.class Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v8, 0x3f00

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 450
    .local v1, parent:Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/widget/AdapterView;

    if-nez v7, :cond_0

    instance-of v7, v1, Landroid/appwidget/AppWidgetHostView;

    if-nez v7, :cond_0

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1       #parent:Landroid/view/View;
    goto :goto_0

    .line 454
    :cond_0
    instance-of v7, v1, Landroid/appwidget/AppWidgetHostView;

    if-nez v7, :cond_1

    if-nez v1, :cond_2

    .line 457
    :cond_1
    const-string v6, "RemoteViews"

    const-string v7, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_1
    return v5

    .line 462
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/app/PendingIntent;

    if-nez v7, :cond_3

    .line 463
    const-string v6, "RemoteViews"

    const-string v7, "Attempting setLongOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 468
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 470
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    iget v0, v7, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 472
    .local v0, appScale:F
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 473
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 475
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 476
    .local v4, rect:Landroid/graphics/Rect;
    aget v7, v3, v5

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 477
    aget v7, v3, v6

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 478
    aget v5, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 479
    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 481
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 482
    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;

    iget-object v7, v7, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v5, p1, v2, v7}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move v5, v6

    .line 483
    goto :goto_1
.end method
