.class Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$2;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$2;->this$1:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread$2;->this$1:Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;

    iget-object v1, v1, Lcom/android/gallery3d/data/LocationClustering$LocationDivideThread;->this$0:Lcom/android/gallery3d/data/LocationClustering;

    #getter for: Lcom/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/data/LocationClustering;->access$800(Lcom/android/gallery3d/data/LocationClustering;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 336
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    const v1, 0x7f0d02a4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 338
    return-void
.end method
