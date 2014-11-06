.class public Lcom/android/gallery3d/data/PhotoShareChangeNotifier;
.super Ljava/lang/Object;
.source "PhotoShareChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Ljava/lang/String;

.field private mPhotoShareRoot:Ljava/lang/String;

.field private mSdkListener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "set"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 17
    sget-object v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->PATH_PHOTOSHARE_ALL:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mPhotoShareRoot:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v0, v0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSetPath:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier$1;-><init>(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mSdkListener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;

    .line 66
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->getInstance()Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mSdkListener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->addListener(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mPhotoShareRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/PhotoShareChangeNotifier;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method


# virtual methods
.method public isDirty()Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method
