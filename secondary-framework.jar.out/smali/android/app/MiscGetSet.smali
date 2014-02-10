.class public Landroid/app/MiscGetSet;
.super Ljava/lang/Object;
.source "MiscGetSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscGetSet"


# instance fields
.field mAgent:Landroid/app/MiscAgent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v1, "MiscAgent"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 22
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 23
    invoke-static {v0}, Landroid/app/MiscAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/MiscAgent;

    move-result-object v1

    iput-object v1, p0, Landroid/app/MiscGetSet;->mAgent:Landroid/app/MiscAgent;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public setFactoryresetFlag()I
    .locals 4

    .prologue
    .line 33
    const/4 v0, -0x1

    .line 34
    .local v0, _result:I
    const-string v2, "MiscGetSet"

    const-string v3, "setFactoryresetFlag"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    iget-object v2, p0, Landroid/app/MiscGetSet;->mAgent:Landroid/app/MiscAgent;

    invoke-interface {v2}, Landroid/app/MiscAgent;->setFactoryresetFlag()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
