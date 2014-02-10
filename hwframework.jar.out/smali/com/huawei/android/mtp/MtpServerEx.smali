.class public Lcom/huawei/android/mtp/MtpServerEx;
.super Landroid/mtp/MtpServer;
.source "MtpServerEx.java"


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 0
    .parameter "database"
    .parameter "usePtp"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public sendAllStorageInfoChangedIfNeed()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
