.class public final Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/provider/ActivityChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public action:I

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public type:I

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 0
    .parameter "resolveInfo"

    .prologue
    .line 557
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 559
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 585
    iget v0, p1, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 549
    check-cast p1, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->compareTo(Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 568
    if-ne p0, p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v1

    .line 571
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 572
    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 575
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 577
    check-cast v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;

    .line 578
    .local v0, other:Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;
    iget v3, p0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 579
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/gallery3d/provider/ActivityChooser$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
