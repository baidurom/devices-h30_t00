.class public Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;
.super Ljava/lang/Object;
.source "MultiScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiScreenTask"
.end annotation


# static fields
.field private static final CONNECT_MIRROR:I = 0x67

.field private static final PUSH_IMAGE:I = 0x64

.field private static final PUSH_THUMBNAIL:I = 0x66

.field private static final PUSH_VIDEO:I = 0x65


# instance fields
.field private mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

.field private mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

.field private mPosition:I

.field private mType:I

.field final synthetic this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;


# direct methods
.method public constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;I)V
    .locals 2
    .parameter
    .parameter "position"

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput p2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mPosition:I

    .line 1036
    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getPushMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$2000(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 1037
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne v0, v1, :cond_1

    .line 1038
    const/16 v0, 0x65

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    .line 1039
    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startControlActivity()V
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$2100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    .line 1043
    :goto_0
    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 1046
    :cond_0
    return-void

    .line 1041
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Z)V
    .locals 2
    .parameter
    .parameter "isMirror"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    if-eqz p2, :cond_1

    .line 1019
    const/16 v0, 0x67

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    #calls: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getPushMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$2000(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 1022
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mPosition:I

    .line 1023
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne v0, v1, :cond_2

    .line 1024
    const/16 v0, 0x66

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    .line 1028
    :goto_1
    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    goto :goto_0

    .line 1026
    :cond_2
    const/16 v0, 0x64

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    goto :goto_1
.end method

.method private connectMirrorTask()Z
    .locals 4

    .prologue
    .line 1079
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "pending MSG_CONNECT_MIRROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->connectMirror()Z

    move-result v0

    .line 1081
    .local v0, result:Z
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect Mirror Task result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return v0
.end method

.method private pushImageTask()Z
    .locals 7

    .prologue
    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1087
    .local v0, begin:J
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "pending MSG_PUSH_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-interface {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v2

    .line 1089
    .local v2, result:Z
    const-string v3, "AirSharing_MultiScreenManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push Image Task result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return v2
.end method

.method private pushThumbnailTask()Z
    .locals 9

    .prologue
    .line 1095
    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, pathString:Ljava/lang/String;
    const-string v5, "AirSharing_MultiScreenManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thumbnail path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-virtual {v5, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setUrl(Ljava/lang/String;)V

    .line 1099
    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 1100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1101
    .local v0, begin:J
    const-string v5, "AirSharing_MultiScreenManager"

    const-string v6, "pending MSG_PUSH_THUMBNAIL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    iget-object v6, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-interface {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v4

    .line 1103
    .local v4, result:Z
    const-string v5, "AirSharing_MultiScreenManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push Thumbnail Task result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v4
.end method

.method private pushVideoTask()Z
    .locals 8

    .prologue
    .line 1109
    iget v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mPosition:I

    invoke-static {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeFromGalleryToService(I)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, position:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1111
    .local v0, begin:J
    const-string v4, "AirSharing_MultiScreenManager"

    const-string v5, "pending MSG_PUSH_VIDEO"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-interface {v4, v5, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z

    move-result v3

    .line 1113
    .local v3, result:Z
    const-string v4, "AirSharing_MultiScreenManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "push Video Task result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return v3
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x67

    .line 1050
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    if-eq v1, v2, :cond_0

    .line 1051
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "Cant get control of current dmr or dmr has down"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :goto_0
    return-void

    .line 1054
    :cond_0
    const/4 v0, 0x0

    .line 1055
    .local v0, result:Z
    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 1071
    :goto_1
    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->mType:I

    if-ne v1, v2, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1057
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->connectMirrorTask()Z

    move-result v0

    .line 1058
    goto :goto_1

    .line 1060
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->pushVideoTask()Z

    move-result v0

    .line 1061
    goto :goto_1

    .line 1063
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->pushThumbnailTask()Z

    move-result v0

    .line 1064
    goto :goto_1

    .line 1066
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->pushImageTask()Z

    move-result v0

    .line 1067
    goto :goto_1

    .line 1072
    :cond_1
    const/16 v1, 0xe

    goto :goto_2

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;->this$0:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    #getter for: Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    :goto_3
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    goto :goto_3

    .line 1055
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
