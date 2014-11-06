.class Lcom/huawei/gallery3d/freeshare/FreeShareStopView$3;
.super Ljava/lang/Object;
.source "FreeShareStopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareStopView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareStopView;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView$3;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->hide()Z

    .line 82
    return-void
.end method
