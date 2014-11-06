.class public Lcom/android/gallery3d/ui/ImportCompleteListener;
.super Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;
.source "ImportCompleteListener.java"


# static fields
.field private static final WAKE_LOCK_LABEL:Ljava/lang/String; = "Gallery Album Import"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "galleryActivity"

    .prologue
    .line 31
    const-string v0, "Gallery Album Import"

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private goToImportedAlbum()V
    .locals 4

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, pathOfImportedAlbum:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ImportCompleteListener;->getActivity()Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onProgressComplete(I)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->onProgressComplete(I)V

    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    const v0, 0x7f0d02e3

    .line 40
    .local v0, message:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ImportCompleteListener;->goToImportedAlbum()V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ImportCompleteListener;->getActivity()Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 45
    return-void

    .line 42
    .end local v0           #message:I
    :cond_0
    const v0, 0x7f0d02e4

    .restart local v0       #message:I
    goto :goto_0
.end method
