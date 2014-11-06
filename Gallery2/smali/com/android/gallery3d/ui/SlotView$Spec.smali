.class public Lcom/android/gallery3d/ui/SlotView$Spec;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# instance fields
.field public isOneGapLength:Z

.field public slotHeight:I

.field public slotHeightGap:I

.field public slotWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 585
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotWidth:I

    .line 587
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeight:I

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->isOneGapLength:Z

    .line 589
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$Spec;->slotHeightGap:I

    return-void
.end method
