.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;
.super Ljava/lang/Object;
.source "AIDLIShareFileFilter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter$Stub;
    }
.end annotation


# virtual methods
.method public abstract isValidSharePath(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
