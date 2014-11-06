.class Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryAddress"
.end annotation


# instance fields
.field public volatile mCancel:Z

.field public mLatlng:[D

.field public mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

.field public mNeedResponseForUI:Z

.field public mNext:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

.field public mResolveAllInfo:Z


# direct methods
.method public constructor <init>([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)V
    .locals 1
    .parameter "latlng"
    .parameter "listener"
    .parameter "resolveAllInfo"
    .parameter "needResponseForUI"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    .line 115
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mLatlng:[D

    .line 116
    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .line 117
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mResolveAllInfo:Z

    .line 118
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNeedResponseForUI:Z

    .line 119
    return-void
.end method
