.class Lcom/android/gallery3d/filtershow/FilterShowActivity$8;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$8;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$8;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    .line 1247
    return-void
.end method
