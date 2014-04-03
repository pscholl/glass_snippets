.class final Lcom/google/glass/maps/b/aj;
.super Landroid/util/LruCache;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/b/ai;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/b/ai;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b/aj;->a:Lcom/google/glass/maps/b/ai;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private static a(ZLcom/google/glass/maps/b/ak;Lcom/google/glass/maps/opengl/i;Lcom/google/glass/maps/opengl/i;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->g()V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/glass/maps/b/ak;

    check-cast p3, Lcom/google/glass/maps/opengl/i;

    check-cast p4, Lcom/google/glass/maps/opengl/i;

    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/maps/b/aj;->a(ZLcom/google/glass/maps/b/ak;Lcom/google/glass/maps/opengl/i;Lcom/google/glass/maps/opengl/i;)V

    return-void
.end method
