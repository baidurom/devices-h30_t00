.class public Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;,
        Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumSetView"


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlbumHeight:I

.field private mAlbumSetMyReceiveName:Lcom/android/gallery3d/ui/StringTexture;

.field private mAlbumSetMyShareName:Lcom/android/gallery3d/ui/StringTexture;

.field private mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

.field private mAlbumWidth:I

.field private mAnimatePressedUp:Z

.field private final mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mCheckedFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mCheckedFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mCheckedFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

.field protected mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

.field private final mFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInHiddenMode:Z

.field private mInSelectionMode:Z

.field private mInSelectionPrivateMode:Z

.field protected final mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhoneIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhotoShareAlbumSetBackground:Lcom/android/gallery3d/ui/ResourceTexture;

.field private mPhotoShareAlbumSetBackgroundHeight:I

.field private mPhotoShareAlbumSetNameMarginOffset:I

.field private final mPhotoShareFrameNonePiece:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhotoShareMyPhotoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhotoShareMyRecvIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhotoShareMyShareIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mPrivateFramePiece:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mSdcardIcon:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mUseCameraOverlay:Z

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 6
    .parameter "activity"
    .parameter "selectionManager"
    .parameter "slotView"
    .parameter "labelSpec"
    .parameter "placeholderColor"

    .prologue
    const v5, 0x7f0b00d6

    const v4, 0x7f0a003a

    const/4 v3, 0x1

    .line 113
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mUseCameraOverlay:Z

    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 115
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 116
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 117
    iput-object p4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 118
    iput p5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 120
    new-instance v1, Lcom/android/gallery3d/ui/ColorTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 121
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v1, v3, v3}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 122
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f02015f

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 124
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumWidth:I

    .line 126
    const v1, 0x7f0b008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumHeight:I

    .line 129
    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetNameMarginOffset:I

    .line 130
    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackgroundHeight:I

    .line 132
    const v1, 0x7f0d0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetMyShareName:Lcom/android/gallery3d/ui/StringTexture;

    .line 135
    const v1, 0x7f0d040a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetMyReceiveName:Lcom/android/gallery3d/ui/StringTexture;

    .line 139
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202a4

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareFrameNonePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 140
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020014

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 141
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020016

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 142
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020018

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 144
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020015

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 145
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020017

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 146
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020019

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 147
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020194

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPrivateFramePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 148
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200ec

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 149
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200ee

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 150
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200eb

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 151
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200ef

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 152
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200ed

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhoneIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 153
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200f0

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSdcardIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 154
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0202b5

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyPhotoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 155
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0202b7

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyShareIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 156
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0202b6

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyRecvIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 157
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    const v2, 0x7f0202b4

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackground:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 158
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0202aa

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

    return-object v0
.end method

.method private static checkContentTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 207
    instance-of v0, p0, Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 200
    instance-of v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private drawAlbumSetIcon(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 4
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "albumSetType"

    .prologue
    .line 441
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getAlbumeSetIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;

    move-result-object v0

    .line 442
    .local v0, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, x:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    sub-int v2, p3, v3

    .line 445
    .local v2, y:I
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 447
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    return-void
.end method

.method private drawAlbumSetPrivateIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPrivateFramePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 451
    .local v0, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v3

    sub-int v1, p2, v3

    .line 453
    .local v1, x:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    sub-int v2, p3, v3

    .line 454
    .local v2, y:I
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 456
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    return-void
.end method

.method private drawPhotoShareAlbumSetBackground(Lcom/android/gallery3d/ui/GLCanvas;IILcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "shareFolder"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackground:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 477
    .local v0, albumSetBackground:Lcom/android/gallery3d/ui/ResourceTexture;
    invoke-virtual {p4}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v6

    .line 478
    .local v6, mediaSetType:I
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, x:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackgroundHeight:I

    sub-int v3, p3, v1

    .line 481
    .local v3, y:I
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumWidth:I

    .line 482
    .local v4, w:I
    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackgroundHeight:I

    .local v5, h:I
    move-object v1, p1

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 485
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #w:I
    .end local v5           #h:I
    :cond_0
    return-void
.end method

.method private drawPhotoShareAlbumSetName(Lcom/android/gallery3d/ui/GLCanvas;IIILcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 10
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "albumSetType"
    .parameter "shareFolder"

    .prologue
    .line 459
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getAlbumeSetIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;

    move-result-object v6

    .line 460
    .local v6, icon:Lcom/android/gallery3d/ui/ResourceTexture;
    invoke-virtual {p5}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v7

    .line 461
    .local v7, mediaSetType:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetMyShareName:Lcom/android/gallery3d/ui/StringTexture;

    .line 462
    .local v0, albumSetName:Lcom/android/gallery3d/ui/StringTexture;
    const/4 v1, 0x2

    if-ne v1, v7, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetMyReceiveName:Lcom/android/gallery3d/ui/StringTexture;

    .line 465
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 466
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackgroundHeight:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v9

    sub-int/2addr v1, v9

    div-int/lit8 v8, v1, 0x2

    .line 467
    .local v8, photoshare_albumset_name_margin_top:I
    invoke-virtual {v6}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v1

    iget v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetNameMarginOffset:I

    add-int v2, v1, v9

    .line 468
    .local v2, x:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareAlbumSetBackgroundHeight:I

    sub-int v1, p3, v1

    add-int v3, v1, v8

    .line 469
    .local v3, y:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    .line 470
    .local v4, w:I
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v5

    .local v5, h:I
    move-object v1, p1

    .line 471
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 473
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #w:I
    .end local v5           #h:I
    .end local v8           #photoshare_albumset_name_margin_top:I
    :cond_1
    return-void
.end method

.method private drawPhotoShareNewFlagMark(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 12
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 288
    iget v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getContentFrame(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v6

    .line 289
    .local v6, checkedFrame:Lcom/android/gallery3d/ui/Texture;
    iget v11, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumWidth:I

    .line 290
    .local v11, w:I
    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumHeight:I

    .line 291
    .local v8, h:I
    sub-int v0, p4, v11

    div-int/lit8 v9, v0, 0x2

    .line 292
    .local v9, left:I
    if-nez v6, :cond_0

    .line 298
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-interface {v6}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v7

    .line 294
    .local v7, frameHeight:I
    sub-int v0, v7, v8

    div-int/lit8 v10, v0, 0x2

    .line 295
    .local v10, top:I
    int-to-float v0, v9

    int-to-float v1, v10

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 296
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareNewFlagPhoto:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 297
    neg-int v0, v9

    int-to-float v0, v0

    neg-int v1, v10

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 17
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v16

    .line 305
    .local v16, selected:Z
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getCheckedContentFrame(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v4

    .line 307
    .local v4, checkedFrameMask:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 308
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedPressFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 313
    .local v9, checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_0
    if-nez v4, :cond_3

    .line 345
    :goto_1
    return-void

    .line 308
    .end local v9           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedPressedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 310
    :cond_1
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mCheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .restart local v9       #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :goto_2
    goto :goto_0

    .end local v9           #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mUncheckedFrameIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_2

    .line 314
    .restart local v9       #checkedFrameIcon:Lcom/android/gallery3d/ui/Texture;
    :cond_3
    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v5

    .line 315
    .local v5, w:I
    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v6

    .line 316
    .local v6, h:I
    invoke-interface {v4}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v2

    sub-int v2, p4, v2

    div-int/lit8 v15, v2, 0x2

    .line 318
    .local v15, left:I
    int-to-float v2, v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 319
    if-eqz v16, :cond_5

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 322
    const v2, 0x3e4ccccd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 324
    :cond_4
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 329
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumHeight:I

    sub-int v2, v5, v2

    div-int/lit8 v14, v2, 0x2

    .line 330
    .local v14, iconTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumWidth:I

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v9}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    sub-int v13, v2, v3

    .line 331
    .local v13, iconLeft:I
    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 335
    const v2, 0x3f19999a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 338
    :cond_6
    invoke-interface {v9}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v10

    invoke-interface {v9}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 342
    :cond_7
    neg-int v2, v13

    int-to-float v2, v2

    neg-int v3, v14

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 344
    neg-int v2, v15

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto/16 :goto_1
.end method

.method private getAlbumeSetIcon(I)Lcom/android/gallery3d/ui/ResourceTexture;
    .locals 1
    .parameter "albumSetType"

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 437
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLocalSetIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 423
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mMtpIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 425
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPicasaIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 427
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhoneIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 429
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSdcardIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 431
    :pswitch_7
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyPhotoIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 433
    :pswitch_8
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyShareIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 435
    :pswitch_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareMyRecvIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z
    .locals 3
    .parameter "entry"

    .prologue
    .line 348
    iget-boolean v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isHidden:Z

    .line 350
    .local v0, isHidden:Z
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInHiddenMode:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    .line 354
    .end local v0           #isHidden:Z
    :cond_0
    return v0
.end method

.method private isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z
    .locals 3
    .parameter "entry"

    .prologue
    const/4 v0, 0x1

    .line 628
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 630
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderContentFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 8
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 487
    iget v0, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getContentFrame(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    .line 489
    .local v2, frame:Lcom/android/gallery3d/ui/Texture;
    if-nez v2, :cond_0

    .line 504
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-interface {v2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    .line 491
    .local v3, w:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    .line 492
    .local v4, h:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v6, v0, 0x2

    .line 493
    .local v6, left:I
    int-to-float v0, v6

    invoke-interface {p1, v0, v7}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 495
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 497
    const v0, 0x3e4ccccd

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 499
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 500
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 503
    :cond_2
    neg-int v0, v6

    int-to-float v0, v0

    invoke-interface {p1, v0, v7}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckedContentFrame(I)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "count"

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 622
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

    :goto_0
    return-object v0

    .line 613
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCheckedFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getContentFrame(I)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "count"

    .prologue
    .line 594
    packed-switch p1, :pswitch_data_0

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameMorePieces:Lcom/android/gallery3d/ui/ResourceTexture;

    :goto_0
    return-object v0

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameOnePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 602
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mFrameTwoPieces:Lcom/android/gallery3d/ui/ResourceTexture;

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSlotSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 591
    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    .line 584
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->pause()V

    .line 573
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inHiddenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInHiddenMode:Z

    .line 540
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inPrivateMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionPrivateMode:Z

    .line 541
    return-void
.end method

.method protected renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 19
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 359
    const/16 v16, 0x0

    .line 361
    .local v16, renderRequestFlags:I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 362
    .local v4, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v4, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 364
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 370
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isInPhotoShareSourceType(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getpCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPhotoShareFrameNonePiece:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 375
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 377
    const v2, 0x3e4ccccd

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 379
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumWidth:I

    .line 380
    .local v5, w:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumHeight:I

    .line 381
    .local v6, h:I
    sub-int v2, p3, v5

    div-int/lit8 v15, v2, 0x2

    .line 382
    .local v15, left:I
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getContentFrame(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v13

    .line 383
    .local v13, frame:Lcom/android/gallery3d/ui/Texture;
    if-nez v13, :cond_4

    move/from16 v17, v16

    .line 413
    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    .end local v16           #renderRequestFlags:I
    .local v17, renderRequestFlags:I
    :goto_1
    return v17

    .line 365
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v13           #frame:Lcom/android/gallery3d/ui/Texture;
    .end local v15           #left:I
    .end local v17           #renderRequestFlags:I
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    .restart local v16       #renderRequestFlags:I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v2, :cond_0

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 367
    new-instance v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v4, v2, v3}, Lcom/android/gallery3d/ui/FadeInTexture;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    .line 368
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    goto/16 :goto_0

    .line 384
    .restart local v5       #w:I
    .restart local v6       #h:I
    .restart local v13       #frame:Lcom/android/gallery3d/ui/Texture;
    .restart local v15       #left:I
    :cond_4
    invoke-interface {v13}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v14

    .line 385
    .local v14, frameHeight:I
    sub-int v2, v14, v6

    div-int/lit8 v18, v2, 0x2

    .line 386
    .local v18, top:I
    int-to-float v2, v15

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 387
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 389
    instance-of v2, v4, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v2, :cond_5

    check-cast v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/FadeInTexture;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    or-int/lit8 v16, v16, 0x2

    .line 394
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isInPhotoShareSourceType(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v12

    .line 396
    .local v12, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v12}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPhotoShareAlbumSetBackground(Lcom/android/gallery3d/ui/GLCanvas;IILcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 397
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v5

    move v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPhotoShareAlbumSetName(Lcom/android/gallery3d/ui/GLCanvas;IIILcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 400
    .end local v12           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawAlbumSetIcon(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 402
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionPrivateMode:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isPrivacyMode()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isPrivate:Z

    if-nez v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionPrivateMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 404
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawAlbumSetPrivateIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 407
    :cond_9
    neg-int v2, v15

    int-to-float v2, v2

    move/from16 v0, v18

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 410
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 412
    :cond_a
    invoke-direct/range {p0 .. p4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContentFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    move/from16 v17, v16

    .line 413
    .end local v16           #renderRequestFlags:I
    .restart local v17       #renderRequestFlags:I
    goto/16 :goto_1
.end method

.method protected renderHiddenMask(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v5, 0x39

    .line 229
    iget-boolean v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isHidden:Z

    if-nez v0, :cond_1

    .line 230
    const/4 v9, 0x0

    .line 244
    :cond_0
    :goto_0
    return v9

    .line 233
    :cond_1
    const/4 v9, 0x0

    .line 235
    .local v9, renderRequestFlags:I
    iget-object v7, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 236
    .local v7, content:Lcom/android/gallery3d/ui/Texture;
    if-eqz v7, :cond_0

    .line 237
    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 238
    .local v6, b:I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v8

    .line 240
    .local v8, h:I
    neg-int v0, v6

    int-to-float v1, v0

    sub-int v0, p5, v8

    add-int/2addr v0, v6

    int-to-float v2, v0

    add-int v0, p4, v6

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v8

    const/4 v0, 0x1

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    goto :goto_0
.end method

.method protected renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 9
    .parameter "canvas"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 509
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isSelectedStatus(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 510
    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    .line 514
    .local v0, content:Lcom/android/gallery3d/ui/Texture;
    :goto_0
    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 517
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v6

    .line 518
    .local v6, b:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    .line 519
    .local v5, h:I
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 521
    const v1, 0x3e4ccccd

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 523
    :cond_1
    iget v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->getContentFrame(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v7

    .line 524
    .local v7, frame:Lcom/android/gallery3d/ui/Texture;
    invoke-interface {v7}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v1

    sub-int v1, p3, v1

    div-int/lit8 v2, v1, 0x2

    .line 525
    .local v2, left:I
    invoke-interface {v7}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v8

    .line 526
    .local v8, offset:I
    add-int v1, v8, v5

    if-le v1, p4, :cond_2

    .line 527
    sub-int v8, p4, v5

    .line 528
    :cond_2
    add-int v3, v8, v6

    invoke-interface {v0}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 529
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 533
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 512
    .end local v0           #content:Lcom/android/gallery3d/ui/Texture;
    .end local v2           #left:I
    .end local v5           #h:I
    .end local v6           #b:I
    .end local v7           #frame:Lcom/android/gallery3d/ui/Texture;
    .end local v8           #offset:I
    :cond_4
    iget-object v1, p2, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    .restart local v0       #content:Lcom/android/gallery3d/ui/Texture;
    goto :goto_0
.end method

.method protected renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 249
    const/4 v6, 0x0

    .line 251
    .local v6, renderRequestFlags:I
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mUseCameraOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    sub-int v7, p5, v0

    .line 254
    .local v7, uncoveredHeight:I
    div-int/lit8 v4, v7, 0x2

    .line 256
    .local v4, dim:I
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 258
    const v0, 0x3e4ccccd

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mCameraOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p4, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, v7, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 262
    invoke-direct {p0, p3}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isEntryHidden(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 267
    .end local v4           #dim:I
    .end local v7           #uncoveredHeight:I
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p2, :cond_2

    .line 268
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    .line 279
    :cond_3
    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isInPhotoShareSourceType(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getShareFolder()Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->isNew()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->drawPhotoShareNewFlagMark(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    .line 284
    :cond_4
    return v6
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 8
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    .line 216
    .local v3, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    const/4 v6, 0x0

    .line 218
    .local v6, renderRequestFlags:I
    if-nez v3, :cond_0

    move v7, v6

    .line 224
    .end local v6           #renderRequestFlags:I
    .local v7, renderRequestFlags:I
    :goto_0
    return v7

    .line 220
    .end local v7           #renderRequestFlags:I
    .restart local v6       #renderRequestFlags:I
    :cond_0
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    .line 221
    invoke-virtual {p0, p1, v3, p4, p5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->renderHiddenMask(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr v6, v0

    move v7, v6

    .line 224
    .end local v6           #renderRequestFlags:I
    .restart local v7       #renderRequestFlags:I
    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->resume()V

    .line 577
    return-void
.end method

.method public setAlbumSetNumberListener(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAlbumSetNumberListener:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;

    .line 552
    return-void
.end method

.method public setClusterType(I)V
    .locals 1
    .parameter "clusterType"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setClusterType(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 5
    .parameter "model"

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 182
    iput-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v3, 0x60

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 191
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method
