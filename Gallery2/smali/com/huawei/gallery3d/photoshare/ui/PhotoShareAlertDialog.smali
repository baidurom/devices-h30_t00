.class public Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;
.super Ljava/lang/Object;
.source "PhotoShareAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;
    }
.end annotation


# static fields
.field private static final mAddPhotoItemIds:[I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;

.field private mTitle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mAddPhotoItemIds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x30t 0x4t 0xdt 0x7ft
        0x31t 0x4t 0xdt 0x7ft
        0x32t 0x4t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mActivity:Landroid/app/Activity;

    .line 24
    const v0, 0x7f0d042e

    iput v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mTitle:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;)Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mAddPhotoItemIds:[I

    return-object v0
.end method


# virtual methods
.method public setListener(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mListener:Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$OnItemClickedListener;

    .line 46
    return-void
.end method

.method public showDialog()V
    .locals 6

    .prologue
    .line 28
    sget-object v4, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mAddPhotoItemIds:[I

    array-length v2, v4

    .line 29
    .local v2, length:I
    new-array v1, v2, [Ljava/lang/String;

    .line 30
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 32
    sget-object v4, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mAddPhotoItemIds:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;->mTitle:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;

    invoke-direct {v5, p0}, Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog$1;-><init>(Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialog;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 42
    return-void
.end method
