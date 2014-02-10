.class public Lcom/huawei/android/pushagent/datatype/PushException;
.super Ljava/lang/Exception;
.source "PushException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x695ef8b72919b124L


# instance fields
.field public type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/huawei/android/pushagent/datatype/PushException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 30
    iget-object v0, p1, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "detailMessage"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "throwable"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_unKnown:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V
    .locals 0
    .parameter "throwable"
    .parameter "type"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/PushException;->type:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    .line 41
    return-void
.end method
