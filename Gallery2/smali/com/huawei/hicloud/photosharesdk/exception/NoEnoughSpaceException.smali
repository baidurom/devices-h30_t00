.class public Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
.super Ljava/lang/Exception;
.source "NoEnoughSpaceException.java"


# static fields
.field private static final serialVersionUID:J = -0x60f90c3b65c7c3c9L


# instance fields
.field private storageDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "storageDirectory"

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;->storageDirectory:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;->storageDirectory:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There are not enough space to use in:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;->storageDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
