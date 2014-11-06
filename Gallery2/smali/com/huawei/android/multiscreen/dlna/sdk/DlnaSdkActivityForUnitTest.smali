.class public Lcom/huawei/android/multiscreen/dlna/sdk/DlnaSdkActivityForUnitTest;
.super Landroid/app/Activity;
.source "DlnaSdkActivityForUnitTest.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/DlnaSdkActivityForUnitTest;->setContext(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/DlnaSdkActivityForUnitTest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    sput-object p0, Lcom/huawei/android/multiscreen/dlna/sdk/DlnaSdkActivityForUnitTest;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method
