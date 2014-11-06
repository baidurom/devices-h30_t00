.class Lcom/huawei/hicloud/photosharesdk3/logic/call/MyBaseCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "FixedCallable.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 229
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 231
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method
