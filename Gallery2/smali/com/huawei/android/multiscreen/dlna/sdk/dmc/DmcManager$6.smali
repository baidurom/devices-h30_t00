.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;
.super Ljava/lang/Object;
.source "DmcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->dealWithMediaChange(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ESearchState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

.field private final synthetic val$changeResInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;

.field private final synthetic val$deviceId:I

.field private final synthetic val$oldSystemUpdateID:I

.field private final synthetic val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;ILcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$deviceId:I

    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iput p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$oldSystemUpdateID:I

    iput-object p5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$changeResInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;

    .line 732
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 736
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$deviceId:I

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$oldSystemUpdateID:I

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$6;->val$changeResInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->getSystemUpdateID()I

    move-result v4

    #calls: Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getLastChangeMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)V

    .line 737
    return-void
.end method
