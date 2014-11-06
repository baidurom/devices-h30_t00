.class Landroid/widget/RemoteViews$SetEmptyView;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetEmptyView"
.end annotation


# static fields
.field public static final TAG:I = 0x6


# instance fields
.field emptyViewId:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;II)V
    .locals 1
    .parameter
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 297
    iput p2, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    .line 298
    iput p3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    .line 299
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 301
    iput-object p1, p0, Landroid/widget/RemoteViews$SetEmptyView;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    .line 304
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 314
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 315
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 317
    check-cast v0, Landroid/widget/AdapterView;

    .line 319
    .local v0, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v3, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "SetEmptyView"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 307
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/widget/RemoteViews$SetEmptyView;->emptyViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return-void
.end method
