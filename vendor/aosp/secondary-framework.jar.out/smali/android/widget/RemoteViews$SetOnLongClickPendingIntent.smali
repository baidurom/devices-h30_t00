.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnLongClickPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x14


# instance fields
.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "pendingIntent"

    .prologue
    .line 743
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 744
    iput p2, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 745
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 746
    const-string v0, "RemoteViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetOnLongClickPendingIntent viewId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pendingIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 750
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 757
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 772
    iget v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 773
    .local v2, target:Landroid/view/View;
    if-nez v2, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    #getter for: Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z
    invoke-static {v3}, Landroid/widget/RemoteViews;->access$100(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setOnLongClickPendingIntent for collection item (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 784
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 792
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v1, 0x0

    .line 793
    .local v1, listener:Landroid/view/View$OnLongClickListener;
    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 794
    new-instance v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;

    .end local v1           #listener:Landroid/view/View$OnLongClickListener;
    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 818
    .restart local v1       #listener:Landroid/view/View$OnLongClickListener;
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    const-string v0, "SetOnLongClickPendingIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 760
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 768
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 764
    goto :goto_0
.end method
