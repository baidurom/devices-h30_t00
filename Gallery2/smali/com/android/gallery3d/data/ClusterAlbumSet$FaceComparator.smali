.class Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/ClusterAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private mUnnamed:Ljava/lang/String;

.field private mUntagged:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "unNamed"
    .parameter "unTagged"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    .line 620
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/ClusterAlbum;Lcom/android/gallery3d/data/ClusterAlbum;)I
    .locals 10
    .parameter "item1"
    .parameter "item2"

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 623
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 624
    .local v3, personId1:I
    invoke-virtual {p2}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 625
    .local v4, personId2:I
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$200(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/data/PersonManage;->getSortKey(I)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, sortKey1:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$200(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/gallery3d/data/PersonManage;->getSortKey(I)Ljava/lang/String;

    move-result-object v6

    .line 627
    .local v6, sortKey2:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, name1:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, name2:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 641
    .end local v1           #name1:Ljava/lang/String;
    .end local v2           #name2:Ljava/lang/String;
    .end local v3           #personId1:I
    .end local v4           #personId2:I
    .end local v5           #sortKey1:Ljava/lang/String;
    .end local v6           #sortKey2:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 631
    .restart local v1       #name1:Ljava/lang/String;
    .restart local v2       #name2:Ljava/lang/String;
    .restart local v3       #personId1:I
    .restart local v4       #personId2:I
    .restart local v5       #sortKey1:Ljava/lang/String;
    .restart local v6       #sortKey2:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v8

    .line 632
    goto :goto_0

    .line 633
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 635
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUntagged:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->mUnnamed:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v7, v8

    .line 636
    goto :goto_0

    .line 638
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 640
    .end local v1           #name1:Ljava/lang/String;
    .end local v2           #name2:Ljava/lang/String;
    .end local v3           #personId1:I
    .end local v4           #personId2:I
    .end local v5           #sortKey1:Ljava/lang/String;
    .end local v6           #sortKey2:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    check-cast p1, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;->compare(Lcom/android/gallery3d/data/ClusterAlbum;Lcom/android/gallery3d/data/ClusterAlbum;)I

    move-result v0

    return v0
.end method
