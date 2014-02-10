.class public Lcom/huawei/android/widget/RemoteViewsEx;
.super Ljava/lang/Object;
.source "RemoteViewsEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnLongClickFillInIntent(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 0
    .parameter "remoteViews"
    .parameter "viewId"
    .parameter "fillInIntent"

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setOnLongClickFillInIntent(ILandroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static setOnLongClickPendingIntent(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 0
    .parameter "remoteViews"
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 27
    return-void
.end method
