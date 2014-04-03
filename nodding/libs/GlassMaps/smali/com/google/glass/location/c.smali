.class final Lcom/google/glass/location/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/glass/location/i;

.field final b:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Lcom/google/glass/location/i;Landroid/location/LocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/location/c;->a:Lcom/google/glass/location/i;

    iput-object p2, p0, Lcom/google/glass/location/c;->b:Landroid/location/LocationListener;

    return-void
.end method
