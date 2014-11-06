.class Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickFillInIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x15


# instance fields
.field fillInIntent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "fillInIntent"

    .prologue
    .line 415
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 416
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 417
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 420
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 422
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    .line 423
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 433
    iget v2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->this$0:Landroid/widget/RemoteViews;

    #getter for: Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v2}, Landroid/widget/RemoteViews;->access$100(Landroid/widget/RemoteViews;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    const-string v2, "RemoteViews"

    const-string v3, "The method setOnLongClickFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_2
    if-ne v1, p1, :cond_3

    .line 442
    const v2, 0x1020244

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    .line 443
    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 444
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;

    invoke-direct {v0, p0, p3}, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 487
    .local v0, listener:Landroid/view/View$OnLongClickListener;
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string v0, "SetOnLongClickFillInIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 426
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    return-void
.end method
