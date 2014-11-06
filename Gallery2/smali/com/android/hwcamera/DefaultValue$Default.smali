.class Lcom/android/hwcamera/DefaultValue$Default;
.super Ljava/lang/Object;
.source "DefaultValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/DefaultValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Default"
.end annotation


# instance fields
.field private mBackCameraDefault:I

.field private mFrontCameratDefault:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/DefaultValue$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/hwcamera/DefaultValue$Default;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackCameraDefault()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/hwcamera/DefaultValue$Default;->mBackCameraDefault:I

    return v0
.end method

.method public getFrontCameratDefault()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/hwcamera/DefaultValue$Default;->mFrontCameratDefault:I

    return v0
.end method

.method public setBackCameraDefault(I)V
    .locals 0
    .parameter "mBackCameraDefault"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/hwcamera/DefaultValue$Default;->mBackCameraDefault:I

    .line 74
    return-void
.end method

.method public setFrontCameratDefault(I)V
    .locals 0
    .parameter "mFronCameratDefault"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/hwcamera/DefaultValue$Default;->mFrontCameratDefault:I

    .line 68
    return-void
.end method
