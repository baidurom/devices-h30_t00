.class public Lcom/android/gallery3d/ui/MenuExecutorFactory;
.super Ljava/lang/Object;
.source "MenuExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutorFactory$2;,
        Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static create(Lcom/android/gallery3d/app/AbstractGalleryActivity;IILcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;Landroid/os/Bundle;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "activity"
    .parameter "titleId"
    .parameter "progressMax"
    .parameter "executor"
    .parameter "style"
    .parameter "data"

    .prologue
    .line 91
    sget-object v0, Lcom/android/gallery3d/ui/MenuExecutorFactory$2;->$SwitchMap$com$android$gallery3d$ui$MenuExecutorFactory$Style:[I

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutorFactory;->createNomalProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 93
    :pswitch_0
    invoke-static {p0, p1, p3, p5}, Lcom/android/gallery3d/ui/MenuExecutorFactory;->createPasteProgressDialog(Lcom/android/gallery3d/app/AbstractGalleryActivity;ILcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Bundle;)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-static {p0}, Lcom/android/gallery3d/ui/MenuExecutorFactory;->createShareTransProgressDialog(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static createNomalProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 27
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 28
    if-le p2, v2, :cond_0

    .line 29
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 30
    :cond_0
    return-object v0
.end method

.method private static createPasteProgressDialog(Lcom/android/gallery3d/app/AbstractGalleryActivity;ILcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Bundle;)Landroid/app/ProgressDialog;
    .locals 5
    .parameter "activity"
    .parameter "titleId"
    .parameter "executor"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 52
    invoke-static {p0, p3}, Lcom/android/gallery3d/ui/MenuExecutorFactory;->getPasteMessage(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, messageString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 56
    const v2, 0x7f0d038b

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 58
    const/4 v2, -0x1

    const v3, 0x7f0d026c

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;

    invoke-direct {v4, p0, p2}, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    return-object v0
.end method

.method private static createShareTransProgressDialog(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0d0496

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 77
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 78
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 80
    const-string v1, "%1d %%"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 82
    return-object v0
.end method

.method private static getPasteMessage(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .parameter "activity"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v3

    .line 37
    :cond_1
    const-string v4, "key-targetfilename"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, mediaSetName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 41
    const-string v3, "key-pastestate"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, pasteState:I
    if-ne v2, v6, :cond_2

    const v1, 0x7f0d03e5

    .line 44
    .local v1, messageStringId:I
    :goto_1
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 42
    .end local v1           #messageStringId:I
    :cond_2
    const v1, 0x7f0d03e6

    goto :goto_1
.end method
