.class Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsPhoneStateListener"
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x0

.field public static final NETWORK_TYPE_3G:I = 0x1

.field public static final NETWORK_TYPE_CDMA:I = 0x2

.field public static final NETWORK_TYPE_NONE:I = -0x1

.field public static final NETWORK_TYPE_SIP:I = 0x3


# instance fields
.field private mIsDataConnected:Z

.field private mIsGemini:Z

.field private mIsNetworkRoaming:Z

.field private mIsSimReady:Z

.field private mNetworkType:I

.field private mSimId:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 780
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V

    .line 781
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V
    .locals 2
    .parameter
    .parameter "isGemini"
    .parameter "whichSim"

    .prologue
    const/4 v1, 0x0

    .line 782
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 766
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 774
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 775
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 776
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 777
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 783
    iput-boolean p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 784
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 785
    :cond_0
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_1
    iput p3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    goto :goto_0
.end method

.method private changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V
    .locals 5
    .parameter "mccMnc"

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2500(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 1013
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1014
    iget-object v2, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSlpProfileBasedOnMccMnc mccMnc is matched="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-virtual {v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto :goto_0

    .line 1020
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_1
    return-void
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 883
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 884
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 886
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 887
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 888
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 889
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, ip:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 900
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 900
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 897
    :catch_1
    move-exception v0

    .line 898
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getNetworkTypeGemini()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 815
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 817
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 820
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v1

    .line 821
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 825
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 826
    const/4 v2, 0x1

    .line 843
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 828
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 835
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 836
    const/4 v2, 0x2

    goto :goto_0

    .line 837
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 838
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is SIP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 839
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 841
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getNetworkTypeSingle()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 848
    const/4 v2, 0x0

    .line 849
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 850
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 852
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 855
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 856
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 861
    const/4 v2, 0x1

    .line 878
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 863
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 870
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is CDMA"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 871
    const/4 v2, 0x2

    goto :goto_0

    .line 872
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 873
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is SIP"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 874
    const/4 v2, 0x3

    goto :goto_0

    .line 876
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimNum()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private updateCallState2Agpsd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0xb

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 943
    return-void
.end method

.method private updateConnectionState2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 920
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xe

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 921
    return-void

    .line 920
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIPAdress()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 924
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v7

    .line 925
    .local v7, ip:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 926
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 930
    :cond_0
    return-void
.end method

.method private updateNetworkType2Agpsd()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 909
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeSingle()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 911
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 916
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeGemini()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 914
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    goto :goto_0
.end method

.method private updateRoamingStatus2Agpsd()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 933
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 934
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 938
    :goto_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xd

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    if-eqz v4, :cond_1

    :goto_1
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 939
    return-void

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    goto :goto_0

    .line 938
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSimStatus2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 905
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xa

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 906
    return-void

    .line 905
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    return v0
.end method

.method public isDataConnected()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public isSimReady()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (0:idle 1:ringing 2:offhook) incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCallState2Agpsd(I)V

    .line 1065
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCellLocationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1027
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1031
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1036
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    .line 1039
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1040
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateIPAdress()V

    .line 1041
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    if-nez p1, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1044
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    .line 1050
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is in service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    .line 1053
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateRoamingStatus2Agpsd()V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    goto :goto_0
.end method

.method public updateCellInfo2Agpsd()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, -0x1

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 955
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 959
    .local v9, phoneType:I
    :goto_0
    if-eq v9, v10, :cond_1

    .line 960
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: phone type is not GSM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 1006
    .end local v9           #phoneType:I
    :goto_1
    return v0

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v9

    .restart local v9       #phoneType:I
    goto :goto_0

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 965
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2302(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 970
    :goto_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "WARNING: mCellloc is null from getCellLocation"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 972
    goto :goto_1

    .line 967
    :cond_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2302(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 974
    .end local v9           #phoneType:I
    :catch_0
    move-exception v8

    .line 975
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 976
    goto :goto_1

    .line 981
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #phoneType:I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 982
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 983
    .local v6, imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 988
    .local v7, mccMnc:Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 989
    .local v2, lac:I
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 995
    .local v3, cid:I
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 996
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " IMSI="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MccMnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Lac="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-direct {p0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->changeSlpProfileBasedOnMccMnc(Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 985
    .end local v2           #lac:I
    .end local v3           #cid:I
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 986
    .restart local v6       #imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .restart local v7       #mccMnc:Ljava/lang/String;
    goto/16 :goto_3

    .line 990
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 991
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    .line 992
    goto/16 :goto_1

    .line 1005
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #lac:I
    .restart local v3       #cid:I
    .restart local v6       #imsi:Ljava/lang/String;
    .restart local v7       #mccMnc:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IMSI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mccMnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$900(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 1006
    goto/16 :goto_1
.end method
