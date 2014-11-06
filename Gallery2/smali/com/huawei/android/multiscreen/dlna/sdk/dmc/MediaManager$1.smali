.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->createCacheAllThread(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I


# instance fields
.field startIndex:I

.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

.field private final synthetic val$criteria:Ljava/lang/String;

.field private final synthetic val$size:I

.field private final synthetic val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I
    .locals 3

    .prologue
    .line 517
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iput-object p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$criteria:Ljava/lang/String;

    iput p5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$size:I

    .line 517
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->startIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 524
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->lock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 602
    :goto_0
    return-void

    .line 529
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$criteria:Ljava/lang/String;

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->startIndex:I

    iget v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$size:I

    const-string v7, ""

    #calls: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->cacheMedia(Ljava/lang/String;IILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$3(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;Ljava/lang/String;IILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;

    move-result-object v2

    .line 530
    .local v2, searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    if-eqz v2, :cond_1

    .line 531
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->startIndex:I

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getResultCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->startIndex:I

    .line 532
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 550
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsContinue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    .line 553
    .local v0, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getSystemUpdateId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setSystemUpdateID(II)V

    .line 554
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMediaChanged(I)V

    .line 557
    .end local v0           #dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;
    :cond_1
    if-eqz v2, :cond_2

    .line 558
    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getResultCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 559
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsContinue(I)Z

    move-result v3

    .line 528
    if-nez v3, :cond_0

    .line 560
    :cond_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->getIsContinue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v3, :pswitch_data_1

    .line 600
    :cond_3
    :goto_2
    :pswitch_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    goto/16 :goto_0

    .line 534
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsAudioSearchFailed(ILjava/lang/Boolean;)V

    .line 535
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchCount(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 597
    .end local v2           #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :catch_0
    move-exception v1

    .line 598
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "MeidaManager"

    const-string v4, "createCacheAllThread error"

    invoke-static {v3, v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    goto/16 :goto_0

    .line 538
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_3
    :try_start_4
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsImageSearchFailed(ILjava/lang/Boolean;)V

    .line 539
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchCount(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 599
    .end local v2           #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :catchall_0
    move-exception v3

    .line 600
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v5

    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v4, v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->unLock(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Z

    .line 601
    throw v3

    .line 542
    .restart local v2       #searchResultInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
    :pswitch_4
    :try_start_5
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsVideoSearchFailed(ILjava/lang/Boolean;)V

    .line 543
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchCount(II)V

    goto/16 :goto_1

    .line 546
    :pswitch_5
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsImage_VideoSearchFailed(ILjava/lang/Boolean;)V

    .line 547
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->getMediaTotalCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchCount(II)V

    goto/16 :goto_1

    .line 563
    :pswitch_6
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 566
    :pswitch_7
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 569
    :pswitch_8
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 572
    :pswitch_9
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->COMPLETED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 577
    :cond_4
    if-nez v2, :cond_3

    .line 578
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$common$EMediaInfoType()[I

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->val$typeTemp:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    :pswitch_a
    goto/16 :goto_2

    .line 584
    :pswitch_b
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsImageSearchFailed(ILjava/lang/Boolean;)V

    .line 585
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 580
    :pswitch_c
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsAudioSearchFailed(ILjava/lang/Boolean;)V

    .line 581
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setAudioSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 588
    :pswitch_d
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsVideoSearchFailed(ILjava/lang/Boolean;)V

    .line 589
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V

    goto/16 :goto_2

    .line 592
    :pswitch_e
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setIsImage_VideoSearchFailed(ILjava/lang/Boolean;)V

    .line 593
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->dmsDeviceDataStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;
    invoke-static {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    #getter for: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->deviceId:I
    invoke-static {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;)I

    move-result v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;->PART_SEARCH:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;

    invoke-virtual {v3, v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmsDeviceDataStateManager;->setImageVideoSearchState(ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 561
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 578
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method
