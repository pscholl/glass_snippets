.class public abstract Lcom/google/glass/maps/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/t;


# instance fields
.field private final a:Lcom/google/glass/maps/a/c;

.field private final b:Lcom/google/glass/maps/a/f;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/maps/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/a/c;-><init>(Lcom/google/glass/maps/a/a;Lcom/google/glass/maps/a/b;)V

    iput-object v0, p0, Lcom/google/glass/maps/a/a;->a:Lcom/google/glass/maps/a/c;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/glass/maps/a/a;->c:F

    new-instance v0, Lcom/google/glass/maps/a/f;

    iget-object v1, p0, Lcom/google/glass/maps/a/a;->a:Lcom/google/glass/maps/a/c;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/glass/maps/a/f;-><init>(Landroid/content/Context;Lcom/google/glass/location/f;Lcom/google/glass/maps/a/g;)V

    iput-object v0, p0, Lcom/google/glass/maps/a/a;->b:Lcom/google/glass/maps/a/f;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/a/a;F)F
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/a/a;->c:F

    return p1
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/a;->b:Lcom/google/glass/maps/a/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/a/f;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/a;->a:Lcom/google/glass/maps/a/c;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/a/c;->a(Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/glass/maps/a/a;->b:Lcom/google/glass/maps/a/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/a/f;->a()V

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/a/a;->c:F

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/a;->b:Lcom/google/glass/maps/a/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/a/f;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/a;->b:Lcom/google/glass/maps/a/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/a/f;->d()V

    return-void
.end method
