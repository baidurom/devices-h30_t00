.class public Lcom/android/gallery3d/util/RangeIntArray;
.super Ljava/lang/Object;
.source "RangeIntArray.java"


# instance fields
.field private mData:[I

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    .line 26
    iput p1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    .line 27
    return-void
.end method

.method public constructor <init>([III)V
    .locals 0
    .parameter "src"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    .line 32
    iput p2, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    .line 33
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "object"

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    add-int/2addr v1, v0

    .line 47
    :goto_1
    return v1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public put(II)V
    .locals 2
    .parameter "i"
    .parameter "object"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeIntArray;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/util/RangeIntArray;->mOffset:I

    sub-int v1, p1, v1

    aput p2, v0, v1

    .line 37
    return-void
.end method
