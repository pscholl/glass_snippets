.class public final Lcom/google/glass/maps/ap;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/CharSequence;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/glass/timeline/d;

.field private h:Landroid/os/AsyncTask;

.field private i:Lcom/google/android/maps/driveabout/nav/ao;

.field private j:Lcom/google/android/maps/driveabout/e/ab;

.field private k:I

.field private l:Lcom/google/glass/timeline/TimelineItemId;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/ap;->a:Lcom/google/glass/logging/i;

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "&"

    aput-object v1, v0, v11

    const-string v1, "\""

    aput-object v1, v0, v8

    const-string v1, "<"

    aput-object v1, v0, v9

    const-string v1, ">"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/glass/maps/ap;->b:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/CharSequence;

    const-string v1, "&amp;"

    aput-object v1, v0, v11

    const-string v1, "&quot;"

    aput-object v1, v0, v8

    const-string v1, "&lt;"

    aput-object v1, v0, v9

    const-string v1, "&gt;"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/glass/maps/ap;->c:[Ljava/lang/CharSequence;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0039_geo_drive.png"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0037_geo_walk.png"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0040_geo_bike.png"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0038_geo_transit.png"

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/ap;->d:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/ap;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/glass/timeline/d;

    invoke-direct {v0}, Lcom/google/glass/timeline/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/ap;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/d;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/maps/ap;->g:Lcom/google/glass/timeline/d;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/google/glass/maps/ap;->b:[Ljava/lang/String;

    sget-object v1, Lcom/google/glass/maps/ap;->c:[Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/ap;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/maps/ap;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/e/ab;)Ljava/lang/String;
    .locals 5

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.googleapis.com/maps/api/streetview?sensor=true&pitch=10&fov=60&size=240x360&location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.googleapis.com/maps/api/streetview?sensor=true&pitch=10&fov=60&size=240x360&location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&heading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 8

    const/4 v7, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/ap;->a:Lcom/google/glass/logging/i;

    const-string v1, "Cannot create an artifact without a destination"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<article>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v2, p0, Lcom/google/glass/maps/ap;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v2}, Lcom/google/glass/maps/ap;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/e/ab;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/glass/maps/ap;->a:Lcom/google/glass/logging/i;

    invoke-interface {v2}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streetViewUrl: %s for dest: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/ao;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/google/glass/logging/o;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v2, "<figure><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" width=\"240\" height=\"360\"/></figure>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "<section><p class=\"text-auto-size\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<span style=\"color: #808080\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/google/glass/maps/ap;->m:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/google/glass/maps/bs;->operation_arrived_at:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</span>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0, v2}, Lcom/google/glass/maps/ap;->a(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</p></section>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/glass/maps/ap;->d:Ljava/util/Map;

    iget v2, p0, Lcom/google/glass/maps/ap;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<footer><img src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" width=\"30\" height=\"30\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</footer>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "</article>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/googlex/glass/common/proto/ah;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/ah;-><init>()V

    const/16 v0, 0x9

    iput v0, v2, Lcom/google/googlex/glass/common/proto/ah;->c:I

    sget-object v0, Lcom/google/glass/maps/ap;->e:Ljava/util/Map;

    iget v3, p0, Lcom/google/glass/maps/ap;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/google/googlex/glass/common/proto/ah;->g:I

    iget-object v0, p0, Lcom/google/glass/maps/ap;->g:Lcom/google/glass/timeline/d;

    iget-object v0, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    new-instance v3, Lcom/google/glass/util/by;

    iget-object v4, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/by;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0, v3}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/glass/util/by;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1}, Lcom/google/glass/maps/ap;->b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/googlex/glass/common/proto/ag;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location:Lcom/google/googlex/glass/common/proto/ag;

    invoke-static {v0, v2}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/ah;)V

    invoke-static {v0, v7}, Lcom/google/glass/timeline/d;->a(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    iget-object v1, p0, Lcom/google/glass/maps/ap;->g:Lcom/google/glass/timeline/d;

    iget-object v2, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/am;)Landroid/net/Uri;

    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iput-object v1, p0, Lcom/google/glass/maps/ap;->l:Lcom/google/glass/timeline/TimelineItemId;

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/google/glass/maps/bs;->operation_directions_to:I

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/google/glass/maps/ap;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/ap;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/maps/ap;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ap;->f:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/googlex/glass/common/proto/ag;
    .locals 5

    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    new-instance v0, Lcom/google/googlex/glass/common/proto/ag;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ag;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/ag;->j:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/ag;->k:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/ag;->e:Ljava/lang/Double;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/ag;->f:Ljava/lang/Double;

    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/maps/ap;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ap;->l:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/e/ab;IZZ)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/maps/ap;->i:Lcom/google/android/maps/driveabout/nav/ao;

    iput-object p2, p0, Lcom/google/glass/maps/ap;->j:Lcom/google/android/maps/driveabout/e/ab;

    iput p3, p0, Lcom/google/glass/maps/ap;->k:I

    iput-boolean p4, p0, Lcom/google/glass/maps/ap;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/ap;->l:Lcom/google/glass/timeline/TimelineItemId;

    new-instance v0, Lcom/google/glass/maps/aq;

    invoke-direct {v0, p0, p5}, Lcom/google/glass/maps/aq;-><init>(Lcom/google/glass/maps/ap;Z)V

    iput-object v0, p0, Lcom/google/glass/maps/ap;->h:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/google/glass/maps/ap;->h:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
