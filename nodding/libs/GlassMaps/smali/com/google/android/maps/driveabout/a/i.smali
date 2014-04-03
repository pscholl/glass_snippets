.class final Lcom/google/android/maps/driveabout/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/b;

.field final synthetic b:Lcom/google/android/maps/driveabout/a/h;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/a/h;Lcom/google/android/maps/driveabout/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/i;->b:Lcom/google/android/maps/driveabout/a/h;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/i;->a:Lcom/google/android/maps/driveabout/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/i;->b:Lcom/google/android/maps/driveabout/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/a/h;->a(Lcom/google/android/maps/driveabout/a/h;Lcom/google/android/maps/driveabout/a/a;)Lcom/google/android/maps/driveabout/a/a;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/i;->a:Lcom/google/android/maps/driveabout/a/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/i;->b:Lcom/google/android/maps/driveabout/a/h;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    return-void
.end method
