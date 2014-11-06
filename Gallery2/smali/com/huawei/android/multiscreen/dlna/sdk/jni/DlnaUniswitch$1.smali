.class Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;
.super Ljava/lang/Object;
.source "DlnaUniswitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaDmcPeerEventInd(ILjava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

.field private final synthetic val$changeString:Ljava/lang/String;

.field private final synthetic val$deviceid:I

.field private final synthetic val$dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$deviceid:I

    iput-object p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$changeString:Ljava/lang/String;

    .line 723
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$deviceid:I

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch$1;->val$changeString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcManager;->notifyMediaChangedFromUniswitch(ILjava/lang/String;)V

    .line 728
    return-void
.end method
