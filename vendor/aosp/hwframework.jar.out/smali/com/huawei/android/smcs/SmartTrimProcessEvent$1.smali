.class final Lcom/huawei/android/smcs/SmartTrimProcessEvent$1;
.super Ljava/lang/Object;
.source "SmartTrimProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/smcs/SmartTrimProcessEvent;
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
        "Lcom/huawei/android/smcs/SmartTrimProcessEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessEvent;
    .locals 2
    .parameter "source"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, event:I
    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 75
    :pswitch_0
    new-instance v1, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    invoke-direct {v1, p1, v0}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;-><init>(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :pswitch_1
    new-instance v1, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    invoke-direct {v1, p1, v0}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;-><init>(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/smcs/SmartTrimProcessEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessEvent;
    .locals 1
    .parameter "size"

    .prologue
    .line 83
    new-array v0, p1, [Lcom/huawei/android/smcs/SmartTrimProcessEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessEvent$1;->newArray(I)[Lcom/huawei/android/smcs/SmartTrimProcessEvent;

    move-result-object v0

    return-object v0
.end method
