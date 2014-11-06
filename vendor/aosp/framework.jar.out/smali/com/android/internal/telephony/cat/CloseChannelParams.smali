.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBackToTcpListen:Z

.field mCloseCid:I

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V
    .locals 2
    .parameter "cmdDet"
    .parameter "cid"
    .parameter "textMsg"
    .parameter "backToTcpListen"

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 262
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 263
    iput v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 268
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 269
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    .line 270
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    .line 271
    return-void
.end method
