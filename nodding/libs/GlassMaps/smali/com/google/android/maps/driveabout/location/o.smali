.class final Lcom/google/android/maps/driveabout/location/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/maps/driveabout/location/m;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/location/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/o;->b:Lcom/google/android/maps/driveabout/location/m;

    iput p2, p0, Lcom/google/android/maps/driveabout/location/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/o;->b:Lcom/google/android/maps/driveabout/location/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/m;->b(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/c;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/location/o;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/c;->a(I)V

    return-void
.end method
