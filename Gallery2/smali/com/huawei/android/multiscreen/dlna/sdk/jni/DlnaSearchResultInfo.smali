.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;
.super Ljava/lang/Object;
.source "DlnaSearchResultInfo.java"


# instance fields
.field private mediaTotalCount:I

.field private resultCount:I

.field private searchResult:Ljava/lang/String;

.field private systemUpdateId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaTotalCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->mediaTotalCount:I

    return v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->resultCount:I

    return v0
.end method

.method public getSearchResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->searchResult:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemUpdateId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->systemUpdateId:I

    return v0
.end method

.method public setMediaTotalCount(I)V
    .locals 0
    .parameter "mediaTotalCount"

    .prologue
    .line 69
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->mediaTotalCount:I

    .line 70
    return-void
.end method

.method public setResultCount(I)V
    .locals 0
    .parameter "resultCount"

    .prologue
    .line 77
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->resultCount:I

    .line 78
    return-void
.end method

.method public setSearchResult(Ljava/lang/String;)V
    .locals 0
    .parameter "searchResult"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->searchResult:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSystemUpdateId(I)V
    .locals 0
    .parameter "systemUpdateId"

    .prologue
    .line 85
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaSearchResultInfo;->systemUpdateId:I

    .line 86
    return-void
.end method
