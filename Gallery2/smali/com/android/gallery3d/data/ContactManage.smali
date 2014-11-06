.class public final Lcom/android/gallery3d/data/ContactManage;
.super Ljava/lang/Object;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/ContactManage$ContactContentObserver;,
        Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;,
        Lcom/android/gallery3d/data/ContactManage$NameSortKey;,
        Lcom/android/gallery3d/data/ContactManage$ContactInfo;
    }
.end annotation


# static fields
.field private static CONTACT_IS_PRIVATE:Ljava/lang/String; = null

.field private static CONTACT_PRIVATE_INDEX:I = 0x0

.field private static final PRIVATRE_CONTACTS_DATA_URI:Landroid/net/Uri; = null

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static PROJECTION_FOR_PRIVACY_MODE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ContactManage"

.field private static sInstance:Lcom/android/gallery3d/data/ContactManage;

.field private static sQueryProjection:[Ljava/lang/String;


# instance fields
.field private hasRegister:Z

.field private final mContactSyncThread:Landroid/os/HandlerThread;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 37
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "private_contacts/data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->PRIVATRE_CONTACTS_DATA_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "private_contact"

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->CONTACT_IS_PRIVATE:Ljava/lang/String;

    .line 39
    sput v2, Lcom/android/gallery3d/data/ContactManage;->CONTACT_PRIVATE_INDEX:I

    .line 43
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "sort_key"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->PROJECTION:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "sort_key"

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/gallery3d/data/ContactManage;->CONTACT_IS_PRIVATE:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->PROJECTION_FOR_PRIVACY_MODE:[Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/android/gallery3d/data/ContactManage;->PROJECTION_FOR_PRIVACY_MODE:[Ljava/lang/String;

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->sQueryProjection:[Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/ContactManage;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->sQueryProjection:[Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ContactManage;->hasRegister:Z

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "facerecognition contactSyncThead"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContactSyncThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContactSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Lcom/android/gallery3d/data/ContactManage$1;

    iget-object v1, p0, Lcom/android/gallery3d/data/ContactManage;->mContactSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/ContactManage$1;-><init>(Lcom/android/gallery3d/data/ContactManage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/ContactManage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ContactManage;->hasRegister:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/data/ContactManage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/gallery3d/data/ContactManage;->hasRegister:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/ContactManage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/ContactManage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private getAllContact(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/ContactManage$NameSortKey;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .local p2, name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    const/4 v7, 0x0

    .line 149
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/ContactManage;->sQueryProjection:[Ljava/lang/String;

    const-string v3, "contact_id IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 151
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 153
    .local v6, contactId:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, sortKey:Ljava/lang/String;
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/gallery3d/data/ContactManage;->CONTACT_PRIVATE_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v9, 0x1

    .line 156
    .local v9, isPrivate:Z
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/data/ContactManage$NameSortKey;

    invoke-direct {v1, v10, v11, v9}, Lcom/android/gallery3d/data/ContactManage$NameSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;

    invoke-direct {v0, v6, v11, v9}, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v6           #contactId:I
    .end local v9           #isPrivate:Z
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sortKey:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 160
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactManage"

    const-string v1, "getAllContact Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 155
    .restart local v6       #contactId:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #sortKey:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 162
    .end local v6           #contactId:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sortKey:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getAllPrivateContact(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/ContactManage$NameSortKey;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .local p2, name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    const/4 v7, 0x0

    .line 170
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/gallery3d/data/ContactManage;->PRIVATRE_CONTACTS_DATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/ContactManage;->sQueryProjection:[Ljava/lang/String;

    const-string v3, "contact_id IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 172
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 174
    .local v6, contactId:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, sortKey:Ljava/lang/String;
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/gallery3d/data/ContactManage;->CONTACT_PRIVATE_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v9, 0x1

    .line 177
    .local v9, isPrivate:Z
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/data/ContactManage$NameSortKey;

    invoke-direct {v1, v10, v11, v9}, Lcom/android/gallery3d/data/ContactManage$NameSortKey;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;

    invoke-direct {v0, v6, v11, v9}, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v6           #contactId:I
    .end local v9           #isPrivate:Z
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sortKey:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 181
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactManage"

    const-string v1, "getAllPrivateContact Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 176
    .restart local v6       #contactId:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #sortKey:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 183
    .end local v6           #contactId:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sortKey:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getContactValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "contactId"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 271
    const/4 v6, 0x0

    .line 273
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v8, "contact_id=?"

    .line 274
    .local v8, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 275
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    invoke-direct {p0, v6, p2, p3}, Lcom/android/gallery3d/data/ContactManage;->getContactValueFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v7

    .line 278
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactManage"

    const-string v1, "getContactValue Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getContactValueFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cursor"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 239
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v2

    .line 240
    .local v2, entityIterator:Landroid/content/EntityIterator;
    :cond_0
    invoke-interface {v2}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 241
    invoke-interface {v2}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 242
    .local v1, entity:Landroid/content/Entity;
    invoke-virtual {v1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 243
    .local v5, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v0, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 244
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #entity:Landroid/content/Entity;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getContactValueFromCursors(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "cursor"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v6, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v2

    .line 257
    .local v2, entityIterator:Landroid/content/EntityIterator;
    :cond_0
    invoke-interface {v2}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    invoke-interface {v2}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 259
    .local v1, entity:Landroid/content/Entity;
    invoke-virtual {v1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 260
    .local v5, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v0, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 261
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #entity:Landroid/content/Entity;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_2
    return-object v6
.end method

.method private getContactValues(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "contactId"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 286
    const/4 v6, 0x0

    .line 288
    .local v6, cursor:Landroid/database/Cursor;
    if-gez p1, :cond_2

    .line 298
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v9

    :cond_1
    :goto_0
    return-object v0

    .line 290
    :cond_2
    :try_start_0
    const-string v8, "contact_id=?"

    .line 291
    .local v8, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 292
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    invoke-direct {p0, v6, p2, p3}, Lcom/android/gallery3d/data/ContactManage;->getContactValueFromCursors(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 294
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 295
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactManage"

    const-string v1, "getContactValue Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 82
    sget-object v0, Lcom/android/gallery3d/data/ContactManage;->sInstance:Lcom/android/gallery3d/data/ContactManage;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/gallery3d/data/ContactManage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ContactManage;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/gallery3d/data/ContactManage;->sInstance:Lcom/android/gallery3d/data/ContactManage;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/gallery3d/data/ContactManage;->sInstance:Lcom/android/gallery3d/data/ContactManage;

    return-object v0
.end method


# virtual methods
.method public getContactInfo(Landroid/net/Uri;)Lcom/android/gallery3d/data/ContactManage$ContactInfo;
    .locals 13
    .parameter "contactUri"

    .prologue
    .line 320
    const/4 v7, 0x0

    .line 327
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, contactId:Ljava/lang/String;
    const-string v11, "contact_id=?"

    .line 329
    .local v11, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    .line 330
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "sort_key"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    sget-object v5, Lcom/android/gallery3d/data/ContactManage;->CONTACT_IS_PRIVATE:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 339
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 342
    .local v12, sortKey:Ljava/lang/String;
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v9, 0x1

    .line 343
    .local v9, isPrivate:Z
    :goto_1
    new-instance v0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1, v10, v12, v9}, Lcom/android/gallery3d/data/ContactManage$ContactInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #contactId:Ljava/lang/String;
    .end local v9           #isPrivate:Z
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #selection:Ljava/lang/String;
    .end local v12           #sortKey:Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v0

    .line 335
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #contactId:Ljava/lang/String;
    .restart local v11       #selection:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "sort_key"

    aput-object v5, v2, v3

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 342
    .restart local v10       #name:Ljava/lang/String;
    .restart local v12       #sortKey:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 345
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #sortKey:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 350
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 346
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #contactId:Ljava/lang/String;
    .end local v11           #selection:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 347
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactManage"

    const-string v1, "getContactInfo Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    const/4 v0, 0x0

    .line 350
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getEmail(I)Ljava/lang/String;
    .locals 2
    .parameter "contactId"

    .prologue
    .line 303
    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v1, "data1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/ContactManage;->getContactValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmails(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v1, "data1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/ContactManage;->getContactValues(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPhone(I)Ljava/lang/String;
    .locals 2
    .parameter "contactId"

    .prologue
    .line 307
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const-string v1, "data1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/ContactManage;->getContactValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhones(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    const-string v0, "vnd.android.cursor.item/phone_v2"

    const-string v1, "data1"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/ContactManage;->getContactValues(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasContactPhoto(I)Z
    .locals 3
    .parameter "contactId"

    .prologue
    .line 389
    const-string v1, "vnd.android.cursor.item/photo"

    const-string v2, "data14"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/data/ContactManage;->getContactValue(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, photoFileId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNameExist(Landroid/net/Uri;)Z
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ContactManage;->getContactInfo(Landroid/net/Uri;)Lcom/android/gallery3d/data/ContactManage$ContactInfo;

    move-result-object v0

    .line 358
    .local v0, contactInfo:Lcom/android/gallery3d/data/ContactManage$ContactInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhoneAccount(I)Z
    .locals 12
    .parameter "contactId"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 363
    const/4 v7, 0x0

    .line 365
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v9, "contact_id=?"

    .line 366
    .local v9, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 367
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "account_name"

    aput-object v5, v2, v3

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 370
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, account_name:Ljava/lang/String;
    const-string v0, "ContactManage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneAccount account_name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v6, :cond_0

    const-string v0, "Phone"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #account_name:Ljava/lang/String;
    .end local v9           #selection:Ljava/lang/String;
    :goto_0
    return v0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #account_name:Ljava/lang/String;
    .restart local v9       #selection:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v10

    goto :goto_0

    .end local v6           #account_name:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v10

    goto :goto_0

    .line 380
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #selection:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 381
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactManage"

    const-string v1, "isPhoneAccount Exception"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v10

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public registerContactChange()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/ContactManage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "ContactManage"

    invoke-static {v2, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method

.method public syncContactData()V
    .locals 20

    .prologue
    .line 189
    const/4 v15, 0x0

    .line 191
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v17, id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v18, name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/ContactManage;->getAllContact(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 194
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v3, :cond_0

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/ContactManage;->getAllPrivateContact(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/gallery3d/data/PersonManage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/gallery3d/data/PersonManage;->PROJECTION:[Ljava/lang/String;

    const-string v6, "contact_id IS NOT NULL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 201
    .local v5, contactId:I
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    .local v12, name:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 204
    .local v4, personId:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;

    iget-object v6, v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mName:Ljava/lang/String;

    .line 206
    .local v6, nameInContact:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;

    iget-object v7, v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mSortKey:Ljava/lang/String;

    .line 207
    .local v7, sortKey:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_4

    const/16 v19, 0x1

    .line 208
    .local v19, personIsPrivate:Z
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;

    iget-boolean v8, v3, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mIsPrivate:Z

    .line 210
    .local v8, isPrivate:Z
    if-eqz v12, :cond_2

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v0, v19

    if-eq v0, v8, :cond_1

    .line 212
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/data/PersonManage;->update(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v4           #personId:I
    .end local v5           #contactId:I
    .end local v6           #nameInContact:Ljava/lang/String;
    .end local v7           #sortKey:Ljava/lang/String;
    .end local v8           #isPrivate:Z
    .end local v12           #name:Ljava/lang/String;
    .end local v17           #id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .end local v18           #name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    .end local v19           #personIsPrivate:Z
    :catch_0
    move-exception v16

    .line 231
    .local v16, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "ContactManage"

    const-string v9, "syncContactData Exception"

    invoke-static {v3, v9}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v16           #e:Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    return-void

    .line 207
    .restart local v4       #personId:I
    .restart local v5       #contactId:I
    .restart local v6       #nameInContact:Ljava/lang/String;
    .restart local v7       #sortKey:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v17       #id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .restart local v18       #name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .line 216
    .end local v6           #nameInContact:Ljava/lang/String;
    .end local v7           #sortKey:Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 218
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;

    iget v11, v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mContactId:I

    .line 219
    .local v11, contactIdInContact:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;

    iget-object v7, v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mSortKey:Ljava/lang/String;

    .line 220
    .restart local v7       #sortKey:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;

    iget-boolean v8, v3, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mIsPrivate:Z

    .line 221
    .restart local v8       #isPrivate:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v9

    move v10, v4

    move-object v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/gallery3d/data/PersonManage;->update(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 233
    .end local v4           #personId:I
    .end local v5           #contactId:I
    .end local v7           #sortKey:Ljava/lang/String;
    .end local v8           #isPrivate:Z
    .end local v11           #contactIdInContact:I
    .end local v12           #name:Ljava/lang/String;
    .end local v17           #id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .end local v18           #name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 224
    .restart local v4       #personId:I
    .restart local v5       #contactId:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v17       #id_name:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/ContactManage$NameSortKey;>;"
    .restart local v18       #name_id:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;>;"
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ImageFaceInfoManage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->resetPersonS(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/PersonManage;->reset(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ContactManage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/FaceManage;->resetPersonId(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 233
    .end local v4           #personId:I
    .end local v5           #contactId:I
    .end local v12           #name:Ljava/lang/String;
    :cond_8
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
