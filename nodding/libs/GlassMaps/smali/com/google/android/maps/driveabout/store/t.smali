.class public final Lcom/google/android/maps/driveabout/store/t;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/googlenav/common/io/b/a;

.field public final b:Lcom/google/android/maps/driveabout/store/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/store/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/b/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/t;->a:Lcom/google/googlenav/common/io/b/a;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/t;->b:Lcom/google/android/maps/driveabout/store/a;

    return-void
.end method
