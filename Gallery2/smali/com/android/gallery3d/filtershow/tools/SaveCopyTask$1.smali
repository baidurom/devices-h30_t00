.class Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;
.super Ljava/lang/Object;
.source "SaveCopyTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;->this$0:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;->this$0:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->showDialog()V

    .line 302
    return-void
.end method
