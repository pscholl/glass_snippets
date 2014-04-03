.class public abstract Lcom/google/android/maps/driveabout/c/f;
.super Lcom/google/android/maps/driveabout/h/j;


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/h/j;-><init>(J)V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/h/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/h/j;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/f;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/f;->a:Ljava/lang/String;

    return-object v0
.end method
