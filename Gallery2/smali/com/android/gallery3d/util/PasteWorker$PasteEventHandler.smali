.class public interface abstract Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;
.super Ljava/lang/Object;
.source "PasteWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/PasteWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PasteEventHandler"
.end annotation


# static fields
.field public static final PASTE_EVENT_NO_SPACE:I = 0x3

.field public static final PASTE_EVENT_PROGRESS_UPDATE:I = 0xb

.field public static final PASTE_EVENT_SAME_FILENAME:I = 0x2

.field public static final PASTE_EVENT_SAME_SOURCE_DESTINATION:I = 0x1

.field public static final PASTE_EVENT_SOURCE_NOT_EXIST:I = 0x4

.field public static final PASTE_EVENT_UNKNOWN:I = 0x63

.field public static final PASTE_EVENT_USER_CANCEL:I = 0x5

.field public static final PASTE_OK:I = 0x0

.field public static final PASTE_STRATEGY_SAMENAME_ALLJUMPOVER:I = 0x17

.field public static final PASTE_STRATEGY_SAMENAME_ALLOVERRIDE:I = 0x16

.field public static final PASTE_STRATEGY_SAMENAME_USER:I = 0x15


# virtual methods
.method public abstract onPasteCompleteEvent(ILandroid/os/Bundle;)Z
.end method

.method public abstract onPasteEvent(ILandroid/os/Bundle;)Z
.end method

.method public abstract onPasteInitEvent(ILandroid/os/Bundle;)Z
.end method
