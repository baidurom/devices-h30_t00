.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_bootFromPoweroffAlarm:I = 0x8

.field static final TRANSACTION_cancelPoweroffAlarm:I = 0x7

.field static final TRANSACTION_getAlarmHeartBeat:I = 0xe

.field static final TRANSACTION_getAlarmPolicyState:I = 0xc

.field static final TRANSACTION_getPhbState:I = 0x11

.field static final TRANSACTION_lookForPackageFromAms:I = 0xa

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_removeAllPendingAlarms:I = 0x13

.field static final TRANSACTION_removeFromAms:I = 0x9

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setAlarmDynList:I = 0xf

.field static final TRANSACTION_setAlarmHeartBeat:I = 0xd

.field static final TRANSACTION_setAlarmPolicyState:I = 0xb

.field static final TRANSACTION_setAlarmsPending:I = 0x12

.field static final TRANSACTION_setInexactRepeating:I = 0x3

.field static final TRANSACTION_setPhbEnable:I = 0x10

.field static final TRANSACTION_setRepeating:I = 0x2

.field static final TRANSACTION_setTime:I = 0x4

.field static final TRANSACTION_setTimeZone:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/app/IAlarmManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 64
    .local v4, _arg2:Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IAlarmManager$Stub;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    .end local v4           #_arg2:Landroid/app/PendingIntent;
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/app/PendingIntent;
    goto :goto_1

    .line 70
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:Landroid/app/PendingIntent;
    :sswitch_2
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    .restart local v2       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 78
    .local v4, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .local v6, _arg3:Landroid/app/PendingIntent;
    :goto_2
    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :cond_1
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_2

    .line 90
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :sswitch_3
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 96
    .restart local v2       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 98
    .restart local v4       #_arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    :goto_3
    move-object v0, p0

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_3

    .line 110
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :sswitch_4
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 113
    .local v7, _arg0:J
    invoke-virtual {p0, v7, v8}, Landroid/app/IAlarmManager$Stub;->setTime(J)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 119
    .end local v7           #_arg0:J
    :sswitch_5
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 128
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 136
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 134
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_4

    .line 142
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_7
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->cancelPoweroffAlarm(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->bootFromPoweroffAlarm()Z

    move-result v10

    .line 153
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 154
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 159
    .end local v10           #_result:Z
    :sswitch_9
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->removeFromAms(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->lookForPackageFromAms(Ljava/lang/String;)Z

    move-result v10

    .line 172
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 178
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Z
    :sswitch_b
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    .line 181
    .local v1, _arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setAlarmPolicyState(Z)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 180
    .end local v1           #_arg0:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 187
    :sswitch_c
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->getAlarmPolicyState()Z

    move-result v10

    .line 189
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 190
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 195
    .end local v10           #_result:Z
    :sswitch_d
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setAlarmHeartBeat(I)Z

    move-result v10

    .line 199
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 200
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 205
    .end local v1           #_arg0:I
    .end local v10           #_result:Z
    :sswitch_e
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->getAlarmHeartBeat()I

    move-result v10

    .line 207
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v10           #_result:I
    :sswitch_f
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/IAlarmManager$Stub;->setAlarmDynList(Ljava/lang/String;I)I

    move-result v10

    .line 219
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 225
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_10
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 228
    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setPhbEnable(Z)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 227
    .end local v1           #_arg0:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 234
    :sswitch_11
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->getPhbState()Z

    move-result v10

    .line 236
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v10, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 242
    .end local v10           #_result:Z
    :sswitch_12
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 246
    .local v9, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    .line 248
    .local v2, _arg1:Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 249
    .local v4, _arg2:I
    invoke-virtual {p0, v9, v2, v4}, Landroid/app/IAlarmManager$Stub;->setAlarmsPending(Ljava/util/List;ZI)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v2           #_arg1:Z
    .end local v4           #_arg2:I
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 255
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->removeAllPendingAlarms()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
