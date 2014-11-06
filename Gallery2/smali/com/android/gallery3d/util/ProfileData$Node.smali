.class Lcom/android/gallery3d/util/ProfileData$Node;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/ProfileData$Node;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public parent:Lcom/android/gallery3d/util/ProfileData$Node;

.field public sampleCount:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/util/ProfileData$Node;I)V
    .locals 0
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/util/ProfileData$Node;->parent:Lcom/android/gallery3d/util/ProfileData$Node;

    .line 44
    iput p2, p0, Lcom/android/gallery3d/util/ProfileData$Node;->id:I

    .line 45
    return-void
.end method
