.class public Lcom/mediatek/drm/OmaDrmStore$Playback;
.super Ljava/lang/Object;
.source "OmaDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/drm/OmaDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playback"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RESUME:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValid(I)Z
    .locals 1
    .parameter "playbackStatus"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, isValid:Z
    packed-switch p0, :pswitch_data_0

    .line 147
    :goto_0
    return v0

    .line 145
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
