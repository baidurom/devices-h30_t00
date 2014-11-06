.class Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMenuVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$402(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$502(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 431
    return-void
.end method
