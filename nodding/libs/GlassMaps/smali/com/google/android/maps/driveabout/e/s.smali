.class public final Lcom/google/android/maps/driveabout/e/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/android/maps/driveabout/e/b;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/google/android/maps/driveabout/e/b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/t;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/s;
    .locals 9

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/t;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/e/b;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/b;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/maps/driveabout/e/s;

    invoke-direct {v1, v6, v0}, Lcom/google/android/maps/driveabout/e/s;-><init>(Ljava/util/List;Lcom/google/android/maps/driveabout/e/b;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/e/b;->b:Lcom/google/android/maps/driveabout/e/b;

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/e/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/t;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/e/s;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/e/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/s;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/s;->b:Lcom/google/android/maps/driveabout/e/b;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/b;->hashCode()I

    move-result v0

    goto :goto_0
.end method
