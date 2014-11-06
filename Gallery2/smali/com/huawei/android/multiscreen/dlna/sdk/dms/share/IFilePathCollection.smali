.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/IFilePathCollection;
.super Ljava/lang/Object;
.source "IFilePathCollection.java"


# static fields
.field public static final EXISTS:I = 0x1

.field public static final NOT_EXISTS:I = -0x1


# virtual methods
.method public abstract addPath(Ljava/lang/String;)Z
.end method

.method public abstract cancelTransaction()V
.end method

.method public abstract endTransaction()Z
.end method

.method public abstract getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
.end method

.method public abstract getTransactionFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
.end method

.method public abstract removePath(Ljava/lang/String;)Z
.end method

.method public abstract startTransaction()V
.end method
