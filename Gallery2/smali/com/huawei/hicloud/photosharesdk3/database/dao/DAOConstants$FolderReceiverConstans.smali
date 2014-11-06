.class public Lcom/huawei/hicloud/photosharesdk3/database/dao/DAOConstants$FolderReceiverConstans;
.super Ljava/lang/Object;
.source "DAOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/database/dao/DAOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderReceiverConstans"
.end annotation


# static fields
.field public static final RECEIVER_ACCOUNT:Ljava/lang/String; = "ReceiverAccount"

.field public static final RECEIVER_STATE:Ljava/lang/String; = "ReceiverState"

.field public static final RECEIVER_STATE_CANCELED:I = 0x3

.field public static final RECEIVER_STATE_DECLINED:I = 0x2

.field public static final RECEIVER_STATE_RECEIVED:I = 0x1

.field public static final RECEIVER_STATE_WAITTING:I = 0x0

.field public static final SHAREDPATH:Ljava/lang/String; = "SharedPath"

.field public static final SHARED_PATH_INDEX:Ljava/lang/String; = "Sharedndex"

.field public static final STATE_CHANGED_TIME:Ljava/lang/String; = "StateChangedTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
