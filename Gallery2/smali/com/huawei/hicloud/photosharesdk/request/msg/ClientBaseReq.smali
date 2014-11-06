.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.super Ljava/lang/Object;
.source "ClientBaseReq.java"


# static fields
.field public static final CLIENT_CHANGE_NOTIFY:I = 0x5

.field public static final CLIENT_CREATE_FRIENDS:I = 0x6

.field public static final CLIENT_CREATE_SHARE:I = 0x1

.field public static final CLIENT_DELETE_FRIENDS:I = 0x7

.field public static final CLIENT_DELETE_SHARE:I = 0x3

.field public static final CLIENT_INVITE_RESULT:I = 0x9

.field public static final CLIENT_QUERY_FRIENDS:I = 0x8

.field public static final CLIENT_QUERY_SHARE:I = 0x4

.field public static final CLIENT_UPDATE_SHARE:I = 0x2


# instance fields
.field private code:I

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->code:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->info:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "info"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->code:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->info:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->code:I

    .line 47
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->info:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->code:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 63
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->code:I

    .line 64
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;->info:Ljava/lang/String;

    .line 80
    return-void
.end method
