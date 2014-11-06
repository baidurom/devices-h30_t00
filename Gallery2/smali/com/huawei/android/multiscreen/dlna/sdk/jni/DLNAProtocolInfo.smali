.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;
.super Ljava/lang/Object;
.source "DLNAProtocolInfo.java"


# instance fields
.field private returnValue:I

.field private sink:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReturnValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->returnValue:I

    return v0
.end method

.method public getSink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->sink:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 37
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->returnValue:I

    .line 38
    return-void
.end method

.method public setSink(Ljava/lang/String;)V
    .locals 0
    .parameter "sink"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->sink:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAProtocolInfo;->source:Ljava/lang/String;

    .line 46
    return-void
.end method
