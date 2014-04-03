.class public final Lcom/google/glass/entity/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/List;

.field private static final d:Lcom/google/common/base/al;

.field private static final e:Landroid/util/LruCache;

.field private static final f:Landroid/util/LruCache;

.field private static g:Lcom/google/glass/entity/p;


# instance fields
.field private h:Landroid/database/ContentObserver;

.field private i:Lcom/google/googlex/glass/common/proto/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x80

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/p;->b:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/p;->c:Ljava/util/List;

    sget-object v0, Lcom/google/glass/entity/p;->c:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/glass/entity/p;->c:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/glass/entity/p;->c:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "_"

    invoke-static {v0}, Lcom/google/common/base/al;->a(Ljava/lang/String;)Lcom/google/common/base/al;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/p;->d:Lcom/google/common/base/al;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/p;->e:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/p;->f:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Lcom/google/glass/entity/p;
    .locals 1

    sget-object v0, Lcom/google/glass/entity/p;->g:Lcom/google/glass/entity/p;

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "email=?"

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v3}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/p;->a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    goto :goto_0
.end method

.method private static varargs a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "protobuf_blob"

    aput-object v0, v2, v3

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/google/glass/entity/p;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v5

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 1

    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/p;->a([B)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/google/googlex/glass/common/proto/ac;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ac;->a([B)Lcom/google/googlex/glass/common/proto/ac;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v2, "Error deserializing protobuf"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/glass/entity/p;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/glass/entity/p;->e:Landroid/util/LruCache;

    move-object v1, v0

    :goto_1
    invoke-virtual {v1, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/entity/p;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/glass/entity/p;->f:Landroid/util/LruCache;

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_5

    sget-object v5, Lcom/google/glass/entity/p;->c:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Lcom/google/glass/entity/p;)V
    .locals 0

    sput-object p0, Lcom/google/glass/entity/p;->g:Lcom/google/glass/entity/p;

    return-void
.end method

.method static a(Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/ac;Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/googlex/glass/common/proto/ac;Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    invoke-static {p0}, Lcom/google/glass/entity/p;->j(Lcom/google/googlex/glass/common/proto/ac;)Lcom/google/googlex/glass/common/proto/aj;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    :goto_3
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/google/glass/entity/p;->i(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    if-nez v0, :cond_6

    :goto_4
    move v2, v1

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method

.method public static b(Lcom/google/googlex/glass/common/proto/ac;)Landroid/content/ContentValues;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_id"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_communication_target"

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "phone_number"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/glass/util/PhoneNumberUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "email"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "display_name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "image_url"

    invoke-static {p0}, Lcom/google/glass/entity/p;->f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "protobuf_blob"

    invoke-static {p0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    const/high16 v4, -0x8000

    if-eq v0, v4, :cond_1

    const-string v0, "type"

    iget v4, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    invoke-static {v4}, Lcom/google/glass/entity/p;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v0, "api:442840586513"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    const-string v4, "obfuscated_gaia_id"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    invoke-static {v0, v2}, Lcom/google/common/primitives/Ints;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    const-string v4, "is_in_my_contacts"

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-eqz v0, :cond_3

    const-string v0, "share_priority"

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/ae;->b:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/google/glass/util/bk;->a(Ljava/lang/Integer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v0, "is_share_target"

    invoke-static {p0}, Lcom/google/glass/entity/p;->a(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/a;->b([Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    if-ge v2, v0, :cond_b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/glass/util/PhoneNumberUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    const-string v0, "secondary_phone_numbers"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v3
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone_number=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/glass/entity/p;->a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/google/glass/b/a;

    invoke-direct {v0, p0}, Lcom/google/glass/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/b/a;->b()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/entity/p;->d:Lcom/google/common/base/al;

    invoke-virtual {v0, p0}, Lcom/google/common/base/al;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondary_phone_numbers LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/glass/entity/p;->a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 2

    const-string v0, "api:442840586513"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/glass/entity/p;->c(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 2

    const-string v0, "api:823483604716"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static f(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static g(Lcom/google/googlex/glass/common/proto/ac;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v2, v1, v4

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v5

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method public static h(Lcom/google/googlex/glass/common/proto/ac;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v1, "Showing entity %s as displayName"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v1, "Showing entity without displayName as email %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v1, "Entity has nothing to display."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Lcom/google/googlex/glass/common/proto/ac;)Z
    .locals 2

    const-string v0, "api:736585499008"

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static j(Lcom/google/googlex/glass/common/proto/ac;)Lcom/google/googlex/glass/common/proto/aj;
    .locals 5

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    invoke-static {v0}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/aj;->d:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/google/glass/util/bk;->a(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/aj;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v1, "loading self entity"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/entity/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/glass/entity/p;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->a:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "protobuf_blob"

    aput-object v3, v2, v7

    const-string v3, "email=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v2, v5

    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/google/glass/entity/p;->a(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/p;->c(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/google/glass/entity/p;->a(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/f/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_2
    iput-object v1, p0, Lcom/google/glass/entity/p;->i:Lcom/google/googlex/glass/common/proto/ac;

    :cond_0
    iget-object v1, p0, Lcom/google/glass/entity/p;->i:Lcom/google/googlex/glass/common/proto/ac;

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v2, "Could not load self entity"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v2, "Registering observer for entity updates"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/glass/entity/q;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/google/glass/entity/q;-><init>(Lcom/google/glass/entity/p;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    :cond_1
    sget-object v1, Lcom/google/glass/entity/EntityProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    invoke-static {v1}, Lcom/google/glass/entity/p;->a(Lcom/google/googlex/glass/common/proto/ac;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v1

    :cond_4
    invoke-static {v1}, Lcom/google/glass/entity/p;->e(Lcom/google/googlex/glass/common/proto/ac;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    sget-object v1, Lcom/google/glass/entity/p;->a:Lcom/google/glass/logging/i;

    const-string v2, "Self entity loaded"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v5, p0, Lcom/google/glass/entity/p;->h:Landroid/database/ContentObserver;

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object v1, v5

    goto :goto_2
.end method
