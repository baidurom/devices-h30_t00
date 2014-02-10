.class final Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationContentViewRecord"
.end annotation


# instance fields
.field final id:I

.field final pkg:Ljava/lang/String;

.field rView:Landroid/widget/RemoteViews;

.field final tag:Ljava/lang/String;

.field final uid:I

.field final userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IILandroid/widget/RemoteViews;)V
    .locals 0
    .parameter "pkg"
    .parameter "uid"
    .parameter "tag"
    .parameter "id"
    .parameter "userId"
    .parameter "rView"

    .prologue
    .line 1983
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1984
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->pkg:Ljava/lang/String;

    .line 1985
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->tag:Ljava/lang/String;

    .line 1986
    iput p2, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->uid:I

    .line 1987
    iput p4, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->id:I

    .line 1988
    iput p5, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->userId:I

    .line 1989
    iput-object p6, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->rView:Landroid/widget/RemoteViews;

    .line 1990
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationContentViewRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/NotificationManagerService$NotificationContentViewRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
