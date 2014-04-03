.class public Lcom/google/glass/maps/directions/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/DataType;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Lcom/google/glass/logging/i;


# instance fields
.field public final a:Lcom/google/android/maps/driveabout/nav/ao;

.field public final b:[Lcom/google/glass/maps/directions/b;

.field public final c:Lcom/google/android/maps/driveabout/e/af;

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/lang/String;

.field private h:[Lcom/google/glass/maps/SchematicSegment;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/maps/directions/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/i;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/maps/directions/i;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/i;->e:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/b;Ljava/util/ArrayList;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " > "

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->g:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/maps/directions/i;->i:I

    iput-object p1, p0, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    iput-object p2, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/m;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/e/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/w;->a([Lcom/google/android/maps/driveabout/e/m;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    invoke-static {v0}, Lcom/google/glass/maps/directions/i;->a([Lcom/google/glass/maps/directions/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->g:Ljava/lang/String;

    iput p4, p0, Lcom/google/glass/maps/directions/i;->i:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    goto :goto_0
.end method

.method private static a([Lcom/google/glass/maps/directions/b;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, " > "

    :goto_0
    return-object v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    iget v3, v3, Lcom/google/glass/maps/directions/b;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    const-string v0, " > "

    goto :goto_0

    :cond_4
    const-string v0, ">"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/google/glass/util/ParcelableImageSpannable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bl;->stepicon_walk:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->f:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/maps/directions/i;->a(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/glass/util/ParcelableImageSpannable;->a()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/maps/directions/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/util/ParcelableImageSpannable;->a(Ljava/lang/CharSequence;)Lcom/google/glass/util/ParcelableImageSpannable;

    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/util/ParcelableImageSpannable;->a()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x21

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/util/ParcelableImageSpannable;->a(Landroid/graphics/Bitmap;IIII)V

    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/google/glass/util/ParcelableImageSpannable;->a(Ljava/lang/CharSequence;)Lcom/google/glass/util/ParcelableImageSpannable;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/directions/i;->b(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/ParcelableImageSpannable;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/directions/i;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/directions/i;->i:I

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;
    .locals 9

    const/4 v1, 0x0

    new-instance v3, Lcom/google/glass/util/ParcelableImageSpannable;

    invoke-direct {v3}, Lcom/google/glass/util/ParcelableImageSpannable;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    aget-object v4, v2, v0

    iget v2, v4, Lcom/google/glass/maps/directions/b;->a:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/glass/maps/directions/i;->a(Landroid/content/Context;Lcom/google/glass/util/ParcelableImageSpannable;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, v4, Lcom/google/glass/maps/directions/b;->r:Z

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/maps/directions/b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/glass/maps/directions/b;->i()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0, v3, v2}, Lcom/google/glass/maps/directions/i;->a(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    iget-wide v5, v4, Lcom/google/glass/maps/directions/b;->s:J

    invoke-static {v5, v6}, Lcom/google/glass/maps/directions/a;->b(J)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/google/glass/maps/directions/i;->e:Lcom/google/glass/logging/i;

    const-string v5, "Icon %s is can\'t be found"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, v4, Lcom/google/glass/maps/directions/b;->s:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method public final c()[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->h:[Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method

.method public final d()V
    .locals 11

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v7

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    aget-object v10, v0, v6

    invoke-interface {v8}, Ljava/util/List;->clear()V

    if-nez v6, :cond_1

    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    iget v2, v10, Lcom/google/glass/maps/directions/b;->o:I

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/b;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    new-array v0, v7, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment;

    invoke-virtual {v10, v0}, Lcom/google/glass/maps/directions/b;->a([Lcom/google/glass/maps/SchematicSegment;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    add-int/lit8 v1, v6, -0x1

    aget-object v0, v0, v1

    iget v2, v0, Lcom/google/glass/maps/directions/b;->o:I

    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    iget-object v2, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    add-int/lit8 v3, v6, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/google/glass/maps/directions/b;->o:I

    iget-object v3, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    add-int/lit8 v4, v6, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/b;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    iget v2, v10, Lcom/google/glass/maps/directions/b;->o:I

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/b;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-ne v6, v1, :cond_0

    :cond_3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-array v0, v7, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment;

    iput-object v0, p0, Lcom/google/glass/maps/directions/i;->h:[Lcom/google/glass/maps/SchematicSegment;

    return-void
.end method
