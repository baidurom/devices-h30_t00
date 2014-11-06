.class Lcom/android/gallery3d/app/MovieControllerOverlay$2;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 71
    return-void
.end method
