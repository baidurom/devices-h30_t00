.class public Lcom/android/internal/telephony/StubPhoneSubInfo;
.super Lcom/android/internal/telephony/PhoneSubInfoProxy;
.source "StubPhoneSubInfo.java"


# static fields
.field private static final PERMISSION_DENIED_IMEI:Ljava/lang/String; = "000000000000000"

.field private static final PERMISSION_DENIED_IMSI:Ljava/lang/String; = "000000000000000"

.field private static final PERMISSION_DENIED_PHONE:Ljava/lang/String; = "000000"

.field private static final TAG:Ljava/lang/String; = "StubPhoneSubInfo"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 1
    .parameter "context"
    .parameter "phoneSubInfo"

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;I)V
    .locals 1
    .parameter "context"
    .parameter "phoneSubInfo"
    .parameter "simId"

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private isReadPhoneNumberBlocked()Z
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 67
    .local v1, uid:I
    iget-object v3, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v3, 0x0

    invoke-static {v4, v1, v3}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 77
    .local v0, selectionResult:I
    if-eqz v0, :cond_0

    .line 81
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/StubPhoneSubInfo;->isReadPhoneNumberBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "000000000000000"

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/StubPhoneSubInfo;->isReadPhoneNumberBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "000000"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/StubPhoneSubInfo;->isReadPhoneNumberBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "000000000000000"

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
