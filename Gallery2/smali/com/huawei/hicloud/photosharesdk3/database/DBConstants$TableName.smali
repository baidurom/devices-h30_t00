.class public final enum Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;
.super Ljava/lang/Enum;
.source "DBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/database/DBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TableName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

.field public static final enum FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

.field public static final enum FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

.field public static final enum ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

.field public static final enum SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

.field public static final enum TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v1, "FolderPhoto"

    .line 69
    const-string v2, "T_FolderPhoto"

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v1, "FolderReceiver"

    const-string v2, "T_FolderReceiver"

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v1, "ReceiverInfo"

    const-string v2, "T_ReceiverInfo"

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v1, "SharedFolder"

    const-string v2, "T_SharedFolder"

    invoke-direct {v0, v1, v6, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v1, "TaskInfo"

    const-string v2, "T_TaskInfo"

    invoke-direct {v0, v1, v7, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    return-object v0
.end method

.method public static values()[Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ENUM$VALUES:[Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    array-length v1, v0

    new-array v2, v1, [Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
