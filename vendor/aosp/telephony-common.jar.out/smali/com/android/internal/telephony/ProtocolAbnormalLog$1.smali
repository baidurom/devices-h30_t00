.class Lcom/android/internal/telephony/ProtocolAbnormalLog$1;
.super Ljava/lang/Object;
.source "ProtocolAbnormalLog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ProtocolAbnormalLog;->getFilesList()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ProtocolAbnormalLog;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ProtocolAbnormalLog;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/ProtocolAbnormalLog$1;->this$0:Lcom/android/internal/telephony/ProtocolAbnormalLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "pathname"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, logFileName:Ljava/lang/String;
    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
