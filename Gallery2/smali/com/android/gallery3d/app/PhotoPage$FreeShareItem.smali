.class Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/ShareManager$IShareItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeShareItem"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 2
    .parameter

    .prologue
    .line 3010
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3011
    iget-object v0, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0d03bb

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->label:Ljava/lang/String;

    .line 3012
    iget-object v0, p1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 3013
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3017
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage;->onFlingUp()V

    .line 3028
    return-void
.end method
