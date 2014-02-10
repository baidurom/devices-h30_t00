.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, appScale:F
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 802
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 804
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 805
    .local v3, rect:Landroid/graphics/Rect;
    aget v4, v2, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 806
    aget v4, v2, v8

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 807
    aget v4, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 808
    aget v4, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 810
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 813
    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v5, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v5, v5, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1, v5, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    .line 814
    return v8
.end method
