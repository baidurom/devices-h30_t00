.class public Lcom/android/hwcamera/eventcenter/lcdflash/LcdFlashEvent;
.super Ljava/lang/Object;
.source "LcdFlashEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "lcd_flash_event_type"

    return-object v0
.end method
