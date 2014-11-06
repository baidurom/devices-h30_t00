.class final Lcom/huawei/lcagent/client/LogMetricInfo$1;
.super Ljava/lang/Object;
.source "LogMetricInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/lcagent/client/LogMetricInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/lcagent/client/LogMetricInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/lcagent/client/LogMetricInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 72
    new-instance v0, Lcom/huawei/lcagent/client/LogMetricInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huawei/lcagent/client/LogMetricInfo;-><init>(Landroid/os/Parcel;Lcom/huawei/lcagent/client/LogMetricInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/huawei/lcagent/client/LogMetricInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/lcagent/client/LogMetricInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/lcagent/client/LogMetricInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 77
    new-array v0, p1, [Lcom/huawei/lcagent/client/LogMetricInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/huawei/lcagent/client/LogMetricInfo$1;->newArray(I)[Lcom/huawei/lcagent/client/LogMetricInfo;

    move-result-object v0

    return-object v0
.end method
