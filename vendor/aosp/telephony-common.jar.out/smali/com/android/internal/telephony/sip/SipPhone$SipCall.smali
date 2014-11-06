.class Lcom/android/internal/telephony/sip/SipPhone$SipCall;
.super Lcom/android/internal/telephony/sip/SipCallBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipCall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipCallBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    return-void
.end method

.method private add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    .line 602
    .local v0, call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    if-ne v0, p0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 603
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_0
.end method

.method private convertDtmf(C)I
    .locals 4
    .parameter "c"

    .prologue
    .line 616
    add-int/lit8 v0, p1, -0x30

    .line 617
    .local v0, code:I
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 618
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid DTMF char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 619
    :sswitch_0
    const/16 v0, 0xa

    .line 630
    .end local v0           #code:I
    :cond_1
    :goto_0
    return v0

    .line 620
    .restart local v0       #code:I
    :sswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 621
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 622
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 623
    :sswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 624
    :sswitch_5
    const/16 v0, 0xf

    goto :goto_0

    .line 618
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
        0x44 -> :sswitch_5
    .end sparse-switch
.end method

.method private getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 699
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .parameter "that"

    .prologue
    .line 436
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    .line 437
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 439
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a non-ringing call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 528
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a conf call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->acceptCall()V

    .line 531
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "originalNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 457
    move-object v2, p1

    .line 458
    .local v2, calleeSipUri:Ljava/lang/String;
    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v7}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, replaceStr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .end local v5           #replaceStr:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v6, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v6, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 466
    .local v1, callee:Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v6, p0, v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 468
    .local v0, c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->dial()V

    .line 469
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    return-object v0

    .line 472
    .end local v0           #c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .end local v1           #callee:Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 473
    .local v3, e:Ljava/text/ParseException;
    new-instance v6, Landroid/net/sip/SipException;

    const-string v7, "dial"

    invoke-direct {v6, v7, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 476
    .end local v3           #e:Ljava/text/ParseException;
    :catch_1
    move-exception v4

    .line 477
    .local v4, ee:Ljava/lang/Exception;
    new-instance v6, Landroid/net/sip/SipException;

    const-string v7, "dial"

    invoke-direct {v6, v7, v4}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getMute()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 484
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 485
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    const-string v4, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 489
    const/4 v2, 0x0

    .line 490
    .local v2, excp:Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .local v0, c:Lcom/android/internal/telephony/Connection;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Lcom/android/internal/telephony/CallStateException;
    move-object v2, v1

    goto :goto_0

    .line 497
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    if-eqz v2, :cond_2

    :try_start_2
    throw v2

    .line 502
    .end local v2           #excp:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 499
    :cond_1
    :try_start_3
    const-string v4, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up dead call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    return-void
.end method

.method hold()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 557
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 558
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->hold()V

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 560
    return-void
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Z)V
    .locals 4
    .parameter "sipAudioCall"
    .parameter "makeCallWait"

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 507
    .local v1, callee:Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v3, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V

    .line 508
    .local v0, c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    if-eqz p2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    .line 511
    .local v2, newState:Lcom/android/internal/telephony/Call$State;
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V

    .line 515
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 517
    return-void

    .line 510
    .end local v2           #newState:Lcom/android/internal/telephony/Call$State;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 9
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v1

    .line 588
    .local v1, audioGroup:Landroid/net/rtp/AudioGroup;
    iget-object v7, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    iget-object v8, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/telephony/Connection;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/telephony/Connection;

    .line 590
    .local v3, cc:[Lcom/android/internal/telephony/Connection;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/internal/telephony/Connection;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .local v2, c:Lcom/android/internal/telephony/Connection;
    move-object v4, v2

    .line 591
    check-cast v4, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .line 592
    .local v4, conn:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 593
    invoke-virtual {v4}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    .line 594
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    .line 590
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 597
    .end local v2           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #conn:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 598
    return-void
.end method

.method onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 6
    .parameter "conn"

    .prologue
    .line 680
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 681
    const/4 v0, 0x1

    .line 682
    .local v0, allConnectionsDisconnected:Z
    const-string v3, "Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---check connections: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 685
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const-string v3, "Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 692
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    :cond_1
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 694
    .end local v0           #allConnectionsDisconnected:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, p1}, Lcom/android/internal/telephony/sip/SipPhone;->access$700(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 695
    return-void
.end method

.method onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .locals 2
    .parameter "conn"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 674
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 676
    :cond_0
    return-void
.end method

.method rejectCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 521
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 424
    return-void
.end method

.method sendDtmf(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 611
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->convertDtmf(C)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    goto :goto_0
.end method

.method setAudioGroupMode()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 539
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 540
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v1

    .line 542
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 543
    invoke-virtual {v0, v6}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 551
    :goto_1
    const-string v2, "Call"

    const-string v3, "audioGroup mode change: %d --> %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    invoke-virtual {v0, v7}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1

    .line 546
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1

    .line 549
    :cond_3
    invoke-virtual {v0, v4}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_1
.end method

.method setMute(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 573
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setMute(Z)V

    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v0, p1, :cond_2

    .line 636
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+***+ call state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": on phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_3

    .line 641
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->startRingbackTone()V

    .line 648
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_4

    .line 649
    const-string v0, "Call"

    const-string v1, "Start the SIP phone ring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifySipCallRing()V
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$500(Lcom/android/internal/telephony/sip/SipPhone;)V

    .line 665
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 669
    :cond_2
    return-void

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopRingbackTone()V

    goto :goto_0

    .line 651
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const-string v0, "Call"

    const-string v1, "Start the SIP phone ring after the call is ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    .line 658
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setState]Change WAITING to INCOMING.  New state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v2}, Lcom/android/internal/telephony/sip/SipPhone;->access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifySipCallRing()V
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$600(Lcom/android/internal/telephony/sip/SipPhone;)V

    goto :goto_1
.end method

.method switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 3
    .parameter "that"

    .prologue
    .line 427
    const-class v2, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v2

    .line 428
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    .line 429
    .local v0, tmp:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 431
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 432
    monitor-exit v2

    .line 433
    return-void

    .line 432
    .end local v0           #tmp:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unhold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 564
    new-instance v0, Landroid/net/rtp/AudioGroup;

    invoke-direct {v0}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 565
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 566
    .local v1, c:Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 569
    return-void
.end method
