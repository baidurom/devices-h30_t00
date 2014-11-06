.class public Lcom/android/gallery3d/ui/ShareExecutor;
.super Ljava/lang/Object;
.source "ShareExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;,
        Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;
    }
.end annotation


# static fields
.field public static final KEY_CONTAIN_VOICEIMAGE:Ljava/lang/String; = "KEY_CONTAIN_VOICEIMAGE"

.field public static final KEY_PATH_ARRAY:Ljava/lang/String; = "KEY_PATH_ARRAY"

.field public static final KEY_VI_NOT_WANT_VIDEO_ONLY:Ljava/lang/String; = "KEY_VI_NOT_WANT_VIDEO_ONLY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static convertShareItems(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;)V
    .locals 18
    .parameter
    .parameter "activity"
    .parameter "executor"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity;",
            "Lcom/android/gallery3d/ui/MenuExecutor;",
            "Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-nez p2, :cond_0

    .line 80
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->onProcessDone(Ljava/util/ArrayList;)V

    .line 136
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->shouldConvertVI()Z

    move-result v3

    .line 85
    .local v3, shouldConvertVI:Z
    invoke-interface/range {p3 .. p3}, Lcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;->shouldAddWaterMark()Z

    move-result v7

    .line 86
    .local v7, shouldAddWM:Z
    if-eqz v3, :cond_1

    sget-object v14, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->SHARE_TRANS_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    .line 88
    .local v14, style:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    :goto_1
    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p1}, Lcom/android/gallery3d/util/ImageVideoTranser;->getVoiceImageCountInArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v17

    .line 89
    .local v17, voiceImageCount:I
    :goto_2
    mul-int/lit8 v1, v17, 0x63

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v5, v1, v2

    .line 91
    .local v5, maxProgress:I
    new-instance v1, Lcom/android/gallery3d/ui/ShareExecutor$2;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/ui/ShareExecutor$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;ZLcom/android/gallery3d/ui/ShareExecutor$ShareExecutorListener;ILcom/android/gallery3d/ui/MenuExecutor;Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setShareProcessor(Lcom/android/gallery3d/ui/MenuExecutor$ShareProgressListener;)V

    .line 132
    move v13, v3

    .line 133
    .local v13, showDialog:Z
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v16, data:Landroid/os/Bundle;
    const-string v1, "key-customprogress"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const v9, 0x7f10022d

    const v10, 0x7f0d026d

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p2

    move-object/from16 v15, p0

    invoke-virtual/range {v8 .. v16}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZLcom/android/gallery3d/ui/MenuExecutorFactory$Style;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0

    .line 86
    .end local v5           #maxProgress:I
    .end local v13           #showDialog:Z
    .end local v14           #style:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    .end local v16           #data:Landroid/os/Bundle;
    .end local v17           #voiceImageCount:I
    :cond_1
    sget-object v14, Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;->NORMAL_STYLE:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;

    goto :goto_1

    .line 88
    .restart local v14       #style:Lcom/android/gallery3d/ui/MenuExecutorFactory$Style;
    :cond_2
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public static createListViewDialog(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v5, 0x1

    .line 51
    new-instance v2, Lcom/android/gallery3d/ui/ShareExecutor$1;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/ui/ShareExecutor$1;-><init>(Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;)V

    .line 57
    .local v2, dialogListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0d0495

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f0d0494

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    .line 58
    .local v0, choices:[Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0493

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d026c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 63
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method

.method public static requestForUserConfirmForVI(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;I)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "shareType"

    .prologue
    .line 67
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;->onUserConfirm(Z)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    .line 70
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/ShareExecutor;->createListViewDialog(Landroid/content/Context;Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 71
    .local v0, shareDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 73
    .end local v0           #shareDialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/ShareExecutor$UserVIListener;->onUserConfirm(Z)V

    goto :goto_0
.end method
