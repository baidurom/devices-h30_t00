.class final enum Landroid/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum FMStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MATVStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x10403fd

    const v5, 0x303006c

    const v6, 0x303006c

    move v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    .line 176
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x10403fe

    const v8, 0x3030072

    const v9, 0x3030073

    move v5, v11

    move v6, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 181
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0x10403ff

    const v8, 0x3030071

    const v9, 0x3030071

    move v5, v12

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    .line 186
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const v7, 0x10403fa

    const v8, 0x3030069

    const v9, 0x303006a

    move v5, v13

    move v6, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    .line 196
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MATVStream"

    const/16 v6, 0xb

    const v7, 0x2050052

    const v8, 0x303008a

    const v9, 0x3030086

    move v5, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    .line 201
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x5

    const v7, 0x1040400

    const v8, 0x3030076

    const v9, 0x3030077

    move v6, v13

    move v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    .line 206
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x6

    const/4 v6, 0x5

    const v7, 0x1040401

    const v8, 0x303006e

    const v9, 0x303006f

    move v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    .line 212
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/4 v5, 0x7

    const/16 v6, -0x64

    const v7, 0x1040400

    const v8, 0x3030076

    const v9, 0x3030077

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    .line 217
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/16 v5, 0x8

    const/16 v6, -0xc8

    const v7, 0x1040400

    const v8, 0x108031a

    const v9, 0x108030e

    move v10, v2

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    .line 223
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/16 v5, 0x9

    const/16 v6, 0xa

    const v7, 0x10405a2

    const v8, 0x3030076

    const v9, 0x3030077

    move v10, v11

    invoke-direct/range {v3 .. v10}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "streamType"
    .parameter "descRes"
    .parameter "iconRes"
    .parameter "iconMuteRes"
    .parameter "show"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput p3, p0, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 240
    iput p4, p0, Landroid/view/VolumePanel$StreamResources;->descRes:I

    .line 241
    iput p5, p0, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    .line 242
    iput p6, p0, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 243
    iput-boolean p7, p0, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 244
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanel$StreamResources;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    const-class v0, Landroid/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Landroid/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method
