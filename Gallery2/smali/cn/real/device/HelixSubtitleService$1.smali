.class Lcn/real/device/HelixSubtitleService$1;
.super Landroid/os/Handler;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubtitleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lineLength:I

.field private mDuration:J

.field private mFilePos:J

.field private mIndex:J

.field private mSubtitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcn/real/device/HelixSubtitleService;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubtitleService;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    .line 860
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 861
    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 862
    iput-wide v1, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 863
    iput-wide v1, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    .line 864
    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    .line 865
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mFilePos:J

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    return-void
.end method

.method private PatchSMITypesToSubtitle()V
    .locals 8

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 956
    .local v1, fontColor:Ljava/lang/String;
    const/4 v3, 0x0

    .line 957
    .local v3, fontWeight:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v5, 0x40

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 958
    .local v2, fontPrefix:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 962
    .local v0, details:Ljava/lang/StringBuffer;
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$7()Lcn/real/device/smiparser/JSmiParser;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/real/device/smiparser/JSmiParser;->GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 963
    .local v4, types:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 965
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fontColor:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 966
    .restart local v1       #fontColor:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 967
    const-string v5, "color=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 969
    :cond_0
    const-string v5, "HelixSubtitleService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "####mType: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fontPrefix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "####"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_1
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$7()Lcn/real/device/smiparser/JSmiParser;

    move-result-object v5

    const-string v6, "P"

    invoke-virtual {v5, v6}, Lcn/real/device/smiparser/JSmiParser;->GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 974
    if-eqz v4, :cond_6

    .line 976
    if-nez v1, :cond_2

    .line 977
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fontColor:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 978
    .restart local v1       #fontColor:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 979
    const-string v5, "color=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 982
    :cond_2
    const-string v5, "HelixSubtitleService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "P fontPrefix "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 984
    const-string v5, "<font "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 986
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 989
    :cond_3
    const-string v5, "font-weight"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #fontWeight:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 990
    .restart local v3       #fontWeight:Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v5, "bold"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "bolder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 991
    :cond_4
    const-string v5, "<B>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "</B>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 994
    :cond_5
    const-string v5, "HelixSubtitleService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "####Subtitle is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "####"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_6
    return-void
.end method

.method private PatchSSATypesToSubtitle()V
    .locals 14

    .prologue
    const/16 v11, 0x20

    const/4 v13, 0x5

    .line 1000
    const/4 v5, 0x0

    .line 1002
    .local v5, primaryColour:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, bold:I
    const/4 v4, 0x0

    .local v4, italic:I
    const/4 v7, 0x0

    .line 1004
    .local v7, underline:I
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v10, 0x40

    invoke-direct {v3, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1005
    .local v3, fontPrefix:Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1006
    .local v9, weightPrefix:Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1007
    .local v8, weightPostfix:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v10, 0x200

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1013
    .local v1, details:Ljava/lang/StringBuffer;
    const-string v10, "HelixSubtitleService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "####Got SSA/ASS styles: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "####"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    const-string v11, "*Default"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1015
    const-string v10, "Default"

    iput-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    .line 1016
    :cond_0
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$8()Lcn/real/device/assparser/JSsaParser;

    move-result-object v10

    iget-object v11, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcn/real/device/assparser/JSsaParser;->GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 1017
    .local v6, types:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_a

    .line 1019
    const-string v10, "primarycolour"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #primaryColour:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1020
    .restart local v5       #primaryColour:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1021
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x7

    if-le v10, v11, :cond_1

    .line 1022
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    const-string v10, "HelixSubtitleService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "####mType: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fontPrefix: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "####"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_1
    const-string v10, "color=\'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\' "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    :cond_2
    :try_start_0
    const-string v10, "bold"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1029
    const-string v10, "italic"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1030
    const-string v10, "underline"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1034
    :goto_0
    if-eqz v0, :cond_3

    .line 1035
    const-string v10, "<b>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1036
    const-string v10, "</b>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    :cond_3
    if-eqz v4, :cond_4

    .line 1039
    const-string v10, "<i>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1040
    const-string v10, "</i>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    :cond_4
    if-eqz v7, :cond_5

    .line 1043
    const-string v10, "<u>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    const-string v10, "</u>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_9

    .line 1047
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1048
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-le v10, v13, :cond_8

    .line 1049
    const-string v10, "<font "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    iget-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1064
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 1065
    :cond_7
    const-string v10, "HelixSubtitleService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Style: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mSubtitle: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :goto_3
    return-void

    .line 1031
    :catch_0
    move-exception v2

    .line 1032
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1053
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    iget-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1058
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-le v10, v13, :cond_6

    .line 1059
    const-string v10, "<font "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1060
    iget-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1068
    :cond_a
    const-string v10, "HelixSubtitleService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "####No Item Fit for the Style: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "####"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    .line 868
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 869
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubTitleType:I
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$0(Lcn/real/device/HelixSubtitleService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 945
    :goto_0
    const-string v0, "HelixSubtitleService"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "show time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 948
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 949
    :cond_0
    iget-object v10, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    new-instance v0, Lcn/real/device/HelixSubtitleService$ClearThread;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    iget-wide v2, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    iget-wide v4, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    invoke-direct/range {v0 .. v5}, Lcn/real/device/HelixSubtitleService$ClearThread;-><init>(Lcn/real/device/HelixSubtitleService;JJ)V

    #setter for: Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;
    invoke-static {v10, v0}, Lcn/real/device/HelixSubtitleService;->access$5(Lcn/real/device/HelixSubtitleService;Lcn/real/device/HelixSubtitleService$ClearThread;)V

    .line 950
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$6(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/HelixSubtitleService$ClearThread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcn/real/device/HelixSubtitleService$ClearThread;->setPriority(I)V

    .line 951
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$6(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/HelixSubtitleService$ClearThread;

    move-result-object v0

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService$ClearThread;->start()V

    .line 952
    return-void

    .line 871
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    .line 872
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 874
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0}, Lcn/real/device/SubTitleView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$2(Lcn/real/device/HelixSubtitleService;)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    .line 877
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget v1, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setHeight(I)V

    .line 878
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$3(Lcn/real/device/HelixSubtitleService;)F

    move-result v1

    sget v2, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setTextSize(F)V

    .line 879
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    goto/16 :goto_0

    .line 882
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    .line 883
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    .line 884
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 886
    invoke-direct {p0}, Lcn/real/device/HelixSubtitleService$1;->PatchSMITypesToSubtitle()V

    .line 887
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0}, Lcn/real/device/SubTitleView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$2(Lcn/real/device/HelixSubtitleService;)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    .line 890
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget v1, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setHeight(I)V

    .line 891
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$3(Lcn/real/device/HelixSubtitleService;)F

    move-result v1

    sget v2, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setTextSize(F)V

    .line 892
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    goto/16 :goto_0

    .line 895
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    .line 896
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mFilePos:J

    .line 897
    iput-wide v4, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUBIDX: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/real/device/HelixSubtitleService$1;->mFilePos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 900
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$4(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/subidxparser/VobSubFileHandler;

    move-result-object v0

    iget-wide v1, p0, Lcn/real/device/HelixSubtitleService$1;->mFilePos:J

    invoke-virtual {v0, v1, v2}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetRawData(J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 901
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2

    .line 902
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$4(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/subidxparser/VobSubFileHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 905
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$4(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/subidxparser/VobSubFileHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetHeight()I

    move-result v9

    .line 906
    .local v9, height:I
    sget v0, Lcn/real/device/FileUtils;->mDefaultSTViewHight:I

    if-le v9, v0, :cond_1

    .line 907
    :goto_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    int-to-float v1, v9

    sget v2, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setHeight(I)V

    .line 909
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v6}, Lcn/real/device/SubTitleView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 910
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 917
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #height:I
    :catch_0
    move-exception v8

    .line 918
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 906
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #height:I
    :cond_1
    :try_start_1
    sget v9, Lcn/real/device/FileUtils;->mDefaultSTViewHight:I

    goto :goto_1

    .line 916
    .end local v9           #height:I
    :cond_2
    const-string v0, "HelixSubtitleService"

    const-string v1, "####No Bitmap Found in Sub File####"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 923
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mIndex:J

    .line 924
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    .line 925
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 926
    .local v7, duration:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->mType:Ljava/lang/String;

    .line 928
    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 934
    :goto_2
    invoke-direct {p0}, Lcn/real/device/HelixSubtitleService$1;->PatchSSATypesToSubtitle()V

    .line 935
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->mSubtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0}, Lcn/real/device/SubTitleView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$2(Lcn/real/device/HelixSubtitleService;)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    .line 937
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget v1, p0, Lcn/real/device/HelixSubtitleService$1;->lineLength:I

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setHeight(I)V

    .line 938
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$3(Lcn/real/device/HelixSubtitleService;)F

    move-result v1

    sget v2, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setTextSize(F)V

    .line 939
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$1;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    goto/16 :goto_0

    .line 929
    :catch_1
    move-exception v8

    .line 930
    .restart local v8       #e:Ljava/lang/Exception;
    iput-wide v4, p0, Lcn/real/device/HelixSubtitleService$1;->mDuration:J

    .line 931
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
