.class public Lcom/android/gallery3d/data/Face;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/data/Face;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field private mPosition:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "personId"
    .parameter "rect"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 34
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 38
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 33
    .end local v0           #tokenizer:Ljava/util/StringTokenizer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    .restart local v0       #tokenizer:Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/gallery3d/data/Face;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/android/gallery3d/data/Face;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/Face;->compareTo(Lcom/android/gallery3d/data/Face;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 54
    instance-of v1, p1, Lcom/android/gallery3d/data/Face;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/android/gallery3d/data/Face;

    .line 56
    .local v0, face:Lcom/android/gallery3d/data/Face;
    iget-object v1, p0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    .end local v0           #face:Lcom/android/gallery3d/data/Face;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
