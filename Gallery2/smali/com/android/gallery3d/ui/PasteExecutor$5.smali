.class Lcom/android/gallery3d/ui/PasteExecutor$5;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PasteExecutor;->sortDestinationList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$5;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 253
    invoke-static {p1, p2}, Lcom/android/gallery3d/util/NameCompareUtils;->compareAlbum(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    check-cast p1, Lcom/android/gallery3d/data/MediaSet;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/MediaSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/PasteExecutor$5;->compare(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    return v0
.end method
