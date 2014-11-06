.class public abstract Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;
.super Landroid/os/Binder;
.source "ITelephonyMSim.java"

# interfaces
.implements Lcom/android/internal/telephony/msim/ITelephonyMSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/ITelephonyMSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.msim.ITelephonyMSim"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x15

.field static final TRANSACTION_disableDataConnectivity:I = 0x17

.field static final TRANSACTION_enableApnType:I = 0x14

.field static final TRANSACTION_enableDataConnectivity:I = 0x16

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x1c

.field static final TRANSACTION_getAllCellInfo:I = 0x25

.field static final TRANSACTION_getCallState:I = 0x19

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x1d

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x1e

.field static final TRANSACTION_getCdmaEriText:I = 0x1f

.field static final TRANSACTION_getDataActivity:I = 0x1a

.field static final TRANSACTION_getDataState:I = 0x1b

.field static final TRANSACTION_getDefaultSubscription:I = 0x26

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x24

.field static final TRANSACTION_getNetworkType:I = 0x22

.field static final TRANSACTION_getPreferredDataSubscription:I = 0x28

.field static final TRANSACTION_getPreferredVoiceSubscription:I = 0x27

.field static final TRANSACTION_getVoiceMessageCount:I = 0x21

.field static final TRANSACTION_handlePinMmi:I = 0x10

.field static final TRANSACTION_hasIccCard:I = 0x23

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x18

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x20

.field static final TRANSACTION_setPreferredDataSubscription:I = 0x29

.field static final TRANSACTION_setRadio:I = 0x12

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_toggleRadioOnOff:I = 0x11

.field static final TRANSACTION_updateServiceLocation:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 2
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const-string v1, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/msim/ITelephonyMSim;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/internal/telephony/msim/ITelephonyMSim;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 56
    :sswitch_0
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->dial(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->call(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_3
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->showCallScreen()Z

    move-result v2

    .line 82
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v2           #_result:Z
    :sswitch_4
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 90
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v2

    .line 91
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_2
    move v0, v4

    .line 89
    goto :goto_1

    .line 96
    :sswitch_5
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->endCall(I)Z

    move-result v2

    .line 100
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->answerRingingCall(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->silenceRinger()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    :sswitch_8
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isOffhook(I)Z

    move-result v2

    .line 123
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_9
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isRinging(I)Z

    move-result v2

    .line 132
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_a
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isIdle(I)Z

    move-result v2

    .line 141
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_b
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isRadioOn(I)Z

    move-result v2

    .line 150
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_c
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isSimPinEnabled(I)Z

    move-result v2

    .line 159
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v2, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_d
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->cancelMissedCallsNotification(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:I
    :sswitch_e
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPin(Ljava/lang/String;I)Z

    move-result v2

    .line 178
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_f
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 189
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v2, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_10
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->handlePinMmi(Ljava/lang/String;I)Z

    move-result v2

    .line 200
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v2, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_11
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->toggleRadioOnOff(I)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v0, v5

    .line 217
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->setRadio(ZI)Z

    move-result v2

    .line 219
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_d
    move v0, v4

    .line 215
    goto :goto_2

    .line 224
    :sswitch_13
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->updateServiceLocation(I)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 232
    .end local v0           #_arg0:I
    :sswitch_14
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_15
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v2

    .line 245
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_16
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->enableDataConnectivity()Z

    move-result v2

    .line 252
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v2, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v2           #_result:Z
    :sswitch_17
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->disableDataConnectivity()Z

    move-result v2

    .line 259
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v2, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v2           #_result:Z
    :sswitch_18
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->isDataConnectivityPossible()Z

    move-result v2

    .line 266
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v2, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v2           #_result:Z
    :sswitch_19
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCallState(I)I

    move-result v2

    .line 275
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1a
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDataActivity()I

    move-result v2

    .line 282
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v2           #_result:I
    :sswitch_1b
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDataState()I

    move-result v2

    .line 289
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v2           #_result:I
    :sswitch_1c
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getActivePhoneType(I)I

    move-result v2

    .line 298
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1d
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriIconIndex(I)I

    move-result v2

    .line 307
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1e
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriIconMode(I)I

    move-result v2

    .line 316
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_1f
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->needsOtaServiceProvisioning()Z

    move-result v2

    .line 332
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v2, :cond_11

    move v4, v5

    :cond_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v2           #_result:Z
    :sswitch_21
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getVoiceMessageCount(I)I

    move-result v2

    .line 341
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_22
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getNetworkType(I)I

    move-result v2

    .line 350
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_23
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->hasIccCard(I)Z

    move-result v2

    .line 359
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v2, :cond_12

    move v4, v5

    :cond_12
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 364
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_24
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getLteOnCdmaMode(I)I

    move-result v2

    .line 368
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_25
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    .line 376
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 381
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_26
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getDefaultSubscription()I

    move-result v2

    .line 383
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 388
    .end local v2           #_result:I
    :sswitch_27
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getPreferredVoiceSubscription()I

    move-result v2

    .line 390
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 395
    .end local v2           #_result:I
    :sswitch_28
    const-string v4, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->getPreferredDataSubscription()I

    move-result v2

    .line 397
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v2           #_result:I
    :sswitch_29
    const-string v6, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 405
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->setPreferredDataSubscription(I)Z

    move-result v2

    .line 406
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v2, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
