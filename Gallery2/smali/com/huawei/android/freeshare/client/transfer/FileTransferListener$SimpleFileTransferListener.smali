.class public Lcom/huawei/android/freeshare/client/transfer/FileTransferListener$SimpleFileTransferListener;
.super Ljava/lang/Object;
.source "FileTransferListener.java"

# interfaces
.implements Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFileTransferListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(Ljava/lang/String;I)V
    .locals 0
    .parameter "uri"
    .parameter "progress"

    .prologue
    .line 26
    return-void
.end method

.method public onTransferFinish(Ljava/lang/String;Z)V
    .locals 0
    .parameter "uri"
    .parameter "success"

    .prologue
    .line 31
    return-void
.end method
