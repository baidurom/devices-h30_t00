.class public Lcom/morpho/core/MorphoPanoramaGP$InitParam;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/core/MorphoPanoramaGP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParam"
.end annotation


# instance fields
.field public angle_of_view_degree:D

.field public direction:I

.field public dst_img_height:I

.field public dst_img_width:I

.field public format:Ljava/lang/String;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "URF_UNREAD_PUBLIC_OR_PROTECTED_FIELD"
        }
    .end annotation
.end field

.field public output_rotation:I

.field public preview_height:I

.field public preview_img_height:I

.field public preview_img_width:I

.field public preview_shrink_ratio:I

.field public preview_width:I

.field public still_height:I

.field public still_width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method
