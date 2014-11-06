.class Lcom/android/hwcamera/PhotoModule$28;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->onSmartSenceReport(B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6114
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$28;->this$0:Lcom/android/hwcamera/PhotoModule;

    iput p2, p0, Lcom/android/hwcamera/PhotoModule$28;->val$messageId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6117
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$28;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$28;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule$28;->val$messageId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/tips/TipsService;->makeTipImmediately(II)V

    .line 6118
    :cond_0
    return-void
.end method
