.class Lcom/android/gallery3d/app/AlbumSetEmptyBackground$1;
.super Ljava/lang/Object;
.source "AlbumSetEmptyBackground.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetEmptyBackground;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$1;->this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$1;->this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    #getter for: Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->access$000(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.huawei.android.intent.action.photoshare.SWITCH"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->jumpToPage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "AlbumSetEmptyBackground"

    const-string v2, "unable to start HiCloud CloudPhoto Setting Activity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
