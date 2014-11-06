.class Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$1;
.super Ljava/lang/Object;
.source "MRSinkServiceHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return v1

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$1;->this$0:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;

    #setter for: Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->delaying:Z
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;->access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper;Z)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
