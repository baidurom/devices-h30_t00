.class public Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;
.super Ljava/lang/Object;
.source "PhotoShareSdkBroadcastManager.java"

# interfaces
.implements Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnContentChange(Ljava/lang/String;)V
    .locals 0
    .parameter "mPath"

    .prologue
    .line 74
    return-void
.end method

.method public OnCreateShareFail()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public OnCreateShareSuc()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public OnDeleteFolder()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public OnFolderChange()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public OnFriendNotify()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public OnIsHWAccount()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public OnModifyFolderFail()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public OnModifyFolderSuc()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public OnNotifyDownload()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public OnNotifyLogStateChange()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public OnQueryFolderSuc()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
