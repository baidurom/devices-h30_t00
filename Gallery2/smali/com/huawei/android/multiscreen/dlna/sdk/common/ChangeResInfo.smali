.class public Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;
.super Ljava/lang/Object;
.source "ChangeResInfo.java"


# instance fields
.field delList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isFromHuaWei:Z

.field systemUpdateID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->delList:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->isFromHuaWei:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getDelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->delList:Ljava/util/List;

    return-object v0
.end method

.method public getIsFromHuaWei()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->isFromHuaWei:Z

    return v0
.end method

.method public getSystemUpdateID()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->systemUpdateID:I

    return v0
.end method

.method public setDelList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, delList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->delList:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setIsFromHuaWei(Z)V
    .locals 0
    .parameter "isFromHuaWei"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->isFromHuaWei:Z

    .line 62
    return-void
.end method

.method public setSystemUpdateID(I)V
    .locals 0
    .parameter "systemUpdateID"

    .prologue
    .line 29
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ChangeResInfo;->systemUpdateID:I

    .line 30
    return-void
.end method
