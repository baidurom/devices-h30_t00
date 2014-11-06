.class Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "DmsSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmsSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmsSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/DmsSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/DmsSetPage;Lcom/android/gallery3d/app/DmsSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/DmsSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .parameter "loadingFailed"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/DmsSetPage;->access$1400(Lcom/android/gallery3d/app/DmsSetPage;I)V

    .line 437
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/DmsSetPage;->access$1600(Lcom/android/gallery3d/app/DmsSetPage;I)V

    .line 432
    return-void
.end method
