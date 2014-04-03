.class final Lcom/google/glass/maps/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/sound/g;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/nav/i;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;Lcom/google/android/maps/driveabout/nav/i;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/aw;->d:Lcom/google/glass/maps/NavigationManager;

    iput-object p2, p0, Lcom/google/glass/maps/aw;->a:Lcom/google/android/maps/driveabout/nav/i;

    iput p3, p0, Lcom/google/glass/maps/aw;->b:I

    iput p4, p0, Lcom/google/glass/maps/aw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/aw;->d:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/NavigationManager;Z)Z

    iget-object v0, p0, Lcom/google/glass/maps/aw;->d:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->g(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/navlib/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->c()Lcom/google/glass/navlib/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/aw;->a:Lcom/google/android/maps/driveabout/nav/i;

    iget v2, p0, Lcom/google/glass/maps/aw;->b:I

    iget v3, p0, Lcom/google/glass/maps/aw;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/navlib/a;->b(Lcom/google/android/maps/driveabout/nav/i;II)V

    return-void
.end method

.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/aw;->d:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationManager;->a(Lcom/google/glass/maps/NavigationManager;Z)Z

    return-void
.end method
