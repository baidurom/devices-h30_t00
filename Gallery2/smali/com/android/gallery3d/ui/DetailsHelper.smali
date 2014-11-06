.class public Lcom/android/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;,
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .parameter "activity"
    .parameter "rootPane"
    .parameter "source"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/DialogDetailsView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    .line 50
    return-void
.end method

.method public static cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 93
    sget-object v1, Lcom/android/gallery3d/ui/DetailsHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V

    .line 95
    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 107
    sparse-switch p1, :sswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :sswitch_0
    const v0, 0x7f0d02b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_1
    const v0, 0x7f0d02b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_2
    const v0, 0x7f0d02b7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_3
    const v0, 0x7f0d02b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_4
    const v0, 0x7f0d02b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :sswitch_5
    const v0, 0x7f0d02ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_6
    const v0, 0x7f0d02bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_7
    const v0, 0x7f0d02bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_8
    const v0, 0x7f0d02bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :sswitch_9
    const v0, 0x7f0d02bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_a
    const v0, 0x7f0d02c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_b
    const v0, 0x7f0d02c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :sswitch_c
    const v0, 0x7f0d02c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :sswitch_d
    const v0, 0x7f0d02c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :sswitch_e
    const v0, 0x7f0d02c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :sswitch_f
    const v0, 0x7f0d02c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :sswitch_10
    const v0, 0x7f0d02c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :sswitch_11
    const v0, 0x7f0d02c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :sswitch_12
    const v0, 0x7f0d0398

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :sswitch_13
    const v0, 0x7f0d034e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 149
    :sswitch_14
    const v0, 0x7f0d0351

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :sswitch_15
    const v0, 0x7f0d0352

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 153
    :sswitch_16
    const v0, 0x7f0d0355

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_b
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_9
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x65 -> :sswitch_10
        0x66 -> :sswitch_11
        0x67 -> :sswitch_d
        0x68 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6a -> :sswitch_c
        0x96 -> :sswitch_12
        0x97 -> :sswitch_13
        0x98 -> :sswitch_14
        0x99 -> :sswitch_15
        0x9a -> :sswitch_16
        0xc8 -> :sswitch_3
        0x3e6 -> :sswitch_6
        0x3e7 -> :sswitch_a
    .end sparse-switch
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 87
    sget-object v1, Lcom/android/gallery3d/ui/DetailsHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->pause()V

    .line 89
    :cond_0
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;Z)Ljava/lang/String;
    .locals 1
    .parameter "activity"
    .parameter "latlng"
    .parameter "listener"
    .parameter "resolveAllInfo"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;
    .locals 2
    .parameter "activity"
    .parameter "latlng"
    .parameter "listener"
    .parameter "resolveAllInfo"
    .parameter "isResponseOnUIThread"

    .prologue
    .line 76
    sget-object v1, Lcom/android/gallery3d/ui/DetailsHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    .line 82
    :goto_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->hide()V

    .line 104
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    instance-of v1, v1, Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    .line 55
    .local v0, view:Lcom/android/gallery3d/ui/GLView;
    sub-int v1, p4, p2

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 57
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 59
    .end local v0           #view:Lcom/android/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method public reloadDetails()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails()V

    .line 63
    return-void
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 67
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->show()V

    .line 100
    return-void
.end method
