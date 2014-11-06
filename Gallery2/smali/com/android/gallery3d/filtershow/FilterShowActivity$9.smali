.class Lcom/android/gallery3d/filtershow/FilterShowActivity$9;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V
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
    .line 1266
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$9;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$9;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V

    .line 1270
    return-void
.end method
