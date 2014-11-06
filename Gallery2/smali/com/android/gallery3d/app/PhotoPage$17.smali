.class Lcom/android/gallery3d/app/PhotoPage$17;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$17;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked()V
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$17;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->onPhotoShareItemClicked()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$6500(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 3079
    return-void
.end method
