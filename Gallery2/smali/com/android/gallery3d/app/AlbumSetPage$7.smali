.class Lcom/android/gallery3d/app/AlbumSetPage$7;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->setupCameraButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    .line 699
    return-void
.end method
