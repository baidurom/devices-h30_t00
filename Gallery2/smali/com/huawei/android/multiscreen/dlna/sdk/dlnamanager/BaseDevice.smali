.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;
.super Ljava/lang/Object;
.source "BaseDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDevice;


# static fields
.field private static name:Ljava/lang/String;

.field private static productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setStaticName(Ljava/lang/String;)V
    .locals 0
    .parameter "_name"

    .prologue
    .line 28
    sput-object p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static setStaticProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V
    .locals 0
    .parameter "_productType"

    .prologue
    .line 32
    sput-object p0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 33
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->setStaticName(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiSetDeviceName(Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V
    .locals 2
    .parameter "productType"

    .prologue
    .line 52
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;->setStaticProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    .line 53
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->getValue()I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiSetProductType(I)I

    .line 55
    return-void
.end method
