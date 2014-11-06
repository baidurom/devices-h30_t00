.class public Lcom/huawei/internal/telephony/CommandExceptionEx;
.super Ljava/lang/Object;
.source "CommandExceptionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/internal/telephony/CommandExceptionEx$Error;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;
    .locals 2
    .parameter "ce"

    .prologue
    .line 63
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
