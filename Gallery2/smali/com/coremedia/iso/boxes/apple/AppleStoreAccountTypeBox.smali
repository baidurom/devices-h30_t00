.class public Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleStoreAccountTypeBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "akID"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "akID"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    .line 13
    return-void
.end method


# virtual methods
.method public getReadableValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v0, v1, v2

    .line 17
    .local v0, value:B
    packed-switch v0, :pswitch_data_0

    .line 23
    const-string v1, "unknown Account"

    :goto_0
    return-object v1

    .line 19
    :pswitch_0
    const-string v1, "iTunes Account"

    goto :goto_0

    .line 21
    :pswitch_1
    const-string v1, "AOL Account"

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
