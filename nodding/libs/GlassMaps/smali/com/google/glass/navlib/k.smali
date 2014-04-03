.class final Lcom/google/glass/navlib/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/navlib/a;


# instance fields
.field final synthetic a:Lcom/google/glass/navlib/h;


# direct methods
.method constructor <init>(Lcom/google/glass/navlib/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/navlib/k;->a:Lcom/google/glass/navlib/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/navlib/k;->a:Lcom/google/glass/navlib/h;

    invoke-static {v0}, Lcom/google/glass/navlib/h;->b(Lcom/google/glass/navlib/h;)Lcom/google/android/maps/driveabout/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->b(Lcom/google/android/maps/driveabout/nav/i;II)V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/navlib/k;->a:Lcom/google/glass/navlib/h;

    invoke-static {v0}, Lcom/google/glass/navlib/h;->b(Lcom/google/glass/navlib/h;)Lcom/google/android/maps/driveabout/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/b/a;->a(Lcom/google/android/maps/driveabout/nav/i;II)V

    return-void
.end method
