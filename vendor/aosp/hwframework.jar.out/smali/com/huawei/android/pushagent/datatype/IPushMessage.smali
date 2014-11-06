.class public interface abstract Lcom/huawei/android/pushagent/datatype/IPushMessage;
.super Ljava/lang/Object;
.source "IPushMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/IPushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encode()[B
.end method

.method public abstract getCmdID()B
.end method

.method public abstract getHexCmdID()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
