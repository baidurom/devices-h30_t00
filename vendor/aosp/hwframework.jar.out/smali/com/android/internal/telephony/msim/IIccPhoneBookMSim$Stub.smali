.class public abstract Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBookMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.IIccPhoneBookMSim"

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x4

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 66
    :sswitch_0
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :sswitch_1
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 90
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v8, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    .line 95
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:I
    .end local v8           #_result:Z
    :sswitch_2
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v8

    .line 110
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_1

    move v10, v9

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 115
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:I
    .end local v8           #_result:Z
    :sswitch_3
    const-string v0, "com.android.internal.telephony.msim.IIccPhoneBookMSim"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->getAdnRecordsSize(II)[I

    move-result-object v8

    .line 121
    .local v8, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
