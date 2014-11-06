.class public Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants$FolderReceiverConstans;
.super Ljava/lang/Object;
.source "DAOConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/database/dao/DAOConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderReceiverConstans"
.end annotation


# static fields
.field public static final ReceiverAccount:Ljava/lang/String; = "ReceiverAccount"

.field public static final ReceiverState:Ljava/lang/String; = "ReceiverState"

.field public static final ReceiverState_Canceled:I = 0x3

.field public static final ReceiverState_Declined:I = 0x2

.field public static final ReceiverState_Received:I = 0x1

.field public static final ReceiverState_Waiting:I = 0x0

.field public static final SharedPath:Ljava/lang/String; = "SharedPath"

.field public static final SharedPathIndex:Ljava/lang/String; = "Sharedndex"

.field public static final StateChangedTime:Ljava/lang/String; = "StateChangedTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
