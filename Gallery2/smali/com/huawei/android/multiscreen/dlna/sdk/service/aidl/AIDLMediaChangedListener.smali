.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
.super Ljava/lang/Object;
.source "AIDLMediaChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract getId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMediaChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
