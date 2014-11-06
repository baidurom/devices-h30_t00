.class public Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;
.super Ljava/lang/Object;
.source "GlobalVariables.java"


# static fields
.field private static LAST_DMR_UDN:Ljava/lang/String;

.field private static isAutoSearchWhenDmsDeviceUp:Z

.field private static isSaveXML:Z

.field private static mCurrentDeviceDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-boolean v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->mCurrentDeviceDown:Z

    .line 34
    const-string v0, "last dmr und"

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->LAST_DMR_UDN:Ljava/lang/String;

    .line 39
    sput-boolean v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isSaveXML:Z

    .line 41
    sput-boolean v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastPushDMR()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_1

    .line 75
    .local v1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    .local v3, udn:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 67
    .end local v1           #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v3           #udn:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .restart local v2       #sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->LAST_DMR_UDN:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .restart local v3       #udn:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .restart local v1       #devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 72
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getUDN()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getDeviceId()I

    move-result v4

    goto :goto_0
.end method

.method public static isAutoSearchWhenDmsDeviceUp()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp:Z

    return v0
.end method

.method public static ismCurrentDeviceDown()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->mCurrentDeviceDown:Z

    return v0
.end method

.method public static setAutoSearchWhenDmsDeviceUp(Z)V
    .locals 0
    .parameter "isAutoSearchWhenDmsDeviceUp"

    .prologue
    .line 92
    sput-boolean p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->isAutoSearchWhenDmsDeviceUp:Z

    .line 93
    return-void
.end method

.method public static setLastPushDMR(I)V
    .locals 5
    .parameter "mOtherDeviceID"

    .prologue
    .line 47
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    .line 48
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getUDN()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, udn:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 53
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->LAST_DMR_UDN:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v3           #udn:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setmCurrentDeviceDown(Z)V
    .locals 0
    .parameter "mCurrentDeviceDown"

    .prologue
    .line 79
    sput-boolean p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/GlobalVariables;->mCurrentDeviceDown:Z

    .line 80
    return-void
.end method
