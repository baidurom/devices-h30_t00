.class Lcom/android/hwcamera/PhotoModule$14;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->initializeControlByIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3176
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$14;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$14;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PhotoModule;->onReviewRetakeClicked(Landroid/view/View;)V

    .line 3180
    return-void
.end method
