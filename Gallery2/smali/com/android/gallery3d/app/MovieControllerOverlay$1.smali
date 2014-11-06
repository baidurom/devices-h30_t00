.class Lcom/android/gallery3d/app/MovieControllerOverlay$1;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Lcom/huawei/gallery3d/dolby/Dolby$Listener;


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
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDolbyClicked()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 60
    return-void
.end method
