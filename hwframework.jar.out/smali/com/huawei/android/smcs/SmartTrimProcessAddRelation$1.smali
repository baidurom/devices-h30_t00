.class final Lcom/huawei/android/smcs/SmartTrimProcessAddRelation$1;
.super Ljava/lang/Object;
.source "SmartTrimProcessAddRelation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
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
        "Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    .locals 1
    .parameter "source"

    .prologue
    .line 136
    new-instance v0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    invoke-direct {v0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    .locals 1
    .parameter "size"

    .prologue
    .line 139
    new-array v0, p1, [Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation$1;->newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    move-result-object v0

    return-object v0
.end method
