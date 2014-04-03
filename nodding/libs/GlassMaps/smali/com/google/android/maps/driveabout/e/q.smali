.class public final Lcom/google/android/maps/driveabout/e/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/e/r;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/q;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/e/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/q;->c:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/maps/driveabout/e/q;->d:I

    new-instance v0, Lcom/google/android/maps/driveabout/e/r;

    invoke-direct {v0, p1, p6}, Lcom/google/android/maps/driveabout/e/r;-><init>(Lcom/google/android/maps/driveabout/e/p;I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->e:Lcom/google/android/maps/driveabout/e/r;

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/e/q;
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "INAKA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v5

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v9, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/e/p;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/p;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "INAKA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "warning: malformed building id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    if-eqz v4, :cond_7

    move-object v0, v4

    :goto_3
    move-object v3, v0

    :cond_3
    if-nez v4, :cond_4

    move-object v4, v3

    :cond_4
    invoke-virtual {p0, v10}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v10}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v5

    :cond_5
    const/high16 v6, -0x8000

    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    :cond_6
    new-instance v0, Lcom/google/android/maps/driveabout/e/q;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/e/q;-><init>(Lcom/google/android/maps/driveabout/e/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_7
    const-string v0, ""

    goto :goto_3
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->e:Lcom/google/android/maps/driveabout/e/r;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->e:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/r;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/q;->a:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/q;->e:Lcom/google/android/maps/driveabout/e/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
