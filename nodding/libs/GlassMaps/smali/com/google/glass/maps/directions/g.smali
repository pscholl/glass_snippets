.class public final Lcom/google/glass/maps/directions/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/glass/maps/directions/g;->e:I

    iput-object p1, p0, Lcom/google/glass/maps/directions/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/maps/directions/g;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iput p3, p0, Lcom/google/glass/maps/directions/g;->c:I

    iput p4, p0, Lcom/google/glass/maps/directions/g;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/maps/directions/e;
    .locals 8

    new-instance v0, Lcom/google/glass/maps/directions/e;

    iget-object v1, p0, Lcom/google/glass/maps/directions/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/directions/g;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iget v3, p0, Lcom/google/glass/maps/directions/g;->c:I

    iget v4, p0, Lcom/google/glass/maps/directions/g;->e:I

    iget v5, p0, Lcom/google/glass/maps/directions/g;->d:I

    iget-object v6, p0, Lcom/google/glass/maps/directions/g;->f:[Lcom/google/android/maps/driveabout/nav/b;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/maps/directions/e;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/glass/maps/directions/f;)V

    iget-object v1, p0, Lcom/google/glass/maps/directions/g;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1}, Lcom/google/glass/maps/directions/e;->a([Lcom/google/android/maps/driveabout/nav/ao;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/maps/directions/e;->a(Lcom/google/glass/maps/directions/e;I)I

    :cond_0
    return-object v0
.end method

.method public final a(I)Lcom/google/glass/maps/directions/g;
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/directions/g;->e:I

    return-object p0
.end method
