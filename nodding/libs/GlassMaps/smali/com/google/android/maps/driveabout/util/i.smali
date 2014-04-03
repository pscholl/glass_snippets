.class public final Lcom/google/android/maps/driveabout/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field private volatile a:I

.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/util/i;->a:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-void
.end method

.method private a()V
    .locals 7

    new-instance v0, Lcom/google/android/maps/driveabout/h/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/util/i;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v2}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->m()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/util/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->n()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/util/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v6}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/h/i;-><init>(IIIJI)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/h/h;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/h/h;-><init>(IZ)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/i;->a()V

    return-void
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/h/g;

    const-string v1, "onComplete"

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/driveabout/h/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/util/i;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/util/i;->a:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/i;->a()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 0

    return-void
.end method
