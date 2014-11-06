.class Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HwActionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/widget/Editor$HwActionPopupWindow$SortHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Landroid/widget/Editor$HwActionPopupWindow;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/widget/Editor$HwActionPopupWindow;II)V
    .locals 0
    .parameter
    .parameter "i"
    .parameter "w"

    .prologue
    .line 4482
    iput-object p1, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->this$1:Landroid/widget/Editor$HwActionPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4483
    iput p2, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I

    .line 4484
    iput p3, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    .line 4485
    return-void
.end method

.method static synthetic access$4000(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4478
    iget v0, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4478
    iget v0, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4488
    iget v0, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    iget v1, p1, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4478
    check-cast p1, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->compareTo(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 4494
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    if-nez v2, :cond_1

    .line 4498
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 4497
    check-cast v0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    .line 4498
    .local v0, other:Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    iget v2, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    iget v3, v0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 4503
    const/16 v0, 0x1f

    .line 4504
    .local v0, prime:I
    const/4 v1, 0x1

    .line 4505
    .local v1, result:I
    iget v2, p0, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I

    add-int/lit8 v1, v2, 0x1f

    .line 4506
    return v1
.end method
