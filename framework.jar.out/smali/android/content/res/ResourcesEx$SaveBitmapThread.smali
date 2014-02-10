.class public Landroid/content/res/ResourcesEx$SaveBitmapThread;
.super Ljava/lang/Object;
.source "ResourcesEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveBitmapThread"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "bmp"
    .parameter "fileName"

    .prologue
    .line 971
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 973
    iput-object p2, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mFileName:Ljava/lang/String;

    .line 974
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 976
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/content/res/ResourcesEx;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 978
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 979
    const-string v4, "ResourcesEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mk cache dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/content/res/ResourcesEx;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    const-string/jumbo v4, "root"

    const-string v5, "777"

    invoke-static {}, Landroid/content/res/ResourcesEx;->access$200()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 985
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/ResourcesEx;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 987
    const-string v4, "ResourcesEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists, no need to save."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 990
    :cond_3
    iget-object v4, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 991
    const-string v4, "ResourcesEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 994
    :cond_4
    const/4 v2, 0x0

    .line 996
    .local v2, fo:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 997
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 998
    .end local v2           #fo:Ljava/io/FileOutputStream;
    .local v3, fo:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v4, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 999
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1000
    const-string/jumbo v4, "root"

    const-string v5, "777"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/ResourcesEx;->access$200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/content/res/ResourcesEx$SaveBitmapThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/CommandLineUtil;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 1007
    .end local v3           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fo:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz v2, :cond_0

    .line 1009
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1010
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1002
    :catch_1
    move-exception v4

    .line 1007
    :goto_1
    if-eqz v2, :cond_0

    .line 1009
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1010
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 1004
    :catch_3
    move-exception v4

    .line 1007
    :goto_2
    if-eqz v2, :cond_0

    .line 1009
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1010
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 1007
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_6

    .line 1009
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1011
    :cond_6
    :goto_4
    throw v4

    .line 1010
    :catch_5
    move-exception v5

    goto :goto_4

    .line 1007
    .end local v2           #fo:Ljava/io/FileOutputStream;
    .restart local v3       #fo:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fo:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1004
    .end local v2           #fo:Ljava/io/FileOutputStream;
    .restart local v3       #fo:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fo:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1002
    .end local v2           #fo:Ljava/io/FileOutputStream;
    .restart local v3       #fo:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #fo:Ljava/io/FileOutputStream;
    .restart local v2       #fo:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
