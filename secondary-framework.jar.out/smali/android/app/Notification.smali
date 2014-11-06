.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_REMOVBLE:I = 0x10000

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final KIND_CALL:Ljava/lang/String; = "android.call"

.field public static final KIND_EMAIL:Ljava/lang/String; = "android.email"

.field public static final KIND_EVENT:Ljava/lang/String; = "android.event"

.field public static final KIND_MESSAGE:Ljava/lang/String; = "android.message"

.field public static final KIND_PROMO:Ljava/lang/String; = "android.promo"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1


# instance fields
.field private actions:[Landroid/app/Notification$Action;

.field public audioStreamType:I

.field public bigContentView:Landroid/widget/RemoteViews;

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field private extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public iconLevel:I

.field public kind:[Ljava/lang/String;

.field public largeIcon:Landroid/graphics/Bitmap;

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field public number:I

.field public priority:I

.field public simId:J

.field public simInfoType:I

.field public sound:Landroid/net/Uri;

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;

.field public vibrate:[J

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 813
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 526
    iput v2, p0, Landroid/app/Notification;->priority:I

    .line 528
    iput v2, p0, Landroid/app/Notification;->simInfoType:I

    .line 529
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    invoke-direct {p0}, Landroid/app/Notification;->setSimIdAndInfoType()V

    .line 531
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 1
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 565
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 566
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 567
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 539
    iput-wide p4, p0, Landroid/app/Notification;->when:J

    .line 540
    iput p2, p0, Landroid/app/Notification;->icon:I

    .line 541
    iput-object p3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 542
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, p6, p7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 545
    iput v1, p0, Landroid/app/Notification;->simInfoType:I

    .line 546
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    invoke-direct {p0}, Landroid/app/Notification;->setSimIdAndInfoType()V

    .line 548
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    .line 574
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .local v0, version:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 583
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 586
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 589
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 590
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 592
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 593
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 595
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 596
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 600
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->simInfoType:I

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->simId:J

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 607
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 610
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/Notification;->setSimIdAndInfoType(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 618
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 621
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 629
    :cond_8
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 631
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 633
    :cond_9
    return-void
.end method

.method static synthetic access$102(Landroid/app/Notification;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/Notification;)[Landroid/app/Notification$Action;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Notification;[Landroid/app/Notification$Action;)[Landroid/app/Notification$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    return-object p1
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 637
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 639
    .local v2, that:Landroid/app/Notification;
    iget-wide v7, p0, Landroid/app/Notification;->when:J

    iput-wide v7, v2, Landroid/app/Notification;->when:J

    .line 640
    iget v7, p0, Landroid/app/Notification;->icon:I

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 641
    iget v7, p0, Landroid/app/Notification;->number:I

    iput v7, v2, Landroid/app/Notification;->number:I

    .line 644
    iget-object v7, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 645
    iget-object v7, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v7, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 646
    iget-object v7, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v7, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 648
    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 649
    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 651
    :cond_0
    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_1

    .line 652
    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 654
    :cond_1
    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_2

    .line 655
    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 657
    :cond_2
    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 658
    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 662
    :cond_3
    iget v7, p0, Landroid/app/Notification;->simInfoType:I

    iput v7, v2, Landroid/app/Notification;->simInfoType:I

    .line 663
    iget-wide v7, p0, Landroid/app/Notification;->simId:J

    iput-wide v7, v2, Landroid/app/Notification;->simId:J

    .line 666
    iget v7, p0, Landroid/app/Notification;->iconLevel:I

    iput v7, v2, Landroid/app/Notification;->iconLevel:I

    .line 667
    iget-object v7, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v7, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 668
    iget v7, p0, Landroid/app/Notification;->audioStreamType:I

    iput v7, v2, Landroid/app/Notification;->audioStreamType:I

    iget v7, p0, Landroid/app/Notification;->simInfoType:I

    iput v7, v2, Landroid/app/Notification;->simInfoType:I

    iget-wide v7, p0, Landroid/app/Notification;->simId:J

    iput-wide v7, v2, Landroid/app/Notification;->simId:J

    .line 670
    iget-object v6, p0, Landroid/app/Notification;->vibrate:[J

    .line 671
    .local v6, vibrate:[J
    if-eqz v6, :cond_4

    .line 672
    array-length v0, v6

    .line 673
    .local v0, N:I
    new-array v5, v0, [J

    iput-object v5, v2, Landroid/app/Notification;->vibrate:[J

    .line 674
    .local v5, vib:[J
    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    .end local v0           #N:I
    .end local v5           #vib:[J
    :cond_4
    iget v7, p0, Landroid/app/Notification;->ledARGB:I

    iput v7, v2, Landroid/app/Notification;->ledARGB:I

    .line 678
    iget v7, p0, Landroid/app/Notification;->ledOnMS:I

    iput v7, v2, Landroid/app/Notification;->ledOnMS:I

    .line 679
    iget v7, p0, Landroid/app/Notification;->ledOffMS:I

    iput v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 680
    iget v7, p0, Landroid/app/Notification;->defaults:I

    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 682
    iget v7, p0, Landroid/app/Notification;->flags:I

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 684
    iget v7, p0, Landroid/app/Notification;->priority:I

    iput v7, v2, Landroid/app/Notification;->priority:I

    .line 686
    iget-object v4, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 687
    .local v4, thiskind:[Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 688
    array-length v0, v4

    .line 689
    .restart local v0       #N:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, v2, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 690
    .local v3, thatkind:[Ljava/lang/String;
    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    .end local v0           #N:I
    .end local v3           #thatkind:[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_6

    .line 694
    new-instance v7, Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 698
    :cond_6
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    new-array v7, v7, [Landroid/app/Notification$Action;

    iput-object v7, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 699
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    if-ge v1, v7, :cond_7

    .line 700
    iget-object v7, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v8, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v8

    aput-object v8, v7, v1

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_7
    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_8

    .line 703
    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 706
    :cond_8
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "context"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v6, 0x1020064

    const v4, 0x1020006

    .line 849
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x109008e

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 851
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v2, p0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_0

    .line 852
    iget v2, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 854
    :cond_0
    iget v2, p0, Landroid/app/Notification;->priority:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    .line 855
    const-string v2, "setBackgroundResource"

    const v3, 0x1080618

    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 857
    const v2, 0x1020323

    const-string v3, "setBackgroundResource"

    const v4, 0x108041b

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 860
    :cond_1
    if-eqz p2, :cond_2

    .line 861
    const v2, 0x1020016

    invoke-virtual {v0, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 863
    :cond_2
    if-eqz p3, :cond_3

    .line 864
    const v2, 0x1020046

    invoke-virtual {v0, v2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 866
    :cond_3
    iget-wide v2, p0, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 867
    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 868
    const-string v2, "setTime"

    iget-wide v3, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 870
    :cond_4
    iget v2, p0, Landroid/app/Notification;->number:I

    if-eqz v2, :cond_5

    .line 871
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 872
    .local v1, f:Ljava/text/NumberFormat;
    const v2, 0x1020327

    iget v3, p0, Landroid/app/Notification;->number:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 875
    .end local v1           #f:Ljava/text/NumberFormat;
    :cond_5
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 876
    iput-object p4, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 877
    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 944
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 945
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 947
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 950
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 953
    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 954
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 956
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Notification(pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 884
    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    .line 886
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :goto_0
    const-string v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 895
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :goto_1
    const-string v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 912
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :goto_2
    const-string v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v3, " kind=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-nez v3, :cond_9

    .line 924
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_0
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_1

    .line 933
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    const-string v3, " action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 890
    :cond_2
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 896
    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_6

    .line 897
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 898
    .local v0, N:I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 900
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 903
    :cond_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 904
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 906
    :cond_5
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 908
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_6
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 913
    :cond_7
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_8

    .line 914
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 916
    :cond_8
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 926
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 927
    if-lez v1, :cond_a

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_a
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 718
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 721
    iget v0, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget v0, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 729
    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 735
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 741
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 742
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 747
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 748
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 753
    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 754
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 762
    :goto_5
    iget v0, p0, Landroid/app/Notification;->simInfoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget-wide v0, p0, Landroid/app/Notification;->simId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 766
    iget v0, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget v0, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 770
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 775
    :goto_6
    iget v0, p0, Landroid/app/Notification;->simInfoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/Notification;->simId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 777
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 783
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 789
    :goto_7
    iget v0, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget-object v0, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 794
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 800
    :goto_8
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 802
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    .line 803
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 808
    :goto_9
    return-void

    .line 727
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 733
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 739
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 745
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 751
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 757
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 773
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 786
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 797
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 806
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method

.method private setSimIdAndInfoType()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->simInfoType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    return-void
.end method

.method private setSimIdAndInfoType(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->simInfoType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    return-void
.end method
