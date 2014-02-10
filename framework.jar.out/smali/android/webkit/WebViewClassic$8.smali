.class Landroid/webkit/WebViewClassic$8;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$dest:Ljava/io/File;

.field final synthetic val$p:Landroid/graphics/Picture;

.field final synthetic val$temp:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2805
    iput-object p1, p0, Landroid/webkit/WebViewClassic$8;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    iput-object p3, p0, Landroid/webkit/WebViewClassic$8;->val$p:Landroid/graphics/Picture;

    iput-object p4, p0, Landroid/webkit/WebViewClassic$8;->val$dest:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2808
    const/4 v0, 0x0

    .line 2810
    .local v0, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    .end local v0           #out:Ljava/io/FileOutputStream;
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$8;->val$p:Landroid/graphics/Picture;

    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 2815
    iget-object v2, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$8;->val$dest:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2816
    const-string/jumbo v2, "webview"

    const-string/jumbo v3, "renameTo fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2821
    :cond_0
    if-eqz v1, :cond_1

    .line 2823
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2828
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2829
    const-string/jumbo v2, "webview"

    const-string v3, "delete fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 2833
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v0       #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 2821
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_4

    .line 2823
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2828
    :cond_4
    :goto_3
    iget-object v3, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2829
    const-string/jumbo v3, "webview"

    const-string v4, "delete fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_5
    throw v2

    .line 2818
    :catch_0
    move-exception v2

    .line 2821
    :goto_4
    if-eqz v0, :cond_6

    .line 2823
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2828
    :cond_6
    :goto_5
    iget-object v2, p0, Landroid/webkit/WebViewClassic$8;->val$temp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2829
    const-string/jumbo v2, "webview"

    const-string v3, "delete fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2824
    :catch_1
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_3

    .end local v0           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    goto :goto_0

    .line 2821
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v0       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2818
    .end local v0           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v0       #out:Ljava/io/FileOutputStream;
    goto :goto_4
.end method
