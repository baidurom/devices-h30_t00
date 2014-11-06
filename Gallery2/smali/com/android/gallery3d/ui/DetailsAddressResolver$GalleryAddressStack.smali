.class Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GalleryAddressStack"
.end annotation


# instance fields
.field private mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

.field private mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    if-eqz v1, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    iget-object v1, v1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 148
    .local v0, address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :goto_1
    if-eqz v0, :cond_3

    .line 149
    iget-object v1, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    .line 150
    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNext:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    goto :goto_1

    .end local v0           #address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :cond_1
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v0       #address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :cond_2
    move v1, v3

    .line 149
    goto :goto_2

    .line 152
    :cond_3
    return-void
.end method

.method public cancelAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    iput-boolean v2, v1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 160
    .local v0, address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    :goto_0
    if-eqz v0, :cond_1

    .line 161
    iput-boolean v2, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    .line 162
    iget-object v0, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNext:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 140
    return-void
.end method

.method public pop()Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 128
    .local v0, address:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNext:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 129
    :cond_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mCurrent:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 130
    return-object v0
.end method

.method public push(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    iput-object v0, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNext:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 135
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->mHead:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    .line 136
    return-void
.end method
