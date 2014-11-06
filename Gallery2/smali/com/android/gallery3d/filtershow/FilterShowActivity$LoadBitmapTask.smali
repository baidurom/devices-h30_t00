.class Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field mTinyPlanetButton:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "button"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 563
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    .line 564
    #calls: Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    .line 565
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 569
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    aget-object v3, p1, v2

    iget v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadBitmap(Landroid/net/Uri;I)V

    .line 570
    sget-boolean v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->OMRONJNI_LOADED:Z

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v3

    #calls: Lcom/android/gallery3d/filtershow/FilterShowActivity;->canFaceBeautifer(Landroid/graphics/Bitmap;)Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 572
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$500(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/PanelController;

    move-result-object v3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFaceButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$400(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/filtershow/PanelController;->enableWarningView(Landroid/view/View;Z)V

    .line 574
    .end local v0           #result:Z
    :cond_0
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->publishProgress([Ljava/lang/Object;)V

    .line 575
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    #getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->queryLightCycle360()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .restart local v0       #result:Z
    :cond_1
    move v1, v2

    .line 572
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$602(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 599
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 580
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 583
    .local v0, filters:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v3, 0x7f1000cc

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, loading:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
