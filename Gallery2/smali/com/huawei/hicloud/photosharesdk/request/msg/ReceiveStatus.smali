.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
.super Ljava/lang/Object;
.source "ReceiveStatus.java"


# static fields
.field public static final NO_RECEIVE:I = -0x1

.field public static final RECEIVE_ACCEPT:I = 0x1

.field public static final RECEIVE_INVITE:I = 0x0

.field public static final RECEIVE_REJECT:I = 0x2


# instance fields
.field private account:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->account:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->status:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "account"
    .parameter "status"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->account:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->status:I

    .line 28
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->account:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->status:I

    .line 30
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->status:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->account:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 53
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->status:I

    .line 54
    return-void
.end method
