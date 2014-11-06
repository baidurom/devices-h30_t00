.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 269
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 270
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 13
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, lookupUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 277
    .local v3, createUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 280
    .local v8, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 313
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 314
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_1
    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v9, v7}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 319
    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v9}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 321
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 323
    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v9}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v11, 0x3

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v12, v12, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v9, v10, v7, v11, v12}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 336
    :cond_2
    :goto_1
    return-void

    .line 282
    .restart local p2
    :pswitch_0
    const/4 v8, 0x1

    .line 283
    :try_start_0
    const-string v10, "tel"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 287
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 289
    invoke-static/range {p2 .. p3}, Landroid/widget/QuickContactBadge$QuickContactBadgeEx;->isfixedIndexValid(Ljava/lang/Object;Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 291
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 292
    .local v1, contactId:J
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 294
    goto :goto_0

    .line 299
    .end local v1           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v8, 0x1

    .line 300
    const-string v9, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v10, 0x0

    invoke-static {v9, p2, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 304
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 306
    .restart local v1       #contactId:J
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 307
    .restart local v6       #lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 313
    .end local v1           #contactId:J
    .end local v6           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz p3, :cond_3

    .line 314
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3
    throw v9

    .line 325
    :cond_4
    if-eqz v3, :cond_2

    .line 327
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v5, v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v5, intent:Landroid/content/Intent;
    :try_start_1
    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #invoke-virtual {v9}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    #move-result-object v9

    #invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    invoke-static {v9, v3}, Landroid/widget/QuickContactBadge$BaiduInjector;->showStrangeQuickContact(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 331
    :catch_0
    move-exception v4

    .line 332
    .local v4, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "QuickContactBadge"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity not found for intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
