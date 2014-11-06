.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;
.super Ljava/lang/Object;
.source "DLNAImportExportResourceInfo.java"


# instance fields
.field private returnValue:I

.field private transferID:I


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
    .line 10
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->returnValue:I

    return v0
.end method

.method public getTransferID()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->transferID:I

    return v0
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 14
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->returnValue:I

    .line 15
    return-void
.end method

.method public setTransferID(I)V
    .locals 0
    .parameter "transferID"

    .prologue
    .line 22
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->transferID:I

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNAImportExportResourceInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v1, ", transferID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAImportExportResourceInfo;->transferID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
