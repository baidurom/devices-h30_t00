.class public Lcom/android/gallery3d/data/UriImage$UriImageRequest;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/UriImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/UriImage;ILcom/android/gallery3d/util/GalleryUtils$Params;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "params"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput p2, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mType:I

    .line 537
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    .line 538
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    .locals 6
    .parameter "jc"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mType:I

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const-string v0, "UriImage"

    const-string v1, "UriImageRequest:got null mUri or mParams"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    .line 549
    :goto_0
    return-object v0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/UriImage;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    iget-object v0, v0, Lcom/android/gallery3d/data/UriImage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v0, :cond_2

    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$600(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    iget-object v5, v0, Lcom/android/gallery3d/data/UriImage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->mParams:Lcom/android/gallery3d/util/GalleryUtils$Params;

    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v0}, Lcom/android/gallery3d/data/UriImage;->access$600(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/data/UriImage;->access$700(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->this$0:Lcom/android/gallery3d/data/UriImage;

    #getter for: Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/data/UriImage;->access$800(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/UriImage$UriImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v0

    return-object v0
.end method
