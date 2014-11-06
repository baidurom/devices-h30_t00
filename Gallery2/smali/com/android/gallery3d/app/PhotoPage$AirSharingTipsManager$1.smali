.class Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

.field final synthetic val$this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2813
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;->val$this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->hideTips(Z)V

    .line 2817
    return-void
.end method
