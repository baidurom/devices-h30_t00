.class Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView$Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlotNumAndGap"
.end annotation


# instance fields
.field public slotGap:I

.field public slotNumber:I

.field final synthetic this$1:Lcom/android/gallery3d/ui/SlotView$Layout;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView$Layout;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 657
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->this$1:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotNumber:I

    .line 659
    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;->slotGap:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView$Layout;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout$SlotNumAndGap;-><init>(Lcom/android/gallery3d/ui/SlotView$Layout;)V

    return-void
.end method
