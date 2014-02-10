.class public final Lcom/mediatek/drm/SecureWarningPrompt;
.super Ljava/lang/Object;
.source "SecureWarningPrompt.java"

# interfaces
.implements Lcom/mediatek/common/drm/ISecureWarningPrompt;


# static fields
.field private static final NOTIFICATION_ID:I = 0x0

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "SecureWarningPrompt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v3, 0x205011e

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotificationManager:Landroid/app/NotificationManager;

    .line 56
    iput-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotification:Landroid/app/Notification;

    .line 61
    iput-object p1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    .line 62
    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, builder:Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    const v2, 0x205011d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 67
    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 70
    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 72
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotification:Landroid/app/Notification;

    .line 75
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mContext:Landroid/content/Context;

    const v2, 0x205011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v0, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "SecureWarningPrompt"

    iget-object v2, p0, Lcom/mediatek/drm/SecureWarningPrompt;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 85
    return-void
.end method
