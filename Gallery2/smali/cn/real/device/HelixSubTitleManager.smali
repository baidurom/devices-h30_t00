.class public Lcn/real/device/HelixSubTitleManager;
.super Ljava/lang/Object;
.source "HelixSubTitleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;
    }
.end annotation


# static fields
.field private static final RET_FAIL:I = -0x3

.field private static final RET_FILE_BADFORMAT:I = -0x2

.field private static final RET_FILE_NOTEXIST:I = -0x1

.field private static final RET_OK:I = 0x0

.field public static final SUBTITLE_TYPE_DEFAULT:I = 0x0

.field public static final SUBTITLE_TYPE_EXTERNAL:I = 0x2

.field public static final SUBTITLE_TYPE_INTERNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HelixSubTitleManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentPosition:I

.field private mExternalSubtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalSubtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSubTitleType:I

.field private mSubTitleView:Landroid/view/View;

.field private mSubtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private myST:Lcn/real/device/HelixSubtitleService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "videoUri"
    .parameter "subTitleView"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    .line 48
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleView:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mUri:Landroid/net/Uri;

    .line 57
    iput-boolean v1, p0, Lcn/real/device/HelixSubTitleManager;->mIsPlaying:Z

    .line 60
    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput v1, p0, Lcn/real/device/HelixSubTitleManager;->mCurrentPosition:I

    .line 65
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Lcn/real/device/HelixSubTitleManager;->mUri:Landroid/net/Uri;

    .line 69
    iput-object p3, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleView:Landroid/view/View;

    .line 71
    iput v1, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcn/real/device/HelixSubTitleManager;->initInternalSubTitleList()V

    .line 78
    invoke-direct {p0}, Lcn/real/device/HelixSubTitleManager;->initExternalSubTitleList()V

    .line 79
    invoke-virtual {p0}, Lcn/real/device/HelixSubTitleManager;->initSubtitleList()V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcn/real/device/HelixSubTitleManager;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcn/real/device/HelixSubTitleManager;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcn/real/device/HelixSubTitleManager;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lcn/real/device/HelixSubTitleManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcn/real/device/HelixSubTitleManager;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$4(Lcn/real/device/HelixSubTitleManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcn/real/device/HelixSubTitleManager;->switchSubtitle(I)V

    return-void
.end method

.method private initExternalSubTitleList()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x0

    .line 164
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    const/4 v10, 0x0

    .line 169
    .local v10, videoPath:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 170
    const-string v0, "_data"

    aput-object v0, v2, v11

    .line 173
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 175
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 177
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 181
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-nez v10, :cond_3

    .line 240
    :cond_2
    :goto_1
    return-void

    .line 180
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 192
    :cond_3
    const/4 v9, 0x0

    .line 194
    .local v9, mSubTitleFileName:Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 195
    .local v8, iPos:I
    if-lez v8, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".srt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 199
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".smi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 206
    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 208
    :cond_6
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 215
    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    :cond_8
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ssa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 226
    :cond_a
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 233
    const-string v0, "file://"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 235
    :cond_c
    new-instance v7, Ljava/io/File;

    .end local v7           #file:Ljava/io/File;
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private initInternalSubTitleList()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    return-void
.end method

.method private initSubTitle(Ljava/lang/String;)V
    .locals 5
    .parameter "subTitleFileName"

    .prologue
    const/4 v4, 0x0

    .line 244
    if-eqz p1, :cond_1

    .line 245
    new-instance v1, Lcn/real/device/HelixSubtitleService;

    invoke-direct {v1}, Lcn/real/device/HelixSubtitleService;-><init>()V

    iput-object v1, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    .line 246
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v1, p1}, Lcn/real/device/HelixSubtitleService;->SetMediaURL(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, result:I
    if-nez v0, :cond_0

    .line 248
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleView:Landroid/view/View;

    check-cast v1, Lcn/real/device/SubTitleView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcn/real/device/SubTitleView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleView:Landroid/view/View;

    check-cast v1, Lcn/real/device/SubTitleView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcn/real/device/HelixSubtitleService;->SetView(Landroid/view/View;)I

    .line 272
    .end local v0           #result:I
    :goto_0
    return-void

    .line 253
    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v1}, Lcn/real/device/HelixSubtitleService;->Close()V

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    .line 255
    const-string v1, "HelixSubTitleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to Parse Subtitle File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    const-string v2, "Subtitle File happened to be Wrong!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    const-string v2, "Subtitle File Bad Format Found!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    const-string v2, "Some Subtitle File Lost!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    .end local v0           #result:I
    :cond_1
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    const-string v2, "No Subtitle File Found!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private switchSubtitle(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 276
    iget v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    if-eq v2, v3, :cond_0

    .line 278
    iget v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    if-ne v2, v4, :cond_0

    .line 279
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v2}, Lcn/real/device/HelixSubtitleService;->Close()V

    .line 281
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    .line 286
    :cond_0
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, subtitle:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 297
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 315
    :cond_1
    :goto_2
    return-void

    .line 289
    :cond_2
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    iput v3, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    goto :goto_2

    .line 288
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_4
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    iput v4, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    .line 301
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/real/device/HelixSubTitleManager;->initSubTitle(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    iget-object v3, p0, Lcn/real/device/HelixSubTitleManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Lcn/real/device/HelixSubtitleService;->SetPlayer(Landroid/media/MediaPlayer;)V

    .line 305
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    iget v3, p0, Lcn/real/device/HelixSubTitleManager;->mCurrentPosition:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcn/real/device/HelixSubtitleService;->OnSeek(J)V

    .line 307
    iget-boolean v2, p0, Lcn/real/device/HelixSubTitleManager;->mIsPlaying:Z

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v2}, Lcn/real/device/HelixSubtitleService;->OnPlay()V

    goto :goto_2

    .line 297
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public OnPause()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/real/device/HelixSubTitleManager;->mIsPlaying:Z

    .line 106
    iget v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPause()V

    .line 109
    :cond_0
    return-void
.end method

.method public OnPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, p0, Lcn/real/device/HelixSubTitleManager;->mIsPlaying:Z

    .line 85
    iget v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iput v1, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    .line 98
    :cond_0
    :goto_0
    iget v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPlay()V

    .line 101
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/real/device/HelixSubTitleManager;->initSubTitle(Ljava/lang/String;)V

    .line 94
    iput v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    goto :goto_0
.end method

.method public OnSeek(J)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 120
    iget v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0, p1, p2}, Lcn/real/device/HelixSubtitleService;->OnSeek(J)V

    .line 123
    :cond_0
    return-void
.end method

.method public OnStop()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/real/device/HelixSubTitleManager;->mIsPlaying:Z

    .line 114
    iget v0, p0, Lcn/real/device/HelixSubTitleManager;->mSubTitleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnStop()V

    .line 117
    :cond_0
    return-void
.end method

.method public SetSurfaceViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 135
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0, p1, p2}, Lcn/real/device/HelixSubtitleService;->SetSurfaceViewSize(II)V

    .line 138
    :cond_0
    return-void
.end method

.method public initSubtitleList()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 143
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 149
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 154
    .end local v0           #i:I
    :cond_1
    return-void

    .line 145
    .restart local v0       #i:I
    :cond_2
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mInternalSubtitleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    iget-object v2, p0, Lcn/real/device/HelixSubTitleManager;->mSubtitleList:Ljava/util/List;

    iget-object v1, p0, Lcn/real/device/HelixSubTitleManager;->mExternalSubtitleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 127
    iput-object p1, p0, Lcn/real/device/HelixSubTitleManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 129
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/real/device/HelixSubTitleManager;->myST:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0, p1}, Lcn/real/device/HelixSubtitleService;->SetPlayer(Landroid/media/MediaPlayer;)V

    .line 132
    :cond_0
    return-void
.end method

.method public showChooseSubtitleDialog()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 319
    new-instance v0, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;

    invoke-direct {v0, p0}, Lcn/real/device/HelixSubTitleManager$ChooseSubtitleAdapter;-><init>(Lcn/real/device/HelixSubTitleManager;)V

    .line 321
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v4, listView:Landroid/widget/ListView;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v2, emptyView:Landroid/widget/TextView;
    const v5, 0x1020004

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 329
    const-string v5, "There is no subtitle available"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/high16 v5, 0x41a0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 337
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcn/real/device/HelixSubTitleManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    const-string v6, "Choose Subtitle"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 339
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 340
    const-string v6, "Cancel"

    new-instance v7, Lcn/real/device/HelixSubTitleManager$1;

    invoke-direct {v7, p0}, Lcn/real/device/HelixSubTitleManager$1;-><init>(Lcn/real/device/HelixSubTitleManager;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 346
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 348
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcn/real/device/HelixSubTitleManager$2;

    invoke-direct {v5, p0, v1}, Lcn/real/device/HelixSubTitleManager$2;-><init>(Lcn/real/device/HelixSubTitleManager;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 361
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 362
    return-void
.end method
