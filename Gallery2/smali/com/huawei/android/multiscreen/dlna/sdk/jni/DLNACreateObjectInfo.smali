.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;
.super Ljava/lang/Object;
.source "DLNACreateObjectInfo.java"


# instance fields
.field private objectID:Ljava/lang/String;

.field private rescharStr:Ljava/lang/String;

.field private returnValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->objectID:Ljava/lang/String;

    return-object v0
.end method

.method public getRescharStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->rescharStr:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->returnValue:I

    return v0
.end method

.method public setObjectID(Ljava/lang/String;)V
    .locals 0
    .parameter "objectID"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->objectID:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setRescharStr(Ljava/lang/String;)V
    .locals 0
    .parameter "rescharStr"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->rescharStr:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 16
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->returnValue:I

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNACreateObjectInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string v1, ", objectID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->objectID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rescharStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNACreateObjectInfo;->rescharStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
