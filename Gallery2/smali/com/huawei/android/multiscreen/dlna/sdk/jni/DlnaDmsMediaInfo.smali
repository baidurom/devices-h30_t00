.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;
.super Ljava/lang/Object;
.source "DlnaDmsMediaInfo.java"


# instance fields
.field private id:I

.field private mimeType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->size:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 14
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->id:I

    .line 15
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->mimeType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 32
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->size:I

    .line 33
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsMediaInfo;->uri:Ljava/lang/String;

    .line 27
    return-void
.end method
