.class public Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;
.source "PushShareChangeNtf.java"


# static fields
.field public static final DELETE_SHARE:Ljava/lang/String; = "3"

.field public static final SCOPE_ALL:I = 0x0

.field public static final SCOPE_SHARE_BY_ME:I = 0x2

.field public static final SCOPE_SHARE_TO_ME:I = 0x3

.field public static final SCOPE_SPECIAL:I = 0x1


# instance fields
.field private scope:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "1"

    const-class v1, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->scope:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->sharePath:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->type:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->userID:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->scope:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->sharePath:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->type:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareChangeNtf;->userID:Ljava/lang/String;

    .line 54
    return-void
.end method
