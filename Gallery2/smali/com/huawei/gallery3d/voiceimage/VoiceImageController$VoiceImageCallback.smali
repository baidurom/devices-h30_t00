.class public interface abstract Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;
.super Ljava/lang/Object;
.source "VoiceImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceImageCallback"
.end annotation


# virtual methods
.method public abstract closeParcelFileDescriptor()V
.end method

.method public abstract getFileDescriptor()Ljava/io/FileDescriptor;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract needIcon()Z
.end method

.method public abstract onTapeError()V
.end method

.method public abstract refreshIconWhenReady()V
.end method
