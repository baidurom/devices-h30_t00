.class public final Lcom/huawei/android/provider/SettingsEx;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/provider/SettingsEx$Secure;,
        Lcom/huawei/android/provider/SettingsEx$Systemex;,
        Lcom/huawei/android/provider/SettingsEx$System;,
        Lcom/huawei/android/provider/SettingsEx$NameValueCache;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 653
    return-void
.end method