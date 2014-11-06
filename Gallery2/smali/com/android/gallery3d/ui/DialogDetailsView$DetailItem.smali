.class Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailItem"
.end annotation


# instance fields
.field final mContent:Ljava/lang/String;

.field final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "content"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;->mTitle:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView$DetailItem;->mContent:Ljava/lang/String;

    .line 121
    return-void
.end method
