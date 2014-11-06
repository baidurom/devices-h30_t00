.class Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;
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

.field private final synthetic val$deviceId:I

.field private final synthetic val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->val$deviceId:I

    iput-object p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 716
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->val$deviceId:I

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager$5;->val$type:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->getPartMedia(ILcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Z)V

    .line 721
    return-void
.end method
