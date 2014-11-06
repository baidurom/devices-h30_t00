.class Lcom/android/server/LocationManagerService$4;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x3

    .line 361
    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, numeric:Ljava/lang/String;
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceStateChanged numeric = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    const/16 v2, 0xa

    .line 368
    .local v2, version:I
    iget-object v3, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNLPcivil:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, pkgName:Ljava/lang/String;
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceStateChanged use pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->bindSpecificService(Ljava/lang/String;I)V
    invoke-static {v3, v1, v2}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;Ljava/lang/String;I)V

    .line 378
    .end local v0           #numeric:Ljava/lang/String;
    .end local v1           #pkgName:Ljava/lang/String;
    .end local v2           #version:I
    :cond_0
    :goto_0
    return-void

    .line 371
    .restart local v0       #numeric:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 372
    const/4 v2, 0x1

    .line 373
    .restart local v2       #version:I
    iget-object v3, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNLPforeign:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1       #pkgName:Ljava/lang/String;
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceStateChanged use pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/android/server/LocationManagerService$4;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->bindSpecificService(Ljava/lang/String;I)V
    invoke-static {v3, v1, v2}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;Ljava/lang/String;I)V

    goto :goto_0
.end method
