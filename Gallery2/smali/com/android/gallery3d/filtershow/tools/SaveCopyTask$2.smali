.class final Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;
.super Ljava/lang/Object;
.source "SaveCopyTask.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dir:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;->val$dir:[Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 389
    new-instance v0, Ljava/io/File;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 390
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;->val$dir:[Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v2

    .line 391
    return-void
.end method
