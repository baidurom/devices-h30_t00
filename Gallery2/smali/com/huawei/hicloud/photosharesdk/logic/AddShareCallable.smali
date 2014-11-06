.class Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;
.source "PhotoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable$SyncMessageCallableInner;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field localPath:Ljava/lang/String;

.field nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field orgPhotoPath:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "callParam"

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;-><init>(Ljava/lang/Object;)V

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->nameList:Ljava/util/ArrayList;

    move-object v0, p1

    .line 830
    check-cast v0, Ljava/util/HashMap;

    .line 831
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "context"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    .line 832
    const-string v1, "localPath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->localPath:Ljava/lang/String;

    .line 833
    const-string v1, "orgPhotoPath"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->orgPhotoPath:[Ljava/lang/String;

    .line 834
    return-void
.end method

.method private getOrgName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .parameter "subLen"

    .prologue
    const/4 v6, 0x0

    .line 1007
    const-string v2, ""

    .line 1008
    .local v2, orgName:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, nameStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1010
    .local v3, strLen:I
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, lastStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sub-int v5, v3, p2

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1012
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getNewName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    return-object v2
.end method

.method private querySharePath(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "folderDbankPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 979
    .local v0, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 980
    const-string v3, "FolderPathR"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 981
    const-string v6, "SharePath"

    aput-object v6, v4, v5

    .line 979
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 982
    .local v1, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    return-object v1
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v3

    .line 840
    .local v3, baseDir:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v16, orgPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->orgPhotoPath:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->nameList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->nameList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 870
    :cond_0
    const/16 v23, 0x0

    .line 973
    :goto_1
    return-object v23

    .line 842
    :cond_1
    aget-object v15, v24, v23

    .line 844
    .local v15, orgPath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_3

    .line 847
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v26

    const-string v27, "3"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "orgPath not exists or file size 0 :"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 851
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getNewName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 853
    .local v13, name:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "/Photoshare"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 855
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "thumb"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 856
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 858
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->getOrgName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 865
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->nameList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 860
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x16

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_4

    .line 862
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->getOrgName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 873
    .end local v8           #file:Ljava/io/File;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #orgPath:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->orgPhotoPath:[Ljava/lang/String;

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->localPath:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->localPath2DbankPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, folderDbankPath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->querySharePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 877
    .local v19, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v20, ""

    .line 878
    .local v20, sharePath:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_7

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 880
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Object;

    const/16 v24, 0x0

    aget-object v20, v23, v24

    .end local v20           #sharePath:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 888
    .restart local v20       #sharePath:Ljava/lang/String;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 889
    .local v4, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 890
    .local v5, collector2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 891
    const/4 v11, 0x0

    .line 892
    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->orgPhotoPath:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_8

    .line 957
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 968
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v23

    const/16 v24, 0x3

    const-string v25, "/PhotoshareShared"

    .line 971
    const/16 v26, 0x4

    .line 970
    invoke-virtual/range {v23 .. v26}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    .line 973
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 884
    .end local v4           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    .end local v5           #collector2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    .end local v11           #i:I
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 892
    .restart local v4       #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    .restart local v5       #collector2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    .restart local v11       #i:I
    :cond_8
    aget-object v21, v24, v23

    .line 894
    .local v21, str:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->nameList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 896
    .local v14, newName:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->localPath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 897
    .local v17, photoCachePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->querySharePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 899
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 901
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->localPath2DbankPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 906
    .local v18, photoDBankPath:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v26 .. v28}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copySingleFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateImage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 923
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v6

    .line 924
    .local v6, createTime:Ljava/lang/String;
    new-instance v10, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;-><init>()V

    .line 928
    .local v10, folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    invoke-virtual {v10, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setSharedPath(Ljava/lang/String;)V

    .line 931
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setNew(Z)V

    .line 932
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v22, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct/range {v22 .. v22}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 939
    .local v22, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCreateTime(Ljava/lang/String;)V

    .line 940
    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCurrentStage(I)V

    .line 941
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setOperationType(I)V

    .line 942
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoName(Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathLocal(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    .line 947
    add-int/lit8 v11, v11, 0x1

    .line 949
    invoke-virtual {v4, v12}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->addPhoto(Ljava/util/List;)Z

    .line 951
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v26

    new-instance v27, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable$SyncMessageCallableInner;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable$SyncMessageCallableInner;-><init>(Ljava/lang/Object;)V

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 892
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 910
    .end local v6           #createTime:Ljava/lang/String;
    .end local v10           #folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    .end local v22           #taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    :catch_0
    move-exception v7

    .line 913
    .local v7, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    const-string v26, ""

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 916
    .end local v7           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :catch_1
    move-exception v7

    .line 919
    .local v7, e:Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;
    const-string v26, ""

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5
.end method
