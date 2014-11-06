.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;
.super Ljava/lang/Object;
.source "DLNATransferProgressInfo.java"


# instance fields
.field private returnValue:I

.field private transferLength:Ljava/lang/String;

.field private transferStatus:Ljava/lang/String;

.field private transferTotal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReturnValue()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->returnValue:I

    return v0
.end method

.method public getTransferLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferLength:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferTotal:Ljava/lang/String;

    return-object v0
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 18
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->returnValue:I

    .line 19
    return-void
.end method

.method public setTransferLength(Ljava/lang/String;)V
    .locals 0
    .parameter "transferLength"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferLength:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTransferStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "transferStatus"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferStatus:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTransferTotal(Ljava/lang/String;)V
    .locals 0
    .parameter "transferTotal"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferTotal:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNATransferProgressInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string v1, ", transferStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transferTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransferProgressInfo;->transferTotal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
