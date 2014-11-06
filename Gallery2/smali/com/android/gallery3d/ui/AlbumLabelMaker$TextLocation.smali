.class Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextLocation"
.end annotation


# instance fields
.field public countLenLimit:I

.field public countX:I

.field public countY:I

.field public titleLenLimit:I

.field public titleX:I

.field public titleY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumLabelMaker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumLabelMaker$TextLocation;-><init>()V

    return-void
.end method
