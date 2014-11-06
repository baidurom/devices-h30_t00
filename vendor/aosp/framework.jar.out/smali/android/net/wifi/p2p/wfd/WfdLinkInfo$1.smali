.class final Landroid/net/wifi/p2p/wfd/WfdLinkInfo$1;
.super Ljava/lang/Object;
.source "WfdLinkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/wfd/WfdLinkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/p2p/wfd/WfdLinkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/wfd/WfdLinkInfo;
    .locals 2
    .parameter "in"

    .prologue
    .line 63
    new-instance v0, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;-><init>()V

    .line 64
    .local v0, info:Landroid/net/wifi/p2p/wfd/WfdLinkInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;->linkInfo:Ljava/lang/String;

    .line 66
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/wfd/WfdLinkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/wfd/WfdLinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/wfd/WfdLinkInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 70
    new-array v0, p1, [Landroid/net/wifi/p2p/wfd/WfdLinkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/wfd/WfdLinkInfo$1;->newArray(I)[Landroid/net/wifi/p2p/wfd/WfdLinkInfo;

    move-result-object v0

    return-object v0
.end method
