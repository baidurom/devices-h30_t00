.class public Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;
.super Ljava/lang/Exception;
.source "SDUnavailableException.java"


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;->msg:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;->msg:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/exception/SDUnavailableException;->msg:Ljava/lang/String;

    return-object v0
.end method
