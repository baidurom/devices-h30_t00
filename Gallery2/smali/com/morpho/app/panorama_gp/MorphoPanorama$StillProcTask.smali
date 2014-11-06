.class public Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;
.super Ljava/lang/Thread;
.source "MorphoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StillProcTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;


# direct methods
.method public constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1634
    :goto_0
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntReqShoot:I
    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I

    move-result v4

    iget-object v5, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mCntProcessd:I
    invoke-static {v5}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$800(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I

    move-result v5

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsShooting:Z
    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$900(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mIsAttachTimeOut:Z
    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1000(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1635
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget-object v4, v4, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1636
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget-object v4, v4, Lcom/morpho/app/panorama_gp/MorphoPanorama;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;

    .line 1637
    .local v0, dat:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mSaveInputImages:Z
    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1638
    const-string v4, "%s/%s/%s/s_%05d_%05d.jpg"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama;->getInputDir()Ljava/lang/String;
    invoke-static {v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1200(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mShootingDate:Ljava/lang/String;
    invoke-static {v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1300(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v7}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1400(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v7

    const v8, 0x7f0d0149

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget v7, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mPreviewCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, path:Ljava/lang/String;
    iget-object v4, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v4, v2}, Lcom/morpho/utils/io/FileOperator;->outputData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1644
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    const-string v4, "HwCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MorphoPanorama: run attachStillImage() start :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/morpho/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mMorphoPanoramaGP:Lcom/morpho/core/MorphoPanoramaGP;
    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$1500(Lcom/morpho/app/panorama_gp/MorphoPanorama;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v4

    iget-object v5, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mId:I

    iget-object v7, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v6, v7}, Lcom/morpho/core/MorphoPanoramaGP;->attachStillImageExt(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v3

    .line 1648
    .local v3, ret:I
    if-eqz v3, :cond_2

    .line 1649
    const-string v4, "HwCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MorphoPanorama:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "attachStillImageExt() -> 0x%x"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/morpho/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_2
    iget-object v4, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mImage:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1658
    iget-object v4, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;->mMotionData:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/morpho/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 1659
    iget-object v4, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$StillProcTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-static {v4}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$808(Lcom/morpho/app/panorama_gp/MorphoPanorama;)I

    .line 1662
    .end local v0           #dat:Lcom/morpho/app/panorama_gp/MorphoPanorama$StillImageData;
    .end local v3           #ret:I
    :cond_3
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1663
    :catch_0
    move-exception v1

    .line 1664
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1667
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    return-void
.end method
