.class public Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;
.super Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;
.source "PhotoShareDownloadCompleteListener.java"


# static fields
.field private static final WAKE_LOCK_LABEL:Ljava/lang/String; = "Gallery PhotoShare DownLoad"


# instance fields
.field private mActivity:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "galleryActivity"

    .prologue
    .line 20
    const-string v0, "Gallery PhotoShare DownLoad"

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;->mActivity:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public onProgressComplete(I)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/WakeLockHoldingProgressListener;->onProgressComplete(I)V

    .line 28
    if-ne p1, v8, :cond_0

    .line 29
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;->mActivity:Landroid/content/Context;

    const v3, 0x7f0d0424

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;->mActivity:Landroid/content/Context;

    const v7, 0x7f0d03f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    .line 34
    .local v1, themeContext:Landroid/view/ContextThemeWrapper;
    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 35
    return-void

    .line 31
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #themeContext:Landroid/view/ContextThemeWrapper;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;->mActivity:Landroid/content/Context;

    const v3, 0x7f0d0425

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method
