.class final Lcom/huawei/android/smcs/SmartTrimProcessPkgResume$1;
.super Ljava/lang/Object;
.source "SmartTrimProcessPkgResume.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    .locals 1
    .parameter "source"

    .prologue
    .line 127
    new-instance v0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    invoke-direct {v0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    .locals 1
    .parameter "size"

    .prologue
    .line 131
    new-array v0, p1, [Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume$1;->newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    move-result-object v0

    return-object v0
.end method
