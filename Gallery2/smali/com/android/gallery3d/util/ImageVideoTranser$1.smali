.class final Lcom/android/gallery3d/util/ImageVideoTranser$1;
.super Ljava/lang/Object;
.source "ImageVideoTranser.java"

# interfaces
.implements Landroid/media/videoeditor/VideoEditor$ExportProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/util/ImageVideoTranser;->translateVoiceImageToVideo(Lcom/android/gallery3d/data/MediaObject;IILcom/android/gallery3d/ui/MenuExecutor;Ljava/io/File;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentProgress:I

.field final synthetic val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$maxProgress:I


# direct methods
.method constructor <init>(IILcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput p1, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$currentProgress:I

    iput p2, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$maxProgress:I

    iput-object p3, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;I)V
    .locals 3
    .parameter "videoEditor"
    .parameter "filename"
    .parameter "progress"

    .prologue
    .line 220
    iget v1, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$currentProgress:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$maxProgress:I

    div-int v0, v1, v2

    .line 221
    .local v0, index:I
    iget-object v1, p0, Lcom/android/gallery3d/util/ImageVideoTranser$1;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateProgress(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 222
    return-void
.end method
