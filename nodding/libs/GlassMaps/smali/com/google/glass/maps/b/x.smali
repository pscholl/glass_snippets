.class public final Lcom/google/glass/maps/b/x;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/graphics/Typeface;

.field public b:F

.field public c:I

.field public d:I


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/b/x;->a:Landroid/graphics/Typeface;

    iput p2, p0, Lcom/google/glass/maps/b/x;->b:F

    iput p3, p0, Lcom/google/glass/maps/b/x;->c:I

    iput p4, p0, Lcom/google/glass/maps/b/x;->d:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/b/w;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/b/x;-><init>(Landroid/graphics/Typeface;FII)V

    return-void
.end method
