.class public final enum Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
.super Ljava/lang/Enum;
.source "PushProcesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

.field public static final enum PushError:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

.field public static final enum PushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

.field public static final enum PushShareInvite:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

.field public static final enum PushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    const-string v1, "PushError"

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushError:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    const-string v1, "PushShareChangeNtf"

    .line 49
    const-string v2, "1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    const-string v1, "PushShareInvite"

    .line 50
    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInvite:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    const-string v1, "PushShareInviteResult"

    .line 51
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushError:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareChangeNtf:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInvite:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->PushShareInviteResult:Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->code:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    return-object v0
.end method

.method public static values()[Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/PushProcesser$PushCommand;->code:I

    return v0
.end method
