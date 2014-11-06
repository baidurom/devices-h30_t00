.class public Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;
.super Ljava/lang/Object;
.source "SDeviceDescription.java"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mComponentID:Ljava/lang/String;

.field private mDeviceID:I

.field private mDeviceIP:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceStatus:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

.field private mDeviceType:I

.field private mUdn:Ljava/lang/String;

.field private mVersionMatchingFlag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;)V
    .locals 10
    .parameter "deviceID"
    .parameter "deviceIP"
    .parameter "deviceName"
    .parameter "componentID"
    .parameter "deviceStatus"

    .prologue
    .line 33
    const-string v6, ""

    const-string v7, ""

    .line 34
    const/16 v8, 0x65

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "deviceID"
    .parameter "deviceIP"
    .parameter "deviceName"
    .parameter "componentID"
    .parameter "deviceStatus"
    .parameter "baseUrl"
    .parameter "udn"
    .parameter "deviceType"
    .parameter "versionMatchingFlag"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceID:I

    .line 41
    iput-object p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceIP:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mComponentID:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceStatus:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 45
    iput-object p6, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mBaseUrl:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mUdn:Ljava/lang/String;

    .line 47
    iput p8, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceType:I

    .line 48
    iput p9, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mVersionMatchingFlag:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "deviceIP"
    .parameter "deviceName"

    .prologue
    .line 28
    const/4 v1, 0x0

    const-string v4, ""

    sget-object v5, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->STOPPED:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getComponentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mComponentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceID:I

    return v0
.end method

.method public getDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceIP:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceStatus:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    return-object v0
.end method

.method public getUdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionMatchingFlag()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mVersionMatchingFlag:I

    return v0
.end method

.method public setComponentID(Ljava/lang/String;)V
    .locals 0
    .parameter "componentID"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mComponentID:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDeviceID(I)V
    .locals 0
    .parameter "deviceID"

    .prologue
    .line 64
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceID:I

    .line 65
    return-void
.end method

.method public setDeviceIP(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceIP"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceIP:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDeviceStatus(Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;)V
    .locals 0
    .parameter "deviceStatus"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mDeviceStatus:Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    .line 129
    return-void
.end method

.method public setUdn(Ljava/lang/String;)V
    .locals 0
    .parameter "udn"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mUdn:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setVersionMatchingFlag(I)V
    .locals 0
    .parameter "versionMatchingFlag"

    .prologue
    .line 160
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;->mVersionMatchingFlag:I

    .line 161
    return-void
.end method
