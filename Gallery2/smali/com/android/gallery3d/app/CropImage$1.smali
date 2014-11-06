.class Lcom/android/gallery3d/app/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 236
    return-void
.end method

.method public onTabSelected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    .local v0, tabItem:I
    if-ne v0, v3, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #setter for: Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/CropImage;->access$002(Lcom/android/gallery3d/app/CropImage;Z)Z

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->updateIntentExtras()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$100(Lcom/android/gallery3d/app/CropImage;)V

    .line 230
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #calls: Lcom/android/gallery3d/app/CropImage;->setCropParameters()V
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$200(Lcom/android/gallery3d/app/CropImage;)V

    .line 231
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/ui/CropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->reset()V

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;
    invoke-static {v1}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/ui/CropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->invalidate()V

    .line 233
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #setter for: Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/CropImage;->access$002(Lcom/android/gallery3d/app/CropImage;Z)Z

    goto :goto_0

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$1;->this$0:Lcom/android/gallery3d/app/CropImage;

    #setter for: Lcom/android/gallery3d/app/CropImage;->mIsWallpaperFixed:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/CropImage;->access$002(Lcom/android/gallery3d/app/CropImage;Z)Z

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 217
    return-void
.end method
