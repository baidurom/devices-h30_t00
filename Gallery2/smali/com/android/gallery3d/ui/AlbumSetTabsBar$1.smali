.class Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;
.super Ljava/lang/Object;
.source "AlbumSetTabsBar.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SimpleTabWidget$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetTabsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 52
    const-string v0, "AlbumSetTab"

    const-string v1, "onTabReselected"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onTabSelected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    .line 40
    const-string v2, "AlbumSetTab"

    const-string v3, "onTabSelected"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->access$000(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 43
    .local v0, action:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, name:Ljava/lang/String;
    const-string v2, "AlbumSetTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    #setter for: Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I
    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->access$102(Lcom/android/gallery3d/ui/AlbumSetTabsBar;I)I

    .line 46
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mSelectedAction:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->access$100(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)I

    move-result v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setClusterType(I)V

    .line 47
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetTabsBar$1;->this$0:Lcom/android/gallery3d/ui/AlbumSetTabsBar;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetTabsBar;->mClusterRunner:Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;
    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetTabsBar;->access$000(Lcom/android/gallery3d/ui/AlbumSetTabsBar;)Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/AlbumSetTabsBar$ClusterRunner;->onClusterSelected(I)V

    .line 49
    .end local v0           #action:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 36
    const-string v0, "AlbumSetTab"

    const-string v1, "onTabUnselected"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
