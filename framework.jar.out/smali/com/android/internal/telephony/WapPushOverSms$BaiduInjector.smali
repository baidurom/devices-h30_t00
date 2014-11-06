.class Lcom/android/internal/telephony/WapPushOverSms$BaiduInjector;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimId(Lcom/android/internal/telephony/SMSDispatcher;)I
    .locals 4
    .parameter "dispatcher"

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 334
    .local v2, simId:I
    :try_start_0
    const-string v3, "com.android.internal.telephony.SMSDispatcher"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 335
    .local v0, clazz:Ljava/lang/Class;
    const-string/jumbo v3, "mSimId"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 336
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 337
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 342
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #f:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 340
    :catch_0
    move-exception v3

    goto :goto_0

    .line 339
    :catch_1
    move-exception v3

    goto :goto_0

    .line 338
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public static prehandleMsg(Lcom/android/internal/telephony/WapPushOverSms;Ljava/lang/String;[B)Z
    .locals 6
    .parameter "obj"
    .parameter "mimeType"
    .parameter "intentData"

    .prologue
    const/4 v2, 0x1

    .line 350
    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    .line 352
    .local v0, appType:I
    :goto_0
    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$300(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/WapPushOverSms$BaiduInjector;->getSimId(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v3, v4, v0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPrevent(Landroid/content/Context;Ljava/lang/String;I)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v1

    .line 353
    .local v1, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    iget v3, v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    if-ne v3, v2, :cond_1

    .line 354
    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$300(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/WapPushOverSms$BaiduInjector;->getSimId(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v5

    invoke-static {v3, p1, p2, v4, v5}, Lcom/android/internal/telephony/SMSPlugin;->dispatchDisturbWapPdu(Landroid/content/Context;Ljava/lang/String;[BII)V

    .line 357
    :goto_1
    return v2

    .end local v0           #appType:I
    .end local v1           #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    .line 357
    .restart local v0       #appType:I
    .restart local v1       #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static putExtra(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Intent;)V
    .locals 3
    .parameter "obj"
    .parameter "intent"

    .prologue
    .line 361
    const-string v0, "address"

    sget-object v1, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/WapPushOverSms$BaiduInjector;->getSimId(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method public static setMsgAddress(Lcom/android/internal/telephony/WapPushOverSms;[B)V
    .locals 3
    .parameter "obj"
    .parameter "intentData"

    .prologue
    .line 346
    sget-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {p0}, Lcom/android/internal/telephony/WapPushOverSms;->access$200(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms$BaiduInjector;->getSimId(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v1

    invoke-static {p1}, Lcom/android/internal/telephony/SMSPlugin;->getMmsNotiWapPushAddress([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 347
    return-void
.end method
