.class public Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcom/android/gallery3d/data/Path;

.field public relativeIndex:I

.field public source:Landroid/graphics/Rect;

.field public texture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;I)V
    .locals 0
    .parameter "path"
    .parameter "source"
    .parameter "texture"
    .parameter "i"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/android/gallery3d/data/Path;

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 50
    iput-object p3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    .line 51
    iput p4, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->relativeIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item : Path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; relativeIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->relativeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
