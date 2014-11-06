.class final Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;
.super Ljava/lang/Object;
.source "PhotoShareUtils.java"

# interfaces
.implements Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->createChooseAddPictureDialog(Landroid/app/Activity;Ljava/io/File;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$camearPicture:Ljava/io/File;

.field final synthetic val$mActivity:Landroid/app/Activity;

.field final synthetic val$requestCamera:I

.field final synthetic val$requestMultipick:I


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/io/File;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$requestMultipick:I

    iput-object p3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$camearPicture:Ljava/io/File;

    iput p4, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$requestCamera:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClicked(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 376
    :goto_0
    return-void

    .line 353
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHOTOSHARE_GET_CONTENT"

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 355
    .local v1, localIntent:Landroid/content/Intent;
    const-string v2, "photoshare-path"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$requestMultipick:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 359
    .end local v1           #localIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHOTOSHARE_GET_CONTENT"

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 361
    .restart local v1       #localIntent:Landroid/content/Intent;
    const-string v2, "photoshare-path"

    const-string v3, "/photoshare/all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$requestMultipick:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 366
    .end local v1           #localIntent:Landroid/content/Intent;
    :pswitch_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .restart local v1       #localIntent:Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$camearPicture:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$2;->val$requestCamera:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v1           #localIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 370
    .local v0, localActivityNotFoundException:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in createChooseAddPictureDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0430
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
