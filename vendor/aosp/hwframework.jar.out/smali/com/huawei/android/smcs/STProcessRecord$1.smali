.class final Lcom/huawei/android/smcs/STProcessRecord$1;
.super Ljava/lang/Object;
.source "STProcessRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/smcs/STProcessRecord;
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
        "Lcom/huawei/android/smcs/STProcessRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/STProcessRecord;
    .locals 1
    .parameter "source"

    .prologue
    .line 108
    new-instance v0, Lcom/huawei/android/smcs/STProcessRecord;

    invoke-direct {v0, p1}, Lcom/huawei/android/smcs/STProcessRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/STProcessRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/STProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/smcs/STProcessRecord;
    .locals 1
    .parameter "size"

    .prologue
    .line 111
    new-array v0, p1, [Lcom/huawei/android/smcs/STProcessRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/STProcessRecord$1;->newArray(I)[Lcom/huawei/android/smcs/STProcessRecord;

    move-result-object v0

    return-object v0
.end method
