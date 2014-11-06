.class public Lcom/android/gallery3d/util/RangeArray;
.super Ljava/lang/Object;
.source "RangeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 24
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    .line 26
    iput p1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    .line 27
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 2
    .parameter
    .parameter "min"
    .parameter "max"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    .local p1, src:[Ljava/lang/Object;,"[TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    .line 35
    iput p2, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    .line 36
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    add-int/2addr v1, v0

    .line 50
    :goto_1
    return v1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/android/gallery3d/util/RangeArray;,"Lcom/android/gallery3d/util/RangeArray<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 40
    return-void
.end method
