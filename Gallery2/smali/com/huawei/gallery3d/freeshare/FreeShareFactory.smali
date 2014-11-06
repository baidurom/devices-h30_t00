.class public Lcom/huawei/gallery3d/freeshare/FreeShareFactory;
.super Ljava/lang/Object;
.source "FreeShareFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FreeShare_Factory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;
    .locals 1
    .parameter "galleryActivity"

    .prologue
    .line 8
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFreeShare()Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 11
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-direct {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;-><init>()V

    goto :goto_0
.end method
