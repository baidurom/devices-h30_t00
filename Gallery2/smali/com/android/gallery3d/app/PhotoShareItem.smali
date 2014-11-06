.class public Lcom/android/gallery3d/app/PhotoShareItem;
.super Ljava/lang/Object;
.source "PhotoShareItem.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$IShareItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;
    }
.end annotation


# instance fields
.field private final REQUEST_PHOTOSHARE_LOGIN:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    .line 26
    iput p2, p0, Lcom/android/gallery3d/app/PhotoShareItem;->REQUEST_PHOTOSHARE_LOGIN:I

    .line 27
    const v0, 0x7f0d03f6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoShareItem;->label:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getGalleryIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoShareItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoShareItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoShareItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public onClicked()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isHiCloudLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isNeedTriggerHiCloudAutoLogOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoShareSwitchOpen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "needShare"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/huawei/gallery3d/photoshare/PhotoShareLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoShareItem;->REQUEST_PHOTOSHARE_LOGIN:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;->onItemClicked()V

    goto :goto_0
.end method

.method public setOnItemClickedListener(Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoShareItem;->mListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    .line 49
    return-void
.end method
