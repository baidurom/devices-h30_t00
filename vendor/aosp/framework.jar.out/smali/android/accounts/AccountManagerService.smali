.class public Landroid/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerService$DatabaseHelper;,
        Landroid/accounts/AccountManagerService$MessageHandler;,
        Landroid/accounts/AccountManagerService$Session;,
        Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Landroid/accounts/AccountManagerService$RemoveAccountSession;,
        Landroid/accounts/AccountManagerService$TestFeaturesSession;,
        Landroid/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String; = null

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String; = null

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account; = null

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:I = 0xea60

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 163
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 203
    sget-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V
    .locals 4
    .parameter "context"
    .parameter "packageManager"
    .parameter "authenticatorCache"

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 165
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 166
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 223
    iput-object p1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 226
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountManagerService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    .line 227
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v2, Landroid/accounts/AccountManagerService$MessageHandler;

    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/accounts/AccountManagerService$MessageHandler;-><init>(Landroid/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    .line 230
    iput-object p3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    .line 231
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 233
    sget-object v2, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManagerService$1;-><init>(Landroid/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v1, userFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/accounts/AccountManagerService$2;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManagerService$2;-><init>(Landroid/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$100(Landroid/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService;->doNotification(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/accounts/AccountManagerService;)Landroid/accounts/IAccountAuthenticatorCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$1900(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    return-void
.end method

.method private addAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 16
    .parameter "accounts"
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 550
    if-nez p2, :cond_0

    .line 551
    const/4 v1, 0x0

    .line 592
    :goto_0
    return v1

    .line 553
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 554
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 555
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :try_start_1
    const-string/jumbo v1, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v1, v12}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    .line 561
    .local v8, numMatches:J
    const-wide/16 v12, 0x0

    cmp-long v1, v8, v12

    if-lez v1, :cond_1

    .line 562
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping since the account already exists"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 564
    const/4 v1, 0x0

    .line 589
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 564
    monitor-exit v11

    goto :goto_0

    .line 593
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #numMatches:J
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 566
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #numMatches:J
    :cond_1
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string/jumbo v1, "type"

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v1, "accounts"

    const-string/jumbo v12, "name"

    invoke-virtual {v2, v1, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 571
    .local v3, accountId:J
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-gez v1, :cond_2

    .line 572
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping the DB insert failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 574
    const/4 v1, 0x0

    .line 589
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 574
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 576
    :cond_2
    if-eqz p4, :cond_4

    .line 577
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 578
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, value:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 579
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gez v1, :cond_3

    .line 580
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping since insertExtra failed for key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 582
    const/4 v1, 0x0

    .line 589
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 586
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 587
    invoke-direct/range {p0 .. p2}, Landroid/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 589
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 591
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 592
    const/4 v1, 0x1

    monitor-exit v11

    goto/16 :goto_0

    .line 589
    .end local v3           #accountId:J
    .end local v8           #numMatches:J
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 2326
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.AUTHENTICATE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2327
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V

    .line 2328
    return-void
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .locals 9
    .parameter "permissions"

    .prologue
    .line 2219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2221
    .local v5, uid:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 2222
    .local v4, perm:Ljava/lang/String;
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2223
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2224
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  caller uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_0
    return-void

    .line 2221
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2230
    .end local v4           #perm:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lacks any of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2231
    .local v3, msg:Ljava/lang/String;
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 2314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2315
    .local v1, uid:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2316
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different than the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2317
    .local v0, msg:Ljava/lang/String;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2320
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2321
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is the same as the authenticator\'s uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_2
    return-void
.end method

.method private checkManageAccountsOrUseCredentialsPermissions()V
    .locals 3

    .prologue
    .line 2339
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.USE_CREDENTIALS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2341
    return-void
.end method

.method private checkManageAccountsPermission()V
    .locals 3

    .prologue
    .line 2335
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method private checkReadAccountsPermission()V
    .locals 3

    .prologue
    .line 2331
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2332
    return-void
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    .locals 17
    .parameter "account"
    .parameter "intent"
    .parameter "userId"

    .prologue
    .line 1197
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1199
    .local v15, uid:I
    const-string v2, "authTokenType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1201
    .local v9, authTokenType:Ljava/lang/String;
    const-string v2, "authTokenLabel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1204
    .local v8, authTokenLabel:Ljava/lang/String;
    new-instance v11, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v11, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1206
    .local v11, n:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040480

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1209
    .local v14, titleAndSubtitle:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1210
    .local v10, index:I
    move-object v13, v14

    .line 1211
    .local v13, title:Ljava/lang/String;
    const-string v12, ""

    .line 1212
    .local v12, subtitle:Ljava/lang/String;
    if-lez v10, :cond_0

    .line 1213
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1214
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1216
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1217
    .local v7, user:Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x1000

    const/4 v6, 0x0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v13, v12, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v15}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v7}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1222
    return-void
.end method

.method private doNotification(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;I)V
    .locals 17
    .parameter "accounts"
    .parameter "account"
    .parameter "message"
    .parameter "intent"
    .parameter "userId"

    .prologue
    .line 2171
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 2173
    .local v10, identityToken:J
    :try_start_0
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2174
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    const-class v4, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2180
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    :goto_0
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2199
    return-void

    .line 2182
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v13

    .line 2183
    .local v13, notificationId:Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2184
    new-instance v12, Landroid/app/Notification;

    const v4, 0x108008a

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v12, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2186
    .local v12, n:Landroid/app/Notification;
    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, p5

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2187
    .local v9, user:Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10400ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2189
    .local v14, notificationTitleFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v14, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x1000

    const/4 v8, 0x0

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v12, v15, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2194
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v9}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2197
    .end local v9           #user:Landroid/os/UserHandle;
    .end local v12           #n:Landroid/app/Notification;
    .end local v13           #notificationId:Ljava/lang/Integer;
    .end local v14           #notificationTitleFormat:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private dumpUser(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 21
    .parameter "userAccounts"
    .parameter "fd"
    .parameter "fout"
    .parameter "args"
    .parameter "isCheckinRequest"

    .prologue
    .line 2130
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 2131
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2133
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_1

    .line 2135
    const-string v4, "accounts"

    sget-object v5, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "type"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 2138
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2143
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_0

    .line 2144
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2143
    :cond_0
    throw v4

    .line 2166
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 2148
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .line 2149
    .local v12, accounts:[Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    move-object v13, v12

    .local v13, arr$:[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v11, v13, v15

    .line 2151
    .local v11, account:Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2154
    .end local v11           #account:Landroid/accounts/Account;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2155
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2156
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 2157
    .local v17, now:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Sessions: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/accounts/AccountManagerService$Session;

    .line 2159
    .local v19, session:Landroid/accounts/AccountManagerService$Session;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2161
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #now:J
    .end local v19           #session:Landroid/accounts/AccountManagerService$Session;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #now:J
    :cond_3
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2163
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2164
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 2166
    .end local v12           #accounts:[Landroid/accounts/Account;
    .end local v13           #arr$:[Landroid/accounts/Account;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #len$:I
    .end local v17           #now:J
    :cond_4
    :goto_3
    monitor-exit v20

    .line 2167
    return-void

    .line 2143
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_5
    if-eqz v14, :cond_4

    .line 2144
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1641
    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1644
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1649
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1647
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1649
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 13
    .parameter "userIds"

    .prologue
    .line 1560
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1561
    .local v6, runningAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    iget-object v10, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1562
    move-object v3, p1

    .local v3, arr$:[I
    :try_start_0
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v8, v3, v4

    .line 1563
    .local v8, userId:I
    invoke-virtual {p0, v8}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 1564
    .local v7, userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-nez v7, :cond_0

    .line 1562
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1565
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v7}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1566
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0, v7, v9}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1567
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_2
    array-length v9, v1

    if-ge v0, v9, :cond_1

    .line 1568
    new-instance v9, Landroid/accounts/AccountAndUser;

    aget-object v12, v1, v0

    invoke-direct {v9, v12, v8}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1570
    :cond_1
    monitor-exit v11

    goto :goto_1

    .end local v0           #a:I
    .end local v1           #accounts:[Landroid/accounts/Account;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9

    .line 1572
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    .end local v8           #userId:I
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1574
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Landroid/accounts/AccountAndUser;

    .line 1575
    .local v2, accountsArray:[Landroid/accounts/AccountAndUser;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/accounts/AccountAndUser;

    return-object v9
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 1246
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1247
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1248
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1251
    .local v2, key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1252
    .local v1, id:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1253
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1254
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    :cond_0
    monitor-exit v4

    .line 1257
    return-object v1

    .line 1256
    .end local v1           #id:Ljava/lang/Integer;
    .end local v2           #key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .locals 7
    .parameter "userId"

    .prologue
    .line 1966
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    .line 1967
    .local v2, systemDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "accounts.db"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1968
    .local v0, databaseFile:Ljava/io/File;
    if-nez p0, :cond_1

    .line 1973
    new-instance v1, Ljava/io/File;

    const-string v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1974
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1976
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 1977
    .local v3, userDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1978
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1979
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1982
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1983
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1987
    .end local v1           #oldFile:Ljava/io/File;
    .end local v3           #userDir:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "accountId"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1654
    const-string v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1658
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1663
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1661
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1663
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 1262
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1263
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1264
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1265
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1266
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_0
    monitor-exit v2

    .line 1269
    return-object v0

    .line 1268
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSingleton()Landroid/accounts/AccountManagerService;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService;

    return-object v0
.end method

.method private getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 9
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2366
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2367
    :cond_0
    const-string v5, "AccountManagerService"

    const-string v6, "grantAppPermission: called with invalid arguments"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    :goto_0
    return-void

    .line 2370
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2371
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2372
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2373
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2376
    .local v0, accountId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_2

    .line 2377
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2378
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2379
    const-string v5, "auth_token_type"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const-string/jumbo v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2381
    const-string v5, "grants"

    const-string v7, "accounts_id"

    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2382
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2385
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2387
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v7, Landroid/os/UserHandle;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v7}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 2389
    monitor-exit v6

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2385
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private hasAuthenticatorUid(Ljava/lang/String;I)Z
    .locals 6
    .parameter "accountType"
    .parameter "callingUid"

    .prologue
    const/4 v4, 0x0

    .line 2277
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2279
    .local v0, callingUserId:I
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, v0}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2280
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2281
    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-eq v3, p2, :cond_1

    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v3, v5, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 2286
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :goto_0
    return v3

    .restart local v2       #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_2
    move v3, v4

    .line 2281
    goto :goto_0

    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_3
    move v3, v4

    .line 2286
    goto :goto_0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2291
    const/16 v5, 0x3e8

    if-ne p3, v5, :cond_0

    move v3, v4

    .line 2309
    :goto_0
    return v3

    .line 2294
    :cond_0
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2295
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2296
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2297
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object p2, v1, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 2299
    .local v1, args:[Ljava/lang/String;
    const-string v6, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v2, v6, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move v3, v4

    .line 2301
    .local v3, permissionGranted:Z
    :cond_1
    if-nez v3, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2304
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no credentials permission for usage of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but ignoring since device is in test harness."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 2309
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 2310
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #permissionGranted:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private inSystemImage(I)Z
    .locals 14
    .parameter "callingUid"

    .prologue
    const/4 v9, 0x0

    .line 2236
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2240
    .local v1, callingUserId:I
    :try_start_0
    iget-object v10, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2246
    .local v8, userPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 2247
    .local v7, packages:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 2249
    .local v5, name:Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2250
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 2252
    const/4 v9, 0x1

    .line 2258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packages:[Ljava/lang/String;
    .end local v8           #userPackageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return v9

    .line 2242
    :catch_0
    move-exception v2

    .line 2243
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 2254
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v7       #packages:[Ljava/lang/String;
    .restart local v8       #userPackageManager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 2255
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 2247
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private initUser(I)Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 3
    .parameter "userId"

    .prologue
    .line 266
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 268
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    .line 270
    .restart local v0       #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 272
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/accounts/AccountManagerService;->validateAccountsInternal(Landroid/accounts/AccountManagerService$UserAccounts;Z)V

    .line 274
    :cond_0
    monitor-exit v2

    return-object v0

    .line 275
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertAccountIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 6
    .parameter "accounts"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 2456
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2457
    .local v0, accountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    .line 2458
    .local v2, oldLength:I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Landroid/accounts/Account;

    .line 2459
    .local v1, newAccountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 2460
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2462
    :cond_0
    aput-object p2, v1, v2

    .line 2463
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    return-void

    .end local v1           #newAccountsForType:[Landroid/accounts/Account;
    .end local v2           #oldLength:I
    :cond_1
    move v2, v3

    .line 2457
    goto :goto_0
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "accountId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 597
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 600
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v1, "extras"

    const-string/jumbo v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private invalidateAuthTokenLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "accounts"
    .parameter "db"
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 798
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const-string v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 813
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 815
    .local v7, authTokenId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 816
    .local v6, accountName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, authTokenType:Ljava/lang/String;
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 818
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 822
    .end local v4           #authTokenType:Ljava/lang/String;
    .end local v6           #accountName:Ljava/lang/String;
    .end local v7           #authTokenId:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "account"
    .parameter "uid"
    .parameter "response"
    .parameter "authTokenType"
    .parameter "authTokenLabel"

    .prologue
    .line 1227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1231
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1232
    invoke-direct {p0, p1, p4, p2}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1236
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1238
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1240
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 1018
    if-nez p2, :cond_0

    .line 1019
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    :cond_0
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_2
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1031
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 419
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 420
    .local v2, userId:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 438
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v4

    .line 424
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 425
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 426
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    if-nez v0, :cond_1

    .line 428
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 426
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    .end local v1           #dbFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 433
    .restart local v0       #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :cond_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 434
    :try_start_2
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->close()V

    .line 435
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v1       #dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 437
    monitor-exit v4

    goto :goto_0

    .end local v1           #dbFile:Ljava/io/File;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 8
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2262
    invoke-direct {p0, p3}, Landroid/accounts/AccountManagerService;->inSystemImage(I)Z

    move-result v2

    .line 2263
    .local v2, inSystemImage:Z
    if-eqz p1, :cond_3

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, p3}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 2265
    .local v0, fromAuthenticator:Z
    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 2267
    .local v1, hasExplicitGrants:Z
    :goto_1
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2268
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": is authenticator? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", has explicit permission? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .end local v0           #fromAuthenticator:Z
    .end local v1           #hasExplicitGrants:Z
    :cond_3
    move v0, v4

    .line 2263
    goto :goto_0

    .restart local v0       #fromAuthenticator:Z
    :cond_4
    move v1, v4

    .line 2265
    goto :goto_1
.end method

.method private purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V
    .locals 14
    .parameter "accounts"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 287
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 288
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 289
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "grants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 293
    .local v8, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 295
    .local v10, uid:I
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v9, v11

    .line 296
    .local v9, packageExists:Z
    :goto_1
    if-nez v9, :cond_0

    .line 299
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because its package is no longer installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v1, "grants"

    const-string/jumbo v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v9           #packageExists:Z
    .end local v10           #uid:I
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 307
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #uid:I
    :cond_1
    move v9, v12

    .line 295
    goto :goto_1

    .line 305
    .end local v10           #uid:I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 307
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .prologue
    .line 279
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit v2

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 11
    .parameter "accounts"
    .parameter "account"

    .prologue
    const/4 v9, 0x0

    .line 465
    if-nez p2, :cond_0

    move-object v1, v9

    .line 478
    :goto_0
    return-object v1

    .line 469
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 470
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 471
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 475
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 480
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 476
    monitor-exit v10

    goto :goto_0

    .line 482
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 480
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 478
    monitor-exit v10

    move-object v1, v9

    goto :goto_0

    .line 480
    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private removeAccountFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 9
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 2432
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    .line 2433
    .local v6, oldAccountsForType:[Landroid/accounts/Account;
    if-eqz v6, :cond_2

    .line 2434
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2435
    .local v5, newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, v6

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2436
    .local v1, curAccount:Landroid/accounts/Account;
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2437
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2435
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2440
    .end local v1           #curAccount:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2441
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    .end local v0           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    return-void

    .line 2443
    .restart local v0       #arr$:[Landroid/accounts/Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/accounts/Account;

    .line 2444
    .local v4, newAccountsForType:[Landroid/accounts/Account;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newAccountsForType:[Landroid/accounts/Account;
    check-cast v4, [Landroid/accounts/Account;

    .line 2445
    .restart local v4       #newAccountsForType:[Landroid/accounts/Account;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 7
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 760
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 761
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 762
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 764
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->removeAccountFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 765
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 766
    monitor-exit v2

    .line 767
    return-void

    .line 766
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 10
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2401
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2402
    :cond_0
    const-string v4, "AccountManagerService"

    const-string/jumbo v5, "revokeAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2425
    :goto_0
    return-void

    .line 2405
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2406
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2407
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2408
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2411
    .local v0, accountId:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    .line 2412
    const-string v4, "grants"

    const-string v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2417
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2420
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2422
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v6, Landroid/os/UserHandle;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v6}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 2424
    monitor-exit v5

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2420
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "accounts"
    .parameter "account"
    .parameter "type"
    .parameter "authToken"

    .prologue
    .line 828
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 829
    :cond_0
    const/4 v0, 0x0

    .line 853
    :goto_0
    return v0

    .line 831
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/os/UserHandle;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 833
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 834
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 835
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    :try_start_1
    invoke-direct {p0, v2, p2}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 838
    .local v6, accountId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 839
    const/4 v0, 0x0

    .line 855
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 839
    monitor-exit v9

    goto :goto_0

    .line 857
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #accountId:J
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 841
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #accountId:J
    :cond_2
    :try_start_3
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 844
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 845
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "authtokens"

    const-string v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    .line 849
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 850
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    const/4 v0, 0x1

    .line 855
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 851
    monitor-exit v9

    goto/16 :goto_0

    .line 853
    :cond_3
    const/4 v0, 0x0

    .line 855
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 853
    monitor-exit v9

    goto/16 :goto_0

    .line 855
    .end local v6           #accountId:J
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "args"
    .parameter "value"

    .prologue
    .line 2096
    if-eqz p0, :cond_1

    .line 2097
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 2098
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2099
    const/4 v4, 0x1

    .line 2103
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 2097
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2103
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 941
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 944
    return-void
.end method

.method private setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 9
    .parameter "accounts"
    .parameter "account"
    .parameter "password"

    .prologue
    .line 916
    if-nez p2, :cond_0

    .line 938
    :goto_0
    return-void

    .line 919
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 920
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 921
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-direct {p0, v3, p2}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 926
    .local v0, accountId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_1

    .line 927
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 928
    .local v2, argsAccountId:[Ljava/lang/String;
    const-string v5, "accounts"

    const-string v7, "_id=?"

    invoke-virtual {v3, v5, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 929
    const-string v5, "authtokens"

    const-string v7, "accounts_id=?"

    invoke-virtual {v3, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 930
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 934
    .end local v2           #argsAccountId:[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 936
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 937
    monitor-exit v6

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 934
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private setUserdataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "accounts"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 984
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 988
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 989
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    :try_start_1
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    .line 992
    .local v3, accountId:J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 1012
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 993
    monitor-exit v14

    goto :goto_0

    .line 1014
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #accountId:J
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 995
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #accountId:J
    :cond_2
    :try_start_3
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v3, v4, v0}, Landroid/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v11

    .line 996
    .local v11, extrasId:J
    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_3

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 997
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v11

    .line 998
    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_4

    .line 1012
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 999
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1002
    :cond_3
    :try_start_5
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1003
    .local v13, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "value"

    move-object/from16 v0, p4

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v1, 0x1

    const-string v5, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-eq v1, v5, :cond_4

    .line 1012
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1005
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v13           #values:Landroid/content/ContentValues;
    :cond_4
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v7, v2

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1009
    :try_start_7
    invoke-virtual/range {v5 .. v10}, Landroid/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1012
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1014
    monitor-exit v14

    goto/16 :goto_0

    .line 1012
    .end local v3           #accountId:J
    .end local v11           #extrasId:J
    :catchall_1
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 2428
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateAccountsInternal(Landroid/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 27
    .parameter "accounts"
    .parameter "invalidateAuthenticatorCache"

    .prologue
    .line 328
    if-eqz p2, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 332
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v24

    .line 334
    .local v24, knownAuth:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 335
    .local v25, service:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    .end local v25           #service:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 339
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 340
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 341
    .local v11, accountDeleted:Z
    const-string v3, "accounts"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 345
    .local v20, cursor:Landroid/database/Cursor;
    :try_start_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 346
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 348
    .local v16, accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 350
    .local v12, accountId:J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 351
    .local v17, accountType:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, accountName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 354
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer has a registered authenticator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    const/4 v11, 0x1

    .line 358
    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v10, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v10, account:Landroid/accounts/Account;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    .end local v10           #account:Landroid/accounts/Account;
    .end local v12           #accountId:J
    .end local v14           #accountName:Ljava/lang/String;
    .end local v16           #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v17           #accountType:Ljava/lang/String;
    .end local v22           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 396
    if-eqz v11, :cond_2

    .line 397
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 395
    :cond_2
    throw v3

    .line 400
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #accountDeleted:Z
    .end local v20           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 362
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #accountDeleted:Z
    .restart local v12       #accountId:J
    .restart local v14       #accountName:Ljava/lang/String;
    .restart local v16       #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v17       #accountType:Ljava/lang/String;
    .restart local v20       #cursor:Landroid/database/Cursor;
    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 363
    .local v15, accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_4

    .line 364
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .restart local v15       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_4
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 383
    .end local v12           #accountId:J
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #accountType:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v22           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 384
    .local v19, cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 385
    .restart local v17       #accountType:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 386
    .restart local v15       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v18, v0

    .line 387
    .local v18, accountsForType:[Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 388
    .local v21, i:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 389
    .restart local v14       #accountName:Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v3, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v18, v21

    .line 390
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 392
    .end local v14           #accountName:Ljava/lang/String;
    :cond_6
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 395
    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #accountType:Ljava/lang/String;
    .end local v18           #accountsForType:[Landroid/accounts/Account;
    .end local v19           #cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v21           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 396
    if-eqz v11, :cond_8

    .line 397
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 400
    :cond_8
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 530
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 536
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 538
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 540
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 542
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->addAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 544
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 542
    return v3

    .line 544
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public addAcount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 16
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "expectActivityLaunch"
    .parameter "optionsIn"

    .prologue
    .line 1275
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requiredFeatures "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1285
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1288
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1289
    .local v3, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1290
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1291
    .local v15, uid:I
    if-nez p6, :cond_3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1292
    .local v10, options:Landroid/os/Bundle;
    :goto_0
    const-string v1, "callerUid"

    invoke-virtual {v10, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1293
    const-string v1, "callerPid"

    invoke-virtual {v10, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1295
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 1297
    .local v12, identityToken:J
    :try_start_0
    new-instance v1, Landroid/accounts/AccountManagerService$5;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Landroid/accounts/AccountManagerService$5;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$5;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1316
    return-void

    .end local v10           #options:Landroid/os/Bundle;
    .end local v12           #identityToken:J
    :cond_3
    move-object/from16 v10, p6

    .line 1291
    goto :goto_0

    .line 1314
    .restart local v10       #options:Landroid/os/Bundle;
    .restart local v12       #identityToken:J
    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 4
    .parameter "id"
    .parameter "user"

    .prologue
    .line 2208
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2210
    .local v0, identityToken:J
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2213
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2215
    return-void

    .line 2213
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 947
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 953
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 954
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 955
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 957
    .local v1, identityToken:J
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v3}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 961
    return-void

    .line 959
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 12
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .parameter "expectActivityLaunch"
    .parameter "userId"

    .prologue
    .line 1323
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v0, p5

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1325
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " trying to confirm account credentials for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1329
    :cond_0
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1330
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_2
    if-nez p2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1338
    :cond_3
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1339
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1340
    .local v3, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 1342
    .local v10, identityToken:J
    :try_start_0
    new-instance v1, Landroid/accounts/AccountManagerService$6;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManagerService$6;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1355
    return-void

    .line 1353
    :catchall_0
    move-exception v1

    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    :cond_0
    return-void

    .line 2115
    :cond_1
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-c"

    invoke-static {p3, v0}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v5, 0x1

    .line 2116
    .local v5, isCheckinRequest:Z
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2118
    .local v3, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2119
    .local v8, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2120
    .local v7, user:Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2122
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->dumpUser(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 2123
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2124
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_1

    .line 2115
    .end local v3           #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    .end local v5           #isCheckinRequest:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #user:Landroid/content/pm/UserInfo;
    .end local v8           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 10
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1395
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editProperties: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1404
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1405
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1406
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1408
    .local v8, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$8;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$8;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$8;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1421
    return-void

    .line 1419
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAccounts(I)[Landroid/accounts/Account;
    .locals 5
    .parameter "userId"

    .prologue
    .line 1521
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1522
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1523
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1525
    .local v1, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1526
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v3}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1526
    return-object v3

    .line 1527
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1529
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter "type"

    .prologue
    .line 1606
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
    .locals 6
    .parameter "type"
    .parameter "userId"

    .prologue
    .line 1581
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq p2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1583
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to get account for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1587
    :cond_0
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1588
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccounts: accountType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1593
    invoke-virtual {p0, p2}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1594
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1596
    .local v1, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1597
    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1600
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1597
    return-object v3

    .line 1598
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1600
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    .line 1611
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccounts: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1621
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1622
    .local v2, userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v7

    .line 1624
    .local v7, identityToken:J
    if-eqz p3, :cond_3

    :try_start_0
    array-length v0, p3

    if-nez v0, :cond_4

    .line 1626
    :cond_3
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1627
    :try_start_1
    invoke-virtual {p0, v2, p2}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 1628
    .local v6, accounts:[Landroid/accounts/Account;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    :try_start_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1630
    .local v9, result:Landroid/os/Bundle;
    const-string v0, "accounts"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1631
    invoke-direct {p0, p1, v9}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1636
    .end local v6           #accounts:[Landroid/accounts/Account;
    .end local v9           #result:Landroid/os/Bundle;
    :goto_0
    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1638
    return-void

    .line 1628
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1636
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 1634
    :cond_4
    :try_start_5
    new-instance v0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method protected getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .parameter "userAccounts"
    .parameter "accountType"

    .prologue
    .line 2467
    if-eqz p2, :cond_1

    .line 2468
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2469
    .local v0, accounts:[Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 2470
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 2489
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-object v4

    .line 2472
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    goto :goto_0

    .line 2475
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_1
    const/4 v3, 0x0

    .line 2476
    .local v3, totalLength:I
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2477
    .restart local v0       #accounts:[Landroid/accounts/Account;
    array-length v4, v0

    add-int/2addr v3, v4

    goto :goto_1

    .line 2479
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_2
    if-nez v3, :cond_3

    .line 2480
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    goto :goto_0

    .line 2482
    :cond_3
    new-array v0, v3, [Landroid/accounts/Account;

    .line 2483
    .restart local v0       #accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 2484
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 2485
    .local v1, accountsOfType:[Landroid/accounts/Account;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2487
    array-length v4, v1

    add-int/2addr v3, v4

    goto :goto_2

    .end local v1           #accountsOfType:[Landroid/accounts/Account;
    :cond_4
    move-object v4, v0

    .line 2489
    goto :goto_0
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 4

    .prologue
    .line 1551
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1552
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 1553
    .local v1, userIds:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1554
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v0

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 23
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyOnAuthFailure"
    .parameter "expectActivityLaunch"
    .parameter "loginOptionsIn"

    .prologue
    .line 1082
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1083
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", response "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", authTokenType "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", notifyOnAuthFailure "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", caller\'s uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "response is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1092
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1093
    :cond_2
    if-nez p3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1094
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "android.permission.USE_CREDENTIALS"

    aput-object v6, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1095
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 1097
    .local v5, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-interface {v3, v4, v6}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v19

    .line 1099
    .local v19, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v3, v3, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v3, :cond_6

    const/16 v16, 0x1

    .line 1103
    .local v16, customTokens:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1104
    .local v15, callerUid:I
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Landroid/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    const/4 v14, 0x1

    .line 1107
    .local v14, permissionGranted:Z
    :goto_1
    if-nez p6, :cond_8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1110
    .local v10, loginOptions:Landroid/os/Bundle;
    :goto_2
    const-string v3, "callerUid"

    invoke-virtual {v10, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1111
    const-string v3, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    if-eqz p4, :cond_5

    .line 1113
    const-string/jumbo v3, "notifyOnAuthFailure"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1116
    :cond_5
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 1120
    .local v20, identityToken:J
    if-nez v16, :cond_9

    if-eqz v14, :cond_9

    .line 1121
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1122
    .local v18, authToken:Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 1123
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1124
    .local v22, result:Landroid/os/Bundle;
    const-string v3, "authtoken"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v3, "authAccount"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v3, "accountType"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    .end local v18           #authToken:Ljava/lang/String;
    .end local v22           #result:Landroid/os/Bundle;
    :goto_3
    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1193
    return-void

    .line 1099
    .end local v10           #loginOptions:Landroid/os/Bundle;
    .end local v14           #permissionGranted:Z
    .end local v15           #callerUid:I
    .end local v16           #customTokens:Z
    .end local v20           #identityToken:J
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 1104
    .restart local v15       #callerUid:I
    .restart local v16       #customTokens:Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .restart local v14       #permissionGranted:Z
    :cond_8
    move-object/from16 v10, p6

    .line 1107
    goto :goto_2

    .line 1132
    .restart local v10       #loginOptions:Landroid/os/Bundle;
    .restart local v20       #identityToken:J
    :cond_9
    :try_start_1
    new-instance v3, Landroid/accounts/AccountManagerService$4;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v17, v5

    invoke-direct/range {v3 .. v17}, Landroid/accounts/AccountManagerService$4;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLandroid/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$4;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1191
    :catchall_0
    move-exception v3

    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1039
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_1
    invoke-static {}, Landroid/accounts/AccountManagerService;->getCallingUid()I

    move-result v9

    .line 1043
    .local v9, callingUid:I
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 1044
    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_2

    .line 1045
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_2
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1048
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 1050
    .local v10, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManagerService$3;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$3;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1077
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 11

    .prologue
    .line 505
    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 506
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAuthenticatorTypes: caller\'s uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 511
    .local v7, userId:I
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 514
    .local v4, identityToken:J
    :try_start_0
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v8, v7}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    .line 515
    .local v1, authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v6, v8, [Landroid/accounts/AuthenticatorDescription;

    .line 517
    .local v6, types:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 519
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 520
    .local v0, authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v8, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/accounts/AuthenticatorDescription;

    aput-object v8, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    .end local v0           #authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v1           #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #types:[Landroid/accounts/AuthenticatorDescription;
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v8

    .restart local v1       #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_1
    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 523
    return-object v6
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .parameter "account"

    .prologue
    .line 447
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 455
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 456
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 458
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/accounts/AccountManagerService;->readPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 460
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 458
    return-object v3

    .line 460
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    .prologue
    .line 1541
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1546
    .local v1, runningUserIds:[I
    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2

    .line 1542
    .end local v1           #runningUserIds:[I
    :catch_0
    move-exception v0

    .line 1544
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 3
    .parameter "userId"

    .prologue
    .line 408
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 410
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->initUser(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 412
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 414
    :cond_0
    monitor-exit v2

    return-object v0

    .line 415
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "account"
    .parameter "key"

    .prologue
    .line 486
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 495
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 496
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 498
    .local v1, identityToken:J
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->readUserDataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 500
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 498
    return-object v3

    .line 500
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 8
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 606
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_3
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 617
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 618
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 620
    .local v6, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$TestFeaturesSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-static {v6, v7}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .parameter "notificationId"
    .parameter "n"
    .parameter "user"

    .prologue
    .line 2203
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2205
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 770
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidateAuthToken: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 776
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "authToken is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 777
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsOrUseCredentialsPermissions()V

    .line 778
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 779
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 781
    .local v2, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 782
    :try_start_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 783
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 785
    :try_start_2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/accounts/AccountManagerService;->invalidateAuthTokenLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 790
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 792
    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 794
    return-void

    .line 788
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 790
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 792
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 2086
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 3
    .parameter "desc"
    .parameter "userId"
    .parameter "removed"

    .prologue
    .line 442
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceChanged() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0, p2}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/accounts/AccountManagerService;->validateAccountsInternal(Landroid/accounts/AccountManagerService$UserAccounts;Z)V

    .line 444
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 861
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peekAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 869
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 870
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 871
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 873
    .local v1, identityToken:J
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 875
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 873
    return-object v3

    .line 875
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "accounts"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 2523
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2524
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2525
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2527
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2528
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2529
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 2532
    .end local v0           #authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2570
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2571
    .local v9, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "authtokens"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2577
    .local v10, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2579
    .local v11, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2580
    .local v8, authToken:Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2583
    .end local v8           #authToken:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2585
    return-object v9
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2550
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2551
    .local v10, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "extras"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2557
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2558
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2559
    .local v9, tmpkey:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2560
    .local v11, value:Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2563
    .end local v9           #tmpkey:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2565
    return-object v10
.end method

.method protected readUserDataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "accounts"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 2536
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2537
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2538
    .local v1, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 2540
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2541
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 2542
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 2545
    .end local v1           #userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .locals 10
    .parameter "response"
    .parameter "account"

    .prologue
    .line 679
    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 680
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAccount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    if-nez p1, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "response is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 686
    :cond_1
    if-nez p2, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "account is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 687
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 688
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 689
    .local v6, user:Landroid/os/UserHandle;
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 690
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 692
    .local v3, identityToken:J
    invoke-direct {p0, v0, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7, v6}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 693
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 695
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 696
    .local v5, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v7}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 698
    .local v2, id:I
    invoke-virtual {p0, v2, v6}, Landroid/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 701
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:I
    .end local v5           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    :try_start_2
    new-instance v7, Landroid/accounts/AccountManagerService$RemoveAccountSession;

    invoke-direct {v7, p0, v0, p1, p2}, Landroid/accounts/AccountManagerService$RemoveAccountSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    invoke-virtual {v7}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 708
    return-void

    .line 706
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v7
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/accounts/AccountManagerService;->removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 757
    return-void
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "authTokenType"
    .parameter "authToken"

    .prologue
    .line 880
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 881
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 887
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 889
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 890
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 892
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 896
    return-void

    .line 894
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "password"

    .prologue
    .line 899
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 905
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 906
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 907
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 909
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 913
    return-void

    .line 911
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 964
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 965
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 971
    :cond_1
    if-nez p1, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 972
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 973
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 974
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 976
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->setUserdataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 980
    return-void

    .line 978
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2345
    invoke-static {}, Landroid/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 2347
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2348
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 2351
    :cond_0
    if-eqz p4, :cond_1

    .line 2352
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2356
    :goto_0
    return-void

    .line 2354
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 13
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "expectActivityLaunch"
    .parameter "loginOptions"

    .prologue
    .line 1360
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1370
    :cond_2
    if-nez p3, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authTokenType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    :cond_3
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1372
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1373
    .local v3, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v11

    .line 1375
    .local v11, identityToken:J
    :try_start_0
    new-instance v1, Landroid/accounts/AccountManagerService$7;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p4

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Landroid/accounts/AccountManagerService$7;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    invoke-static {v11, v12}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1391
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    invoke-static {v11, v12}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public validateAccounts(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 319
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/accounts/AccountManagerService;->validateAccountsInternal(Landroid/accounts/AccountManagerService$UserAccounts;Z)V

    .line 320
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2509
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2510
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2511
    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2512
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    :cond_0
    if-nez p5, :cond_1

    .line 2515
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    :goto_0
    return-void

    .line 2517
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected writeUserDataIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2495
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2496
    .local v0, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2497
    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2498
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    :cond_0
    if-nez p5, :cond_1

    .line 2501
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    :goto_0
    return-void

    .line 2503
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
