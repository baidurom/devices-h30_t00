.class Lcom/android/gallery3d/app/DmrController$6;
.super Landroid/content/AsyncQueryHandler;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/DmrController;->initializeActionBar(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;

.field final synthetic val$actionBarTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmrController;Landroid/content/ContentResolver;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$6;->this$0:Lcom/android/gallery3d/app/DmrController;

    iput-object p3, p0, Lcom/android/gallery3d/app/DmrController$6;->val$actionBarTitle:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 422
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, displayName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController$6;->val$actionBarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$6;->this$0:Lcom/android/gallery3d/app/DmrController;

    #setter for: Lcom/android/gallery3d/app/DmrController;->mTitle:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/DmrController;->access$2202(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 436
    return-void

    .restart local v0       #displayName:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 428
    goto :goto_0

    .line 434
    .end local v0           #displayName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method
