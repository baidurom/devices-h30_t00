.class public Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;
.super Ljava/lang/Exception;
.source "FileIncompleteException.java"


# static fields
.field private static final serialVersionUID:J = -0x48c4ac5c069e060cL


# instance fields
.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;->fileName:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;->fileName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public tosString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " The file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is incomplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
