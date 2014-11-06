.class Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x10

.field private static final CACHE_SIZE_START_MOVE:I = 0x8


# instance fields
.field private mCount:I

.field private mKey:[I

.field private mValue:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/16 v1, 0x10

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    .line 86
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/NinePatchTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 128
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    .line 132
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    if-ge v0, v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v1, v4, v0

    .line 112
    .local v1, targetValue:Ljava/lang/Object;,"TV;"
    iget v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    if-lez v0, :cond_0

    .line 113
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aget v2, v4, v0

    .line 114
    .local v2, tmpKey:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    iget-object v5, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    aput v5, v4, v0

    .line 115
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    add-int/lit8 v5, v0, -0x1

    aput v2, v4, v5

    .line 117
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 118
    .local v3, tmpValue:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    add-int/lit8 v5, v0, -0x1

    aput-object v3, v4, v5

    .line 124
    .end local v1           #targetValue:Ljava/lang/Object;,"TV;"
    .end local v2           #tmpKey:I
    .end local v3           #tmpValue:Ljava/lang/Object;,"TV;"
    :cond_0
    :goto_1
    return-object v1

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/16 v3, 0xf

    .line 92
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v1, v3

    .line 94
    .local v0, old:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    aput p1, v1, v3

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 101
    .end local v0           #old:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mKey:[I

    iget v2, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    aput p1, v1, v2

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    aput-object p2, v1, v2

    .line 100
    iget v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    iget v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mCount:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;,"Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache<TV;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
