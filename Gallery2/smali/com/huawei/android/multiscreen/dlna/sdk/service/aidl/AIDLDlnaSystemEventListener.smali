.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;
.super Ljava/lang/Object;
.source "AIDLDlnaSystemEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener$Stub;
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

.method public abstract onEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
