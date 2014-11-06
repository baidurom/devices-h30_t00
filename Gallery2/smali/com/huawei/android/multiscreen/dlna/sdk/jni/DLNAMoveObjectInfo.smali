.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;
.super Ljava/lang/Object;
.source "DLNAMoveObjectInfo.java"


# instance fields
.field private newObjectID:Ljava/lang/String;

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
.method public getNewObjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->newObjectID:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->returnValue:I

    return v0
.end method

.method public setNewObjectID(Ljava/lang/String;)V
    .locals 0
    .parameter "newObjectID"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->newObjectID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 14
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->returnValue:I

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNAMoveObjectInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v1, ", newObjectID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMoveObjectInfo;->newObjectID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
