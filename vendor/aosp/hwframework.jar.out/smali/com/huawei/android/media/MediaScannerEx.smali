.class public Lcom/huawei/android/media/MediaScannerEx;
.super Ljava/lang/Object;
.source "MediaScannerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanCustomDirectories(Landroid/media/MediaScanner;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "scanner"
    .parameter "directories"
    .parameter "volumeName"
    .parameter "whiteList"
    .parameter "blackList"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaScanner;->scanCustomDirectories([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    return-void
.end method
