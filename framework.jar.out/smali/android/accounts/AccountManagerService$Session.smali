.class abstract Landroid/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Session"
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field protected final mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

.field mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field final mCreationTime:J

.field final mExpectActivityLaunch:Z

.field private mNumErrors:I

.field private mNumRequestContinued:I

.field public mNumResults:I

.field mResponse:Landroid/accounts/IAccountManagerResponse;

.field private final mStripAuthTokenFromResult:Z

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter
    .parameter "accounts"
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"
    .parameter "stripAuthTokenFromResult"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1684
    iput-object p1, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    .line 1685
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 1673
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1674
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 1675
    iput v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 1678
    iput-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1686
    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1687
    :cond_0
    if-nez p4, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1688
    :cond_1
    iput-object p2, p0, Landroid/accounts/AccountManagerService$Session;->mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    .line 1689
    iput-boolean p6, p0, Landroid/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 1690
    iput-object p3, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1691
    iput-object p4, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 1692
    iput-boolean p5, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 1693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 1694
    #getter for: Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 1695
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1703
    :goto_0
    return-void

    .line 1696
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1699
    :catch_0
    move-exception v0

    .line 1700
    .local v0, e:Landroid/os/RemoteException;
    iput-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1701
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->binderDied()V

    goto :goto_0
.end method

.method private bindToAuthenticator(Ljava/lang/String;)Z
    .locals 8
    .parameter "authenticatorType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 1897
    iget-object v4, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;
    invoke-static {v4}, Landroid/accounts/AccountManagerService;->access$1800(Landroid/accounts/AccountManagerService;)Landroid/accounts/IAccountAuthenticatorCache;

    move-result-object v4

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    iget-object v6, p0, Landroid/accounts/AccountManagerService$Session;->mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v6}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    .line 1899
    .local v0, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v0, :cond_1

    .line 1900
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1901
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "there is no authenticator for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bailing out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    :goto_0
    return v2

    .line 1907
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1908
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1909
    iget-object v4, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1910
    const-string v4, "AccountManagerService"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1911
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performing bindService to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_2
    iget-object v4, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/accounts/AccountManagerService;->access$1500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/accounts/AccountManagerService$Session;->mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, v1, p0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1914
    const-string v3, "AccountManagerService"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1915
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1921
    goto :goto_0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 1717
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1719
    monitor-exit v1

    .line 1731
    :goto_0
    return-void

    .line 1721
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1727
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1729
    :cond_1
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->cancelTimeout()V

    .line 1730
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->unbind()V

    goto :goto_0

    .line 1721
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    .line 1762
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1763
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$1500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1765
    :cond_0
    return-void
.end method


# virtual methods
.method bind()V
    .locals 3

    .prologue
    .line 1751
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiating bind to authenticator type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService$Session;->bindToAuthenticator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1755
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind attempt failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v0, 0x1

    const-string v1, "bind failure"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 1758
    :cond_1
    return-void
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1735
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->close()V

    .line 1736
    return-void
.end method

.method public cancelTimeout()V
    .locals 2

    .prologue
    .line 1773
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$1600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/accounts/AccountManagerService$MessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1774
    return-void
.end method

.method getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 2

    .prologue
    .line 1706
    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    if-nez v1, :cond_0

    .line 1708
    const/4 v0, 0x0

    .line 1712
    :goto_0
    return-object v0

    .line 1710
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1711
    .local v0, response:Landroid/accounts/IAccountManagerResponse;
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$Session;->close()V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    const/4 v5, 0x2

    .line 1870
    iget v2, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 1871
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1872
    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_2

    .line 1873
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1874
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calling onError() on response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    :cond_1
    :goto_0
    return-void

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1881
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1885
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v2, "AccountManagerService"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1886
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onError: already closed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestContinued()V
    .locals 1

    .prologue
    .line 1866
    iget v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 1867
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x2

    .line 1820
    iget v5, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    .line 1821
    if-eqz p1, :cond_0

    const-string v5, "authtoken"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1822
    const-string v5, "authAccount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, accountName:Ljava/lang/String;
    const-string v5, "accountType"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1824
    .local v2, accountType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1825
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v6, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v7, p0, Landroid/accounts/AccountManagerService$Session;->mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #calls: Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    invoke-static {v6, v7, v0}, Landroid/accounts/AccountManagerService;->access$1700(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Landroid/accounts/AccountManagerService$Session;->mAccounts:Landroid/accounts/AccountManagerService$UserAccounts;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v8}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1831
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    :cond_0
    iget-boolean v5, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    const-string v5, "intent"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1833
    iget-object v4, p0, Landroid/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1837
    .local v4, response:Landroid/accounts/IAccountManagerResponse;
    :goto_0
    if-eqz v4, :cond_2

    .line 1839
    if-nez p1, :cond_4

    .line 1840
    :try_start_0
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1841
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calling onError() on response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_1
    const/4 v5, 0x5

    const-string/jumbo v6, "null bundle returned"

    invoke-interface {v4, v5, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    :cond_2
    :goto_1
    return-void

    .line 1835
    .end local v4           #response:Landroid/accounts/IAccountManagerResponse;
    :cond_3
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v4

    .restart local v4       #response:Landroid/accounts/IAccountManagerResponse;
    goto :goto_0

    .line 1847
    :cond_4
    :try_start_1
    iget-boolean v5, p0, Landroid/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    if-eqz v5, :cond_5

    .line 1848
    const-string v5, "authtoken"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1850
    :cond_5
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1851
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calling onResult() on response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_6
    invoke-interface {v4, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1856
    :catch_0
    move-exception v3

    .line 1858
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "AccountManagerService"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1859
    const-string v5, "AccountManagerService"

    const-string v6, "failure while notifying response"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1777
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1779
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :goto_0
    return-void

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string/jumbo v2, "remote exception"

    invoke-virtual {p0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 1787
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 1788
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1789
    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 1791
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "disconnected"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onServiceDisconnected: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 4

    .prologue
    .line 1805
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 1806
    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_0

    .line 1808
    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v3, "timeout"

    invoke-interface {v1, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1812
    const-string v2, "AccountManagerService"

    const-string v3, "Session.onTimedOut: caught RemoteException while responding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public scheduleTimeout()V
    .locals 4

    .prologue
    .line 1768
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;
    invoke-static {v0}, Landroid/accounts/AccountManagerService;->access$1600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$Session;->this$0:Landroid/accounts/AccountManagerService;

    #getter for: Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;
    invoke-static {v1}, Landroid/accounts/AccountManagerService;->access$1600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/accounts/AccountManagerService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1770
    return-void
.end method

.method protected toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1739
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 5
    .parameter "now"

    .prologue
    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: expectLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accounts/AccountManagerService$Session;->mNumErrors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lifetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/accounts/AccountManagerService$Session;->mCreationTime:J

    sub-long v1, p1, v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
