.class Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoShareSdkBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;


# direct methods
.method private constructor <init>(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;-><init>(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 134
    .local v4, listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnFolderChange()V

    goto :goto_0

    .line 138
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :cond_0
    const-string v11, "actionID"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, cmdId:I
    sget-boolean v11, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v11, :cond_1

    .line 140
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceiveBroadcast, cmdId is: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    const-string v11, "dir"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, dir:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceiveBroadcast, dirpath is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sparse-switch v1, :sswitch_data_0

    .line 248
    .end local v1           #cmdId:I
    .end local v2           #dir:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 146
    .restart local v1       #cmdId:I
    .restart local v2       #dir:Ljava/lang/String;
    :sswitch_0
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->setNeedCompare(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$300(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCameraActivity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    const/4 v12, 0x1

    #setter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z
    invoke-static {v11, v12}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$302(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;Z)Z

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 150
    .local v5, nowTime:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mLastNoSpaceShowToastTime:J
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$500(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)J

    move-result-wide v11

    sub-long v11, v5, v11

    const-wide/16 v13, 0x2710

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #setter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mLastNoSpaceShowToastTime:J
    invoke-static {v11, v5, v6}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$502(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;J)J

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v9

    .line 154
    .local v9, themeContext:Landroid/view/ContextThemeWrapper;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isStorageMounted(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 155
    const v11, 0x7f0d0423

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .line 159
    .local v10, toast:Landroid/widget/Toast;
    :goto_2
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 161
    .end local v9           #themeContext:Landroid/view/ContextThemeWrapper;
    .end local v10           #toast:Landroid/widget/Toast;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    const/4 v12, 0x0

    #setter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z
    invoke-static {v11, v12}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$302(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;Z)Z

    goto :goto_1

    .line 157
    .restart local v9       #themeContext:Landroid/view/ContextThemeWrapper;
    :cond_4
    const v11, 0x7f0d0422

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    .restart local v10       #toast:Landroid/widget/Toast;
    goto :goto_2

    .line 165
    .end local v5           #nowTime:J
    .end local v9           #themeContext:Landroid/view/ContextThemeWrapper;
    .end local v10           #toast:Landroid/widget/Toast;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 166
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4, v2}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnContentChange(Ljava/lang/String;)V

    goto :goto_3

    .line 170
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 171
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnFolderChange()V

    goto :goto_4

    .line 175
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 176
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnCreateShareFail()V

    goto :goto_5

    .line 180
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 181
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnModifyFolderFail()V

    goto :goto_6

    .line 185
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 186
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnModifyFolderSuc()V

    goto :goto_7

    .line 191
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->clearNotification(Landroid/content/Context;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 193
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnNotifyLogStateChange()V

    goto :goto_8

    .line 201
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 202
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnNotifyLogStateChange()V

    goto :goto_9

    .line 206
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 207
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnNotifyDownload()V

    goto :goto_a

    .line 211
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_9
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isNeedAddPhoto()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 212
    const-string v11, "dir"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, shareFolderPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showPhotoShareCompleteToast(Landroid/content/Context;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .end local v7           #shareFolderPath:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 219
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnCreateShareSuc()V

    goto :goto_b

    .line 223
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 224
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnFriendNotify()V

    goto :goto_c

    .line 228
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_b
    const-string v11, "state"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 229
    .local v8, state:I
    const/4 v11, 0x1

    if-ne v8, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCameraActivity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0d041a

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0d0426

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 233
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 234
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnDeleteFolder()V

    goto :goto_d

    .line 238
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    .end local v8           #state:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 239
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnIsHWAccount()V

    goto :goto_e

    .line 243
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;->this$0:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    #getter for: Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;
    invoke-static {v11}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;

    .line 244
    .restart local v4       #listener:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    invoke-interface {v4}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;->OnQueryFolderSuc()V

    goto :goto_f

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_0
        0xfa0 -> :sswitch_1
        0xfa1 -> :sswitch_2
        0xfa2 -> :sswitch_3
        0xfa3 -> :sswitch_4
        0xfa4 -> :sswitch_7
        0xfa5 -> :sswitch_6
        0xfa6 -> :sswitch_7
        0xfa7 -> :sswitch_7
        0xfa9 -> :sswitch_7
        0xfaa -> :sswitch_7
        0xfab -> :sswitch_8
        0xfac -> :sswitch_9
        0xfad -> :sswitch_a
        0xfae -> :sswitch_b
        0xfaf -> :sswitch_c
        0xfb0 -> :sswitch_5
        0xfb1 -> :sswitch_d
    .end sparse-switch
.end method
