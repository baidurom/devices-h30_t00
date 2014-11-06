.class public Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;
.super Ljava/lang/Object;
.source "SSinkProperty.java"


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mHeight:I

.field private mIPAddress:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mSupportAudio:Z

.field private mSupportVideo:Z

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method public constructor <init>(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "supportAudio"
    .parameter "supportVideo"
    .parameter "width"
    .parameter "height"
    .parameter "iPAddress"
    .parameter "macAddress"
    .parameter "deviceName"

    .prologue
    .line 45
    .line 46
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;-><init>(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 0
    .parameter "supportAudio"
    .parameter "supportVideo"
    .parameter "width"
    .parameter "height"
    .parameter "iPAddress"
    .parameter "macAddress"
    .parameter "deviceName"
    .parameter "surface"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportAudio:Z

    .line 34
    iput-boolean p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportVideo:Z

    .line 35
    iput p3, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mWidth:I

    .line 36
    iput p4, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mHeight:I

    .line 37
    iput-object p5, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mIPAddress:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mMacAddress:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mDeviceName:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSurface:Landroid/view/Surface;

    .line 41
    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mHeight:I

    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mWidth:I

    return v0
.end method

.method public isSupportAudio()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportAudio:Z

    return v0
.end method

.method public isSupportVideo()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportVideo:Z

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mDeviceName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 110
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mHeight:I

    .line 111
    return-void
.end method

.method public setIPAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "iPAddress"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mIPAddress:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mMacAddress:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setSupportAudio(Z)V
    .locals 0
    .parameter "supportAudio"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportAudio:Z

    .line 63
    return-void
.end method

.method public setSupportVideo(Z)V
    .locals 0
    .parameter "supportVideo"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSupportVideo:Z

    .line 79
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mSurface:Landroid/view/Surface;

    .line 175
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 94
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;->mWidth:I

    .line 95
    return-void
.end method
