.class public Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelState;
.super Ljava/lang/Object;
.source "IPushChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelState"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTTING:I = 0x2

.field public static final DEFAULT:I = -0x1

.field public static final DESTORY:I = 0x3

.field public static final DISCONNECT:I

.field public static recordConnect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelState;->recordConnect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
