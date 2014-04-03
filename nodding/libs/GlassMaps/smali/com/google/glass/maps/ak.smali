.class final Lcom/google/glass/maps/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/google/glass/maps/directions/i;

.field final synthetic b:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ak;->b:Lcom/google/glass/maps/NavigationActivity;

    iput-object p2, p0, Lcom/google/glass/maps/ak;->a:[Lcom/google/glass/maps/directions/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/ak;->b:Lcom/google/glass/maps/NavigationActivity;

    iget-object v1, p0, Lcom/google/glass/maps/ak;->a:[Lcom/google/glass/maps/directions/i;

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/maps/NavigationActivity;[Lcom/google/glass/maps/directions/i;)V

    return-void
.end method
