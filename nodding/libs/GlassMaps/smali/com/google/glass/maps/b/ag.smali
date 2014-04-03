.class final Lcom/google/glass/maps/b/ag;
.super Lcom/google/android/maps/driveabout/util/g;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/b/ae;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/b/ae;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b/ag;->a:Lcom/google/glass/maps/b/ae;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/glass/maps/b/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/ag;->a:Lcom/google/glass/maps/b/ae;

    invoke-static {v0, p2}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/glass/maps/b/ae;Lcom/google/glass/maps/b/y;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/maps/driveabout/e/av;

    check-cast p2, Lcom/google/glass/maps/b/y;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/ag;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/glass/maps/b/y;)V

    return-void
.end method
