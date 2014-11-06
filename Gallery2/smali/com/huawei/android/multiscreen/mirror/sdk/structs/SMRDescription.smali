.class public Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
.super Ljava/lang/Object;
.source "SMRDescription.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "ID"
    .parameter "Description"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mID:I

    .line 16
    iput-object p2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mDescription:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mID:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mDescription:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setID(I)V
    .locals 0
    .parameter "iD"

    .prologue
    .line 32
    iput p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;->mID:I

    .line 33
    return-void
.end method
