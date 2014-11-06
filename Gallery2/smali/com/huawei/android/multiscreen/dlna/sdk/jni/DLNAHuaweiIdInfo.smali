.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;
.super Ljava/lang/Object;
.source "DLNAHuaweiIdInfo.java"


# instance fields
.field private huaweiId:Ljava/lang/String;

.field private returnValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getHuaweiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->huaweiId:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->returnValue:I

    return v0
.end method

.method public setHuaweiId(Ljava/lang/String;)V
    .locals 0
    .parameter "huaweiId"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->huaweiId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 38
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->returnValue:I

    .line 39
    return-void
.end method
