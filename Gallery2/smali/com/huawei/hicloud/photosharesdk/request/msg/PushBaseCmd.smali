.class public Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;
.super Ljava/lang/Object;
.source "PushBaseCmd.java"


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final PUSH_CHANGE_NTF:Ljava/lang/String; = "1"

.field public static final PUSH_SHARE_INVITE:Ljava/lang/String; = "2"

.field public static final PUSH_SHARE_INVITE_RESULT:Ljava/lang/String; = "3"


# instance fields
.field private code:Ljava/lang/String;

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "info"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "0"

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->code:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->info:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->code:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->info:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->code:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;->info:Ljava/lang/String;

    .line 41
    return-void
.end method
